<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Currency extends CI_Controller {
 	
 	public function __construct()
 	{
 		parent::__construct();
 		$this->load->model(array(
 			'backend/currency/currency_model'  
 		));
 		
 		if (!$this->session->userdata('isAdmin')) 
        redirect('logout');
 		
		if (!$this->session->userdata('isLogin') 
			&& !$this->session->userdata('isAdmin'))
			redirect('admin');
 	}

 
	public function index()
	{  
		$data['title']  = "Currency";

		$data['content'] = $this->load->view("backend/currency/list", $data, true);
		$this->load->view("backend/layout/main_wrapper", $data);
	}

    public function ajax_list()
    {
        $list = $this->currency_model->get_datatables();
        $data = array();
        $no = $_POST['start'];
        foreach ($list as $cryptocoin) {
            $no++;
            $row = array();
            $row[] = $no;
            $row[] = $cryptocoin->name;
            $row[] = $cryptocoin->symbol;
            $row[] = $cryptocoin->icon." ".$cryptocoin->rate;
            $row[] = '<a href="'.base_url("backend/currency/form/$cryptocoin->id").'"'.' class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title="Update"><i class="fa fa-pencil" aria-hidden="true"></i></a>';

            $data[] = $row;

        }


        $output = array(
                "draw" => $_POST['draw'],
                "recordsTotal" => $this->currency_model->count_all(),
                "recordsFiltered" => $this->currency_model->count_filtered(),
                "data" => $data,
            );
        //output to json format
        echo json_encode($output);
    }


    public function coin_check($name, $id)
    { 
        $coinExists = $this->db->select('*')
            ->where('name',$name) 
            ->where_not_in('id',$id) 
            ->get('dbt_currency')
            ->num_rows();

        if ($coinExists > 0) {
            $this->form_validation->set_message('name', 'The {field} is already registered.');
            return false;

        } else {
            return true;

        }
    }

    public function coinsym_check($symbol, $id)
    { 
        $coinExists = $this->db->select('*')
            ->where('symbol',$symbol) 
            ->where_not_in('id',$id) 
            ->get('dbt_currency')
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
		$data['title']  = "Currency";

		if (!empty($id)) {
       		$this->form_validation->set_rules('name', "Coin Name","max_length[100]|required|trim|callback_coin_check[$id]");
       		$this->form_validation->set_rules('symbol', "symbol","max_length[10]|required|trim|callback_coinsym_check[$id]");

		} else {
			$this->form_validation->set_rules('name', 'Coin Name','required|is_unique[dbt_currency.name]|max_length[100]|trim');
			$this->form_validation->set_rules('symbol', 'symbol','required|is_unique[dbt_currency.symbol]|max_length[10]|trim');

		}

		$this->form_validation->set_rules('rate', "Rate ",'max_length[100]|required|trim');
		$this->form_validation->set_rules('status', display('status'),'max_length[1]|required|trim');

		$data['currency'] = (object)$userdata = array(
			'id'      	=> $this->input->post('id'),
			'name'      => $this->input->post('name'),
            'icon'      => $this->input->post('icon'),
			'symbol'    => $this->input->post('symbol'),
			'rate'      => $this->input->post('rate'),
			'status'    => $this->input->post('status'),
		);
 	

		if ($this->form_validation->run()) 
		{

			if (empty($id)) 
			{
				if ($this->currency_model->create($userdata)) {
					$this->session->set_flashdata('message', display('save_successfully'));

				} else {
					$this->session->set_flashdata('exception', display('please_try_again'));

				}
				redirect("backend/currency/form/");

			} 
			else 
			{
				if ($this->currency_model->update($userdata)) {
					$this->session->set_flashdata('message', display('update_successfully'));

				} else {
					$this->session->set_flashdata('exception', display('please_try_again'));

				}
				redirect("backend/currency/form/$id");

			}
		}

		if(!empty($id)) {
			$data['title'] = "Edit Currency";
			$data['currency']   = $this->currency_model->single($id);

		}
		
		$data['content'] = $this->load->view("backend/currency/form", $data, true);
		$this->load->view("backend/layout/main_wrapper", $data);


	}

}