<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Coin_release extends CI_Controller {
 	
 	public function __construct()
 	{
 		parent::__construct();
 		$this->load->model(array(
 			'backend/coin_release_model'  
 		));
 		
 		if (!$this->session->userdata('isAdmin')) 
                redirect('logout');
 		
		if (!$this->session->userdata('isLogin') 
			&& !$this->session->userdata('isAdmin'))
			redirect('admin');
 	}
 
	public function index()
	{

        $data['title']  = "Coin Release";

        /******************************
        * Pagination Start
        ******************************/
        $config["base_url"] = base_url('backend/coin_release/index');
        $config["total_rows"] = $this->db->count_all('dbt_release_setup');
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
        $data['coin_release'] = $this->coin_release_model->read($config["per_page"], $page);
        $data["links"] = $this->pagination->create_links();
        /******************************
        * Pagination ends
        ******************************/

		$data['content'] = $this->load->view("backend/coin_release/list", $data, true);
		$this->load->view("backend/layout/main_wrapper", $data);
	}

 
    public function form($id = null)
    { 
        $data['title']  = "Coin Release";

        $this->form_validation->set_rules('round_name', "round_name",'required|trim');
        $this->form_validation->set_rules('day', "day",'required|trim');
        $this->form_validation->set_rules('target', "target",'required|trim');
        $this->form_validation->set_rules('start_date', "start_date",'required|trim');
        $this->form_validation->set_rules('start_time', "start_time",'required|trim');

         @$start_date = $this->input->post('start_date')." ".$this->input->post('start_time').":00";
        $coin_setup = $this->db->select('*')->from('coin_setup')->get()->row();
        $newroundtarget = $this->input->post('target');

        $data['coin_release'] = (object)$userdata = array(
                'id'         => $this->input->post('id'),
                'round_name' => $this->input->post('round_name'),
                'day'        => $this->input->post('day'),
                'target'     => $this->input->post('target'),
                'exchange_currency'=> $coin_setup->pair_with,
                'start_date' => $start_date,
                'status'     => $this->input->post('status'),
        );
        

        if ($this->form_validation->run())
        {
            if(!empty($id)){
                $checktargetfilup = $this->db->select('fillup_target')->from('dbt_release_setup')->where('id',$id)->get()->row();
                if($checktargetfilup->fillup_target>0){
                    $this->session->set_flashdata('exception','This round is running!');
                    redirect("backend/coin_release/form/$id");
                }
            }

            $rounddetails = $this->db->select('id,start_date as startdate,DATE_ADD(dbt_release_setup.start_date, INTERVAL dbt_release_setup.day DAY) as enddate')->from('dbt_release_setup')->where("DATE_ADD(dbt_release_setup.start_date, INTERVAL dbt_release_setup.day DAY)>='$start_date'")->get();

            if(empty($id)){

                $checkroundtime = $rounddetails->num_rows()>0?1:0;
            }
            else{
                if($rounddetails->num_rows()>=2){
                    $checkroundtime = 1;
                }
                else{
                    if($rounddetails->num_rows()>0){
                        $data = $rounddetails->row();
                        $checkroundtime = $data->id==$id?0:1;
                    }
                    else{
                        $checkroundtime = 0;
                    }
                }
            }

            if($checkroundtime==0)
            {
                if(empty($id)){
                    $releaseround = $this->db->select_sum('target')->from('dbt_release_setup')->get()->row();
                }
                else{
                    $releaseround = $this->db->select_sum('target')->from('dbt_release_setup')->where('id !=',$id)->get()->row();
                }

                $roundtarget  = $releaseround->target;
                $sellcoin     = $this->db->select('sell_available')->from('dbt_coin_manager')->get()->row();
                $totalsellcoin= $sellcoin->sell_available;
                $availablecoin= $totalsellcoin-$roundtarget;
                
                if($availablecoin>=$newroundtarget){

                    if (empty($id)) 
                    {
                        if ($this->coin_release_model->create($userdata)) {
                                $this->session->set_flashdata('message', display('save_successfully'));

                        } else {
                                $this->session->set_flashdata('exception', display('please_try_again'));

                        }
                        redirect("backend/coin_release");

                    } 
                    else 
                    {
                        
                        if ($this->coin_release_model->update($userdata)) {
                                $this->session->set_flashdata('message', display('update_successfully'));

                        } else {
                                $this->session->set_flashdata('exception', display('please_try_again'));

                        }
                        redirect("backend/coin_release/form/$id");

                    }
                }
                else{
                    $this->session->set_flashdata('exception', display('sell_available_limit'));
                }

            }
            else
            {
                $this->session->set_flashdata('exception', display('already_exists'));
            }
        }

        if(!empty($id)) {
            $data['title'] = "Edit Coin_release";
            $data['coin_release'] = $this->coin_release_model->single($id);

        }

        $data['currency'] = $this->coin_release_model->allCurrency();

        $data['content'] = $this->load->view("backend/coin_release/form", $data, true);
        $this->load->view("backend/layout/main_wrapper", $data);

    }
	

}
