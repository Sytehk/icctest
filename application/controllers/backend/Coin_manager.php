<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Coin_manager extends CI_Controller {
 	
 	public function __construct()
 	{
 		parent::__construct();
 		$this->load->model(array(
 			'backend/coin_manager_model'  
 		));
 		
 		if (!$this->session->userdata('isAdmin')) 
                redirect('logout');
 		
		if (!$this->session->userdata('isLogin') 
			&& !$this->session->userdata('isAdmin'))
			redirect('admin');
 	}
 
	public function index($id = 1)
	{

        $data['title']  = "Coin Manager";

        $this->form_validation->set_rules('hold_coin', "name",'required|trim');
        $this->form_validation->set_rules('pre_sell', "currency_symbol",'required|trim');
        $this->form_validation->set_rules('sell_available', "sell_available",'required|trim');

        $data['coin_manager'] = (object)$userdata = array(
            'id'            => $this->input->post('id'),
            'hold_coin'     => $this->input->post('hold_coin'),
            'pre_sell'      => $this->input->post('pre_sell'),
            'sell_available'=> $this->input->post('sell_available')
        );
        

        if ($this->form_validation->run()) 
        {

            if ($this->coin_manager_model->update($userdata)) {
                $this->session->set_flashdata('message', display('update_successfully'));

            } else {
                $this->session->set_flashdata('exception', display('please_try_again'));

            }
            redirect("backend/coin_manager/index/$id");
            
        }


        if(!empty($id)) {
            $data['title'] = "Coin Manager";
            $data['coin_manager']   = $this->coin_manager_model->single($id);
        }

        $data['content'] = $this->load->view("backend/coin_manager/form", $data, true);
        $this->load->view("backend/layout/main_wrapper", $data);


	}
	

}
