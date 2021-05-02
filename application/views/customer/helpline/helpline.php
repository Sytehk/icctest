<div class="row">
    <div class="col-sm-12">
        <div class="mailbox">
            <div class="mailbox-header">
                <div class="row">
                    <div class="col-xs-4">
                        <?php $image = $this->session->userdata('image'); ?>
                        
                        <div class="inbox-avatar"><img src="<?php echo base_url(!empty($image)?$image:"assets/images/icons/user.png") ?>" class="img-circle border-green" alt="">
                            <div class="inbox-avatar-text hidden-xs hidden-sm">
                                <div class="avatar-name">Users</div>
                                <div><small>Help Line</small></div>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
            <div class="mailbox-body">
                <div class="row m-0">
                    
                    <div class="col-xs-12 col-sm-12 col-md-12 p-0 inbox-mail">
                        <div class="mailbox-content">
                            <?php foreach(@$message as $val){ ?>

                                <?php
                                    $read_unread = "";
                                    if($val->admin_status==1){
                                        $read_unread = "new-message";
                                    }
                                ?>

                            <a href="<?php echo base_url("customer/helpline/subject/$val->id")?>" class="inbox_item unread">
                                <div class="inbox-avatar"><img src="<?php echo base_url(!empty($settings->logo)?$settings->logo:"assets/images/icons/sms_user.png"); ?>" class="border-green hidden-xs hidden-sm" alt="">
                                    <div class="inbox-avatar-text">
                                        <div class="avatar-name <?php echo $read_unread; ?>"><?php echo @$val->subject;?></div>
                                        <div><small><?php echo @$val->first_name." ".@$val->last_name;?></small></div>
                                    </div>
                                    <div class="inbox-date hidden-sm hidden-xs hidden-md">
                                        <div class="date"><?php echo @$val->date_time;?></div>
                                    </div>
                                </div>
                            </a>
                            <?php } ?>

                            <div class="inbox-mail-details p-20">
                                <?php echo form_open(base_url('customer/helpline/send_message/'),'id="textform" name="textform"');?>
                                    <div class="form-group row">
                                        <label for="subject" class="col-sm-2 col-form-label">Subject <i class="text-danger">*</i></label>
                                        <div class="col-sm-7">
                                            <input name="subject" class="form-control" placeholder="Subject" type="text" id="subject">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="message" class="col-sm-2 col-form-label">Message <i class="text-danger">*</i></label>
                                        <div class="col-sm-7">
                                            <textarea rows="7" class="form-control" name="message" id="message" placeholder="Message"></textarea>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12 col-sm-offset-5">
                                            <button type="submit" class="btn btn-primary"><?php echo display('send')?></button>
                                        </div>
                                    </div>
                                <?php form_close();?>
                            </div>
                            <?php echo $links; ?>
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>