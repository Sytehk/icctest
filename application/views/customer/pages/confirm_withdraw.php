<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading ui-sortable-handle">
                <div class="panel-title" style="max-width: calc(100% - 180px);">
                    <h4><?php echo display('confirm_withdraw');?></h4>
                </div>
            </div>
            <?php 
                $data = json_decode($v->data);
            ?>
            <div class="panel-body">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-7 col-lg-7">
                        <div class="border_preview">
                        <?php   $att = array('name'=>'verify'); echo form_open('#',$att); ?>
                            <div class="table-responsive">
                                 
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <th><?php echo display('amount');?></th>
                                            <td><?php echo $coininfo->pair_with." ".$data->amount;?></td>
                                        </tr>
                                        <tr>
                                            <th><?php echo display('payment_method');?></th>
                                            <td><?php echo $data->method;?></td>
                                        </tr>
                                       
                                         <tr>
                                            <th><?php echo display('enter_verify_code');?></th>
                                            <td><input class="form-control" type="text" name="code" id="code"></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="text-right">
                                <button type="button" onclick="withdraw('<?php echo $v->id;?>');" class="btn btn-success w-md m-b-5">Confirm</button>
                                <button type="button" class="btn btn-danger w-md m-b-5">Cancel</button>
                            </div>
                            <?php echo form_close();?>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    function withdraw(id){

        var code = document.forms['verify'].elements['code'].value;
        var csrf_test_name = document.forms['verify'].elements['csrf_test_name'].value;

        swal({
            title: 'Please Wait......',
            type: 'warning',
            showConfirmButton: false,
            onOpen: function () {
                swal.showLoading()
              }
        });


        $.ajax({
            url: '<?php echo base_url("customer/withdraw/withdraw_verify"); ?>',
            type: 'POST', //the way you want to send data to your URL
            data: {'id': id,'code':code,'csrf_test_name':csrf_test_name },
            success: function(data) {

                if(data!=''){
                    
                    swal({
                        title: "Good job!",
                        text: "Your Custom Email Send Successfully",
                        type: "success",
                        showConfirmButton: false,
                        timer: 1500,

                    });

                   window.location.href = "<?php echo base_url('customer/withdraw/withdraw_details/'); ?>"+data;
                    
                } else {

                    swal({
                        title: "Wops!",
                        text: "Error Message",
                        type: "error",
                        showConfirmButton: false,
                        timer: 1500
                    });

                }
                
            }
        });
    }
</script>