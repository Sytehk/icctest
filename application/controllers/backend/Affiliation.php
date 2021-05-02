<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Affiliation extends CI_Controller {
 	
 	public function __construct()
 	{
 		parent::__construct();
 		$this->load->model(array(
 			'backend/affiliation_model'  
 		));
 		
 		if (!$this->session->userdata('isAdmin')) 
        redirect('logout');
 		
		if (!$this->session->userdata('isLogin') 
			&& !$this->session->userdata('isAdmin'))
			redirect('admin');
 	}
 
	public function index()
	{  
		$data['title']  = "Affiliation Setup";

		$this->form_validation->set_rules('commission', "commission",'max_length[100]|required|trim');
		$this->form_validation->set_rules('type', "type",'max_length[11]|required|trim');
		$this->form_validation->set_rules('status', display('status'),'max_length[1]|required|trim');

		$data['affiliation'] = (object)$userdata = array(
			'id' 		=> $this->input->post('id'),
			'commission' 		=> $this->input->post('commission'),
			'type' => $this->input->post('type'),
			'status' 	=> $this->input->post('status')
		);
 		

		if ($this->form_validation->run()) 
		{
			if ($this->affiliation_model->update($userdata)) {
				$this->session->set_flashdata('message', display('update_successfully'));

			} else {
				$this->session->set_flashdata('exception', display('please_try_again'));

			}
			redirect("backend/affiliation");
		}

		$data['affiliation']   = $this->affiliation_model->single();


		$data['content'] = $this->load->view("backend/affiliation/affiliation", $data, true);
		$this->load->view("backend/layout/main_wrapper", $data);

	}


}
