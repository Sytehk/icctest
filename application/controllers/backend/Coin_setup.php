<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Coin_setup extends CI_Controller {
	
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
		$data['title']  = "Coin Setup";
		$this->form_validation->set_rules('coin_name','Coin Name','required|trim');
		$this->form_validation->set_rules('coin_symbol','Coin Symbol','required|trim');
		$this->form_validation->set_rules('pair_with','Pair With','required|trim');


		$data['coin_setup'] = $this->db->select('*')->from('coin_setup')->get()->row();
		$data['currency'] 	= $this->db->select('*')->from('dbt_currency')->where('status', 1)->get()->result();

		$data['check_system_run'] = $this->db->select('*')->from('dbt_balance')->get()->num_rows(); 
		

		if($this->form_validation->run()){

			if(@$data['check_system_run']==0){
				if ($data['coin_setup']->create_wallet==0) {			
					//Generate Wallet
		        	$coinwallet = md5(hash('sha256', date('Y-m-d H:i:s').microtime().mt_rand(0, 9999999).@$this->input->post('coin_name').@$this->input->post('coin_symbol')));
		        	$create_wallet = 1;

		        	$data = array(
						'name' 		=>$this->input->post('coin_name'),
						'symbol' 	=>$this->input->post('coin_symbol'),
						'pair_with' =>$this->input->post('pair_with'),
						'wallet'    => $coinwallet,
						'create_wallet'    => $create_wallet
					);
				}
				else{
					$data = array(
						'name' 		=>$this->input->post('coin_name'),
						'symbol' 	=>$this->input->post('coin_symbol'),
						'pair_with' =>$this->input->post('pair_with'),
					);
				}
			
				
				$this->db->update("coin_setup", $data);
				$this->session->set_flashdata("message","Setup Successfully!");

			}else{

				$this->session->set_flashdata("exception", "Now, you can't change it!");

			}

			redirect("backend/coin_setup");

		}		


		$data['content'] 	= $this->load->view("backend/coin_setup/form", $data, true);
		$this->load->view("backend/layout/main_wrapper", $data);
	}


}