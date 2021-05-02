<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Market extends CI_Controller {
 	
 	public function __construct()
 	{
 		parent::__construct();
 		$this->load->model(array(
 			'backend/market_model',
 			'backend/coinpair_model'  
 		));
 		
 		if (!$this->session->userdata('isAdmin')) 
        redirect('logout');
 		
		if (!$this->session->userdata('isLogin') 
			&& !$this->session->userdata('isAdmin'))
			redirect('admin');
 	}
 
	public function index()
	{  
		$data['title']  = "Coin Market";

 		/******************************
        * Pagination Start
        ******************************/
        $config["base_url"] = base_url('backend/market/index');
        $config["total_rows"] = $this->db->count_all('dbt_market');
        $config["per_page"] = 25;
        $config["uri_segment"] = 5;
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
        $page = ($this->uri->segment(5)) ? $this->uri->segment(5) : 0;
        $data['market'] = $this->market_model->read($config["per_page"], $page);
        $data["links"] = $this->pagination->create_links();
        /******************************
        * Pagination ends
        ******************************/

		$data['content'] = $this->load->view("backend/market/list", $data, true);
		$this->load->view("backend/layout/main_wrapper", $data);
	}

    public function coinsym_check($symbol, $id)
    { 
        $coinExists = $this->db->select('*')
            ->where('symbol',$symbol) 
            ->where_not_in('id',$id) 
            ->get('dbt_market')
            ->num_rows();

        if ($coinExists > 0) {
            $this->form_validation->set_message('symbol', 'The {field} is already registered.');
            return false;

        } else {
            return true;

        }
    } 

 
	public function form($id = null)
	{ 
		$data['title']  = "Coin Market";


		if (!empty($id)) {       		
       		$this->form_validation->set_rules('symbol', "symbol","max_length[100]|required|trim|callback_coinsym_check[$id]");

		} else {
			$this->form_validation->set_rules('symbol', 'symbol','required|is_unique[dbt_market.symbol]|max_length[100]|trim');

		}

		$this->form_validation->set_rules('name', "name",'max_length[100]|required|trim');
		$this->form_validation->set_rules('status', display('status'),'max_length[1]|required|trim');

		$data['market'] = (object)$userdata = array(
			'id' 		=> $this->input->post('id'),
			'name' 		=> $this->input->post('name'),
			'full_name' => $this->input->post('full_name'),
			'symbol' 	=> $this->input->post('symbol'),
			'status' 	=> $this->input->post('status'),
		);
 		

		if ($this->form_validation->run()) 
		{

			if (empty($id)) 
			{
				if ($this->market_model->create($userdata)) {
					$this->session->set_flashdata('message', display('save_successfully'));

				} else {
					$this->session->set_flashdata('exception', display('please_try_again'));

				}
				redirect("backend/market");

			} 
			else 
			{
				if ($this->market_model->update($userdata)) {
					$this->session->set_flashdata('message', display('update_successfully'));

				} else {
					$this->session->set_flashdata('exception', display('please_try_again'));

				}
				redirect("backend/market/form/$id");

			}
		} 
		else 
		{ 
			if(!empty($id)) {
				$data['title'] = "Edit Market";
				$data['market']   = $this->market_model->single($id);

			}

			$data['coins']   = $this->coinpair_model->allCoin();
			$data['content'] = $this->load->view("backend/market/form", $data, true);
			$this->load->view("backend/layout/main_wrapper", $data);

		}

	}

}
