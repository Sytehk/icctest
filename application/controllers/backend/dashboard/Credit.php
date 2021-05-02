<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Credit extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		
        if (!$this->session->userdata('isAdmin')) 
        redirect('logout');
        
        if (!$this->session->userdata('isLogIn')) 
        redirect('admin'); 
    
		$this->load->model(array(
            'backend/dashboard/message_model' 
		));
		
		$globdata['coininfo'] = $this->db->select('*')->from('coin_setup')->get()->row();
		$this->load->vars($globdata);

	}
 
    public function credit_list()
    {
        $data['title']  =  display('credit_list');

        #
        #pagination starts
        #
        $config["base_url"]       = base_url('backend/dashboard/credit/credit_list/'); 
        $config["total_rows"]     = $this->db->get_where('dbt_deposit', array('method' =>'ADMIN', 'status'=>1))->num_rows(); 
        $config["per_page"]       = 25;
        $config["uri_segment"]    = 5; 
        $config["num_links"]      = 5;  
        /* This Application Must Be Used With BootStrap 3 * */
        $config['full_tag_open']  = "<ul class='pagination col-xs pull-right m-0'>";
        $config['full_tag_close'] = "</ul>";
        $config['num_tag_open']   = '<li>';
        $config['num_tag_close']  = '</li>';
        $config['cur_tag_open']   = "<li class='disabled'><li class='active'><a href='#'>";
        $config['cur_tag_close']  = "<span class='sr-only'></span></a></li>";
        $config['next_tag_open']  = "<li>";
        $config['next_tag_close'] = "</li>";
        $config['prev_tag_open']  = "<li>";
        $config['prev_tagl_close'] = "</li>";
        $config['first_tag_open'] = "<li>";
        $config['first_tagl_close'] = "</li>";
        $config['last_tag_open']  = "<li>";
        $config['last_tagl_close'] = "</li>"; 
        /* ends of bootstrap */
        $this->pagination->initialize($config);
        $page = ($this->uri->segment(5)) ? $this->uri->segment(5) : 0;

        $data['credit_info'] = $this->db->select('*')->from('dbt_deposit')
        ->where('method','ADMIN')
        ->where('status',1)
        ->limit($config["per_page"], $page)
        ->get()
        ->result(); 

         $data["links"] = $this->pagination->create_links(); 
        #
        #pagination ends
        #  
        $data["content"] = $this->load->view("backend/credit/credit_list", $data, true);
        $this->load->view("backend/layout/main_wrapper", $data);
    } 


    public function add_credit()
    {  

        $data['title'] = display('add_credit');
        $data['content'] = $this->load->view("backend/credit/add_credit", $data, true);
        $this->load->view("backend/layout/main_wrapper", $data);  
    }

    public function send_credit()
    {
        $data['title'] = display('add_credit');
        /*----------FORM VALIDATION RULES----------*/
        $this->form_validation->set_rules('user_id', display('user_id') ,'required');
        $this->form_validation->set_rules('amount', display('amount'),'required');
        $this->form_validation->set_rules('note', display('note'),'required|trim');
        /*-------------STORE DATA------------*/

        if ($this->form_validation->run()) { 

            $balance = $this->db->select('*')->from('dbt_balance')->where('user_id', $this->input->post('user_id'))->get()->row();

            $balance_data = array(
                'user_id'       => $this->input->post('user_id'),
                'balance'       => $this->input->post('amount')+@$balance->balance,
                'last_update'   => date('Y-m-d h:i:s'),
            );


            if ($balance) {

               $this->db->set('balance', ($this->input->post('amount')+@$balance->balance))->where('user_id', $this->input->post('user_id'))->update("dbt_balance");

               $balance_id = $balance->id;

            }else{
                $this->db->insert('dbt_balance', $balance_data);
                $balance_id = $this->db->insert_id();

            }




            $deposit_data = array(
                'user_id'                   => $this->input->post('user_id'),
                'amount'                    => $this->input->post('amount'),
                'method'                    => "ADMIN",
                'fees_amount'               => 0,
                'comment'                   => $this->input->post('note'),
                'deposit_date'              => date('Y-m-d h:i:s'),
                'approved_date'             => date('Y-m-d h:i:s'),
                'status'                    => 1,
                'ip'                        => $this->input->ip_address(),
                'approved_cancel_by'        => 'admin',
            );

            $this->db->insert('dbt_deposit', $deposit_data);
            
            $balance_log = array(
                'balance_id'        => $balance_id,
                'user_id'           => $this->input->post('user_id'),
                'transaction_type'  => "CREDITED",
                'transaction_amount'=> $this->input->post('amount'),
                'transaction_fees'  => 0,
                'ip'                => $this->input->ip_address(),
                'date'              => date('Y-m-d H:i:s'),
            );
            //User Balance log
            $this->db->insert('dbt_balance_log', $balance_log);


            $this->session->set_flashdata('message','Send the amount successfully');
            redirect('backend/dashboard/credit/add_credit');

        } else {

            $data['title'] = display('add_credit');
            $data['content'] = $this->load->view("backend/credit/add_credit", $data, true);
            $this->load->view("backend/layout/main_wrapper", $data);  

        }
    }


    public function credit_details($id=NULL)
    {

        $data['title'] = display('credit_info');

        $data['credit_info'] = $this->db->select('deposit.*,
            dbt_user.user_id,
            dbt_user.first_name,
            dbt_user.last_name,dbt_user.phone,dbt_user.email')
            ->from('dbt_deposit deposit')
            ->join('dbt_user','dbt_user.user_id=deposit.user_id')
            ->where('deposit.method','ADMIN')
            ->where('deposit.id', $id)
            ->where('deposit.status',1)
            ->get()
            ->row(); 

        $data['content'] = $this->load->view("backend/credit/credit_details", $data, true);
        $this->load->view("backend/layout/main_wrapper", $data); 


    }


  
	
}
