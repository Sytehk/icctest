<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class Helpline extends CI_Controller {

	public function __construct()
	{
		parent::__construct();

		if (!$this->session->userdata('isAdmin')) 
        	redirect('logout');

		if (!$this->session->userdata('isLogin') 
			&& !$this->session->userdata('isAdmin'))
		redirect('admin');
	}

	public function index()
	{
		$data['title'] 	 = "Helpline";

		$config["base_url"] = base_url('backend/helpline/index');
        $config["total_rows"] = $this->db->select('*')
        ->from('dbt_messenger')
        ->where('sender_id !=','admin')
        ->get()->num_rows();
        $config["per_page"] = 15;
        $config["uri_segment"] = 4;
        $config["last_link"] = "Last"; 
        $config["first_link"] = "First"; 
        $config['next_link'] = 'Next';
        $config['prev_link'] = 'Prev';  
        $config['full_tag_open'] = "<ul class='pagination col-xs pull-right'>";
        $config['full_tag_close'] = "</ul>";
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
        $config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";
        $config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";
        $config['next_tag_open'] = "<li>";
        $config['next_tag_close'] = "</li>";
        $config['prev_tag_open'] = "<li>";
        $config['prev_tagl_close'] = "</li>";
        $config['first_tag_open'] = "<li>";
        $config['first_tagl_close'] = "</li>";
        $config['last_tag_open'] = "<li>";
        $config['last_tagl_close'] = "</li>";
        /* ends of bootstrap */
        $this->pagination->initialize($config);
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        
        $data['message'] = $this->db->select('dbt_messenger.*,dbt_user.first_name,dbt_user.last_name,dbt_user.id as user_id')
			->from('dbt_messenger')
			->join('dbt_user','dbt_user.user_id=dbt_messenger.sender_id')
			->where('sender_id !=','admin')
			->order_by('id','DESC')
			->limit($config["per_page"], $page)
			->get()
			->result();
        
        $data["links"] = $this->pagination->create_links();

		$data['content'] = $this->load->view("backend/helpline/helpline", $data, true);
		$this->load->view("backend/layout/main_wrapper", $data);
	}

	public function subject($id=null)
	{
		$this->db->set('status',0)->where('id',$id)->where('status',1)->update('dbt_messenger');
		$data['usermessege'] = $this->db->select('dbt_messenger.*,dbt_user.first_name,dbt_user.last_name,dbt_user.email')
			->from('dbt_messenger')
			->join('dbt_user','dbt_messenger.sender_id=dbt_user.user_id')
			->where('dbt_messenger.id',$id)
			->get()
			->row();

		$data['adminmessege']= $this->db->select('*')->from('dbt_messenger')->where('replay_id',$id)->get()->result();

		$data['content'] = $this->load->view("backend/helpline/helpline_details", $data, true);
		$this->load->view("backend/layout/main_wrapper", $data);
	}

	public function send_message($id=null)
	{
		$this->form_validation->set_rules('subject', 'Subject','required');
		$this->form_validation->set_rules('message', 'Message','required');

		if($this->form_validation->run()){

			$reciver_id = $this->db->select('sender_id')->from('dbt_messenger')->where('id',$id)->get()->row()->sender_id;
			$subject = $this->input->post('subject');
			$message = $this->input->post('message');

			$data = array(
				'sender_id'	=> 'admin',
				'reciver_id'=> $reciver_id,
				'subject'	=> $subject,
				'messege'	=> $message,
				'replay_id'	=> $id,
				'date_time'	=> date('Y-m-d H:i:s'),
				'status'	=> 1,
				'admin_status'=>1
			);
			$this->db->insert("dbt_messenger",$data);
			$this->db->set('admin_status',1)->where('id',$id)->update('dbt_messenger');
		}
		redirect("backend/helpline/subject/$id");
	}

}