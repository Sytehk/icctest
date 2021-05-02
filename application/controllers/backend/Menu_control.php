<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class Menu_control extends CI_Controller {

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
		$data['title']	 = "Menu Control";
		$data['control'] = $this->db->select('*')->from('menu_control')->get()->row();
		$data['content'] = $this->load->view("backend/menu_control/menu_control", $data, true);
		$this->load->view("backend/layout/main_wrapper", $data);
	}

	public function save()
	{
		$ico_wallet = $this->input->post('ico_wallet');
		$exchange = $this->input->post('exchange');
		$package = $this->input->post('package');
		$this->db->set(array('ico_wallet'=>$ico_wallet,'exchange'=>$exchange,'package'=>$package))->update('menu_control');
		redirect(base_url('backend/menu_control'));
	}

}