<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cron_jobs extends CI_Controller {
 	
 	public function __construct()
 	{
 		parent::__construct();
 		$this->load->model(array(
 			'backend/cron_jobs_model'  
 		));
 		
 		if (!$this->session->userdata('isAdmin')) 
                redirect('logout');
 		
		if (!$this->session->userdata('isLogin') 
			&& !$this->session->userdata('isAdmin'))
			redirect('admin');
 	}
 
	public function index()
	{

        $data['title']  = "Cron Jobs";

        /******************************
        * Pagination Start
        ******************************/
        $config["base_url"] = base_url('backend/cron_jobs/index');
        $config["total_rows"] = $this->db->count_all('dbt_cron');
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
        $data['cron_jobs'] = $this->cron_jobs_model->read($config["per_page"], $page);
        $data["links"] = $this->pagination->create_links();
        /******************************
        * Pagination ends
        ******************************/
		$data['content'] = $this->load->view("backend/cron_jobs/list", $data, true);
		$this->load->view("backend/layout/main_wrapper", $data);
	}
        
 
    public function form($id = null)
    { 
        $data['title']  = "Cron Jobs";

        $this->form_validation->set_rules('name', "name",'required|trim');
        $this->form_validation->set_rules('command', "command",'required|trim');
        $this->form_validation->set_rules('interval_sec', "interval_sec",'required|trim');
        $this->form_validation->set_rules('next_run_at_date', "next_run_at",'required|trim');
        $this->form_validation->set_rules('next_run_at_time', "next_run_at",'required|trim');
        $this->form_validation->set_rules('status', "status",'required|trim');

        @$next_run_at = $this->input->post('next_run_at_date')." ".$this->input->post('next_run_at_time').":00";

        $data['cron_jobs'] = (object)$userdata = array(
            'id'           => $this->input->post('id'),
            'name'         => $this->input->post('name'),
            'command'      => $this->input->post('command'),
            'interval_sec' => $this->input->post('interval_sec'),
            'next_run_at'  => $next_run_at,
            'status'       => $this->input->post('status')
        );
        

        if ($this->form_validation->run()) 
        {
            if (empty($id)) 
            {
                if ($this->cron_jobs_model->create($userdata)) {
                    $this->session->set_flashdata('message', display('save_successfully'));

                } else {
                    $this->session->set_flashdata('exception', display('please_try_again'));

                }
                redirect("backend/cron_jobs");

            } 
            else 
            {
                
                if ($this->cron_jobs_model->update($userdata)) {
                    $this->session->set_flashdata('message', display('update_successfully'));

                } else {
                    $this->session->set_flashdata('exception', display('please_try_again'));

                }
                redirect("backend/cron_jobs/form/$id");

            }
        } 
        else 
        { 
            if(!empty($id)) {
                    $data['title'] = "Edit Cron Jobs";
                    $data['cron_jobs']   = $this->cron_jobs_model->single($id);

            }

            $data['content'] = $this->load->view("backend/cron_jobs/form", $data, true);
            $this->load->view("backend/layout/main_wrapper", $data);

        }

    }

}