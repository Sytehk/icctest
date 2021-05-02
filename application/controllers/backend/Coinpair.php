<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Coinpair extends CI_Controller {
 	
 	public function __construct()
 	{
 		parent::__construct();
 		$this->load->model(array(
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

        $data['title']  = "Coin Pair";

        /******************************
        * Pagination Start
        ******************************/
        $config["base_url"] = base_url('backend/coinpair/index');
        $config["total_rows"] = $this->db->count_all('dbt_coinpair');
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
        $data['coinpair'] = $this->coinpair_model->read($config["per_page"], $page);
        $data["links"] = $this->pagination->create_links();
        /******************************
        * Pagination ends
        ******************************/

        $data['market']   = $this->coinpair_model->allMarket();
        $data['coins']   = $this->coinpair_model->allCoin();

		$data['content'] = $this->load->view("backend/coinpair/list", $data, true);
		$this->load->view("backend/layout/main_wrapper", $data);
	}


    public function coinsym_check($symbol, $id)
    {
        $coinExists = $this->db->select('*')
            ->where('symbol',$symbol) 
            ->where_not_in('id',$id) 
            ->get('dbt_coinpair')
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
        $data['title']  = "CoinPair";


        if (!empty($id)) {                      
                $this->form_validation->set_rules('symbol', "symbol","max_length[100]|required|trim|callback_coinsym_check[$id]");

        } else {
                $this->form_validation->set_rules('symbol', 'symbol','required|is_unique[dbt_coinpair.symbol]|max_length[100]|trim');

        }

        $this->form_validation->set_rules('name', "name",'max_length[100]|required|trim');
        $this->form_validation->set_rules('market_id', "market_symbol",'required|trim');
        $this->form_validation->set_rules('coin_id', "currency_symbol",'required|trim');
        $this->form_validation->set_rules('status', display('status'),'max_length[1]|required|trim');

        $data['coinpair'] = (object)$userdata = array(
                'id'         => $this->input->post('id'),
                // 'market_id'  => $this->input->post('market_id'),
                'market_symbol'  => $this->input->post('market_id'),
                // 'coin_id'    => $this->input->post('coin_id'),
                'currency_symbol'    => $this->input->post('coin_id'),
                'name'       => $this->input->post('name'),
                'full_name'  => $this->input->post('full_name'),
                'symbol'     => $this->input->post('symbol'),
                'status'     => $this->input->post('status'),
        );
        

        if ($this->form_validation->run()) 
        {

                if (empty($id)) 
                {
                        if ($this->coinpair_model->create($userdata)) {
                                $this->session->set_flashdata('message', display('save_successfully'));

                        } else {
                                $this->session->set_flashdata('exception', display('please_try_again'));

                        }
                        redirect("backend/coinpair");

                } 
                else 
                {
                    
                        if ($this->coinpair_model->update($userdata)) {
                                $this->session->set_flashdata('message', display('update_successfully'));

                        } else {
                                $this->session->set_flashdata('exception', display('please_try_again'));

                        }
                        redirect("backend/coinpair/form/$id");

                }
        } 
        else 
        { 
            if(!empty($id)) {
                    $data['title'] = "Edit CoinPair";
                    $data['coinpair']   = $this->coinpair_model->single($id);

            }

            $data['market']   = $this->coinpair_model->allMarket();
            $data['coins']   = $this->coinpair_model->allCoin();

            $data['content'] = $this->load->view("backend/coinpair/form", $data, true);
            $this->load->view("backend/layout/main_wrapper", $data);

        }

    }

	

}
