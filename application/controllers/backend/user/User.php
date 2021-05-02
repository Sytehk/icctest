<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {
    
    public function __construct()
    {
        parent::__construct();
        $this->load->model(array(
            'backend/user/user_model',
            'customer/transections_model'
        ));
        
        if (!$this->session->userdata('isAdmin')) 
        redirect('logout');
        
        if (!$this->session->userdata('isLogin') 
            && !$this->session->userdata('isAdmin'))
            redirect('admin');
    }
 
    public function index()
    {  
        $data['title']  = display('user_list');

        $data['content'] = $this->load->view("backend/user/list", $data, true);
        $this->load->view("backend/layout/main_wrapper", $data);
    }

    /*
    |----------------------------------------------
    |   Datatable Ajax data Pagination+Search
    |----------------------------------------------     
    */
    public function ajax_list()
    {
        $list = $this->user_model->get_datatables();
        $data = array();
        $no = $_POST['start'];
        foreach ($list as $users) {
            $no++;
            $row = array();
            $row[] = $no;
            $row[] = '<a href="'.base_url("backend/user/user/user_details/$users->id").'">'.$users->user_id.'</a>';
            $row[] = '<a href="'.base_url("backend/user/user/user_details/$users->id").'">'.$users->first_name." ".$users->last_name.'</a>';
            $row[] = '<a href="'.base_url("backend/user/user/user_details/$users->id").'">'.$users->referral_id.'</a>';
            $row[] = $users->email;
            $row[] = $users->phone;
            $row[] = '<a href="'.base_url("backend/user/user/form/$users->id").'"'.' class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title="Update"><i class="fa fa-pencil" aria-hidden="true"></i></a>  '.(($users->status==1)?'<button class="btn btn-success btn-sm">Active</button>':(($users->status==2)?'<button class="btn btn-danger btn-sm">Pending</button>':(($users->status==3)?'<button class="btn btn-danger btn-sm">Suspend</button>':'<button class="btn btn-kingfisher-daisy btn-sm">Deactive</button>'))).'  '.(($users->verified==1)?'<button class="btn btn-success btn-sm">verified</button>':(($users->verified==2)?'<button class="btn btn-danger btn-sm">Cancel</button>':(($users->verified==3)?'<a href='.base_url("backend/user/user/pending_user_verification/$users->user_id").' class="btn btn-info btn-sm" data-toggle="tooltip">Requested</a>':'<button class="btn btn-danger btn-sm">Not Verified</button>')));

            $data[] = $row;
        }

// <button class="btn btn-success btn-sm"></button>
// <button class="btn btn-danger btn-sm"></button>
// <button class="btn btn-kingfisher-daisy btn-sm"></button>
// "0=Deactivated account, 1=Activated account, 2=Pending account, 3=Suspend account"
// 0= did not submit info, 1= verified, 2=Cancel, 3=processing
        $output = array(
                "draw" => $_POST['draw'],
                "recordsTotal" => $this->user_model->count_all(),
                "recordsFiltered" => $this->user_model->count_filtered(),
                "data" => $data,
            );
        //output to json format
        echo json_encode($output);
    }


    public function email_check($email, $id)
    { 
        $emailExists = $this->db->select('email')
            ->where('email',$email) 
            ->where_not_in('id',$id) 
            ->get('dbt_user')
            ->num_rows();

        if ($emailExists > 0) {
            $this->form_validation->set_message('email_check', 'The {field} is already registered.');
            return false;
        } else {
            return true;
        }
    }

 
    public function form($id = null)
    { 
        $data['title']  = display('add_user');


        $this->form_validation->set_rules('first_name', display('firstname'),'required|max_length[50]');
        $this->form_validation->set_rules('mobile', display('mobile'),'is_unique[dbt_user.phone]|max_length[100]');

        if (!empty($id)) {   
            $this->form_validation->set_rules('email', 'Email Address', "required|valid_email|max_length[100]|callback_email_check[$id]|trim"); 
        } else {
            $this->form_validation->set_rules('email', display('email'),'required|valid_email|is_unique[dbt_user.email]|max_length[100]');
        }

        $this->form_validation->set_rules('password', display('password'),'required|min_length[6]|max_length[32]|md5');
        $this->form_validation->set_rules('conf_password', display('conf_password'),'required|min_length[6]|max_length[32]|md5|matches[password]');
        $this->form_validation->set_rules('status', display('status'),'required|max_length[1]');

        if (empty($id))
        { 
            $data['user'] = (object)$userdata = array(
                'id'          => $this->input->post('id'),
                'user_id'     => $this->randomID(),
                'referral_id'  => $this->input->post('referral_id'),
                'first_name'    => $this->input->post('first_name'),
                'last_name'       => $this->input->post('last_name'),
                'email'       => $this->input->post('email'),
                'password'    => md5($this->input->post('password')),
                'phone'       => $this->input->post('mobile'),
                'ip'      => $this->input->ip_address(),
                'status'      => $this->input->post('status'),
            );
        }
        else
        {
            $data['user'] = (object)$userdata = array(
                'id'          => $this->input->post('id'),
                'user_id'     => $this->input->post('user_id'),
                'first_name'      => $this->input->post('first_name'),
                'last_name'       => $this->input->post('last_name'),
                'email'       => $this->input->post('email'),
                'password'    => md5($this->input->post('password')),
                'phone'       => $this->input->post('mobile'),
                'ip'      => $this->input->ip_address(),
                'status'      => $this->input->post('status'),
            );
        }

        if ($this->form_validation->run()) 
        {

            if (empty($id)) 
            {
                if ($this->user_model->create($userdata)) {
                    $this->session->set_flashdata('message', display('save_successfully'));
                } else {
                    $this->session->set_flashdata('exception', display('please_try_again'));
                }
                redirect("backend/user/user/form/");

            } 
            else 
            {
                if ($this->user_model->update($userdata)) {
                    $this->session->set_flashdata('message', display('update_successfully'));
                } else {
                    $this->session->set_flashdata('exception', display('please_try_again'));
                }
                redirect("backend/user/user/form/$id");
            }
        } 
        else 
        { 
            if(!empty($id)) {
                $data['title'] = display('edit_user');
                $data['user']   = $this->user_model->single($id);
            }
            
            $data['content'] = $this->load->view("backend/user/form", $data, true);
            $this->load->view("backend/layout/main_wrapper", $data);
        }
    }

    public function user_details($id = null)
    {
        $data['title']  = display('details');

        $data['id'] = $id;

        if(!empty($id)) {

            $user_id             = $this->user_model->getUserId($id);
            $data                = $this->transections_model->transections_all_sums($user_id);
            $data['user']        = $this->user_model->single($id);
            $data['transection'] = $this->user_model->all_transection($user_id);
            $data['earning']     = $this->user_model->all_earnings($user_id);

        }

        $data['coin_setup']  = $this->db->select('*')->from('coin_setup')->get()->row();
        
        $data['content'] = $this->load->view("backend/user/search_user", $data, true);
        $this->load->view("backend/layout/main_wrapper", $data);
    }

    public function pending_user_verification_list()
    {
        $data['title']  = "Pending User List";
        
        /******************************
        * Pagination Start
        ******************************/
        $config["base_url"] = base_url('backend/user/user/pending_user_verification_list');
        $config["total_rows"] = $this->db->get_where('dbt_user', array('verified'=>3))->num_rows();
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

        $data['users'] = $this->db->select('*')->from('dbt_user')
                ->where('verified', 3)
                ->limit($config["per_page"], $page)
                ->get()
                ->result();

        $data["links"] = $this->pagination->create_links();
        /******************************
        * Pagination ends
        ******************************/



        $data['content'] = $this->load->view("backend/user/pending_user_verification_list", $data, true);
        $this->load->view("backend/layout/main_wrapper", $data);

    }
    public function subscriber_list()
    {
        $data['title']  = "Subscriber List";
        
        /******************************
        * Pagination Start
        ******************************/
        $config["base_url"] = base_url('backend/user/subscriber_list');
        $config["total_rows"] = $this->db->count_all('web_subscriber');
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

        $data['subscriber'] = $this->db->select('*')->from('web_subscriber')
                ->limit($config["per_page"], $page)
                ->get()
                ->result();

        $data["links"] = $this->pagination->create_links();
        /******************************
        * Pagination ends
        ******************************/

        $data['content'] = $this->load->view("backend/user/subscribelist", $data, true);
        $this->load->view("backend/layout/main_wrapper", $data);

    }
    public function pending_user_verification($user_id=null)
    {
        $data['title']  = "Pending User verify";
        
        $data['user'] = $this->user_model->singleUserVerifyDoc($user_id);


        $this->form_validation->set_rules('user_id', display('user_id'),'required|trim');

        if ($this->form_validation->run()) 
        {

            if (isset($_POST['cancel'])) {

                $update_verify = $this->db->set('verified', '2')->where('user_id', $this->input->post('user_id'))->update("dbt_user");

                if ($update_verify) {
                    $this->session->set_flashdata('message', display('save_successfully'));
                    redirect("backend/user/user/pending_user_verification/$user_id");

                } else {
                    $this->session->set_flashdata('exception', display('please_try_again'));

                }
            }

            if (isset($_POST['approve'])) {
                
                $update_verify = $this->db->set('verified', '1')->where('user_id', $this->input->post('user_id'))->update("dbt_user");

                if ($update_verify) {
                    $this->session->set_flashdata('message', display('save_successfully'));
                    redirect("backend/user/user/pending_user_verification/$user_id");

                } else {
                    $this->session->set_flashdata('exception', display('please_try_again'));

                }
            }
            
        }



        $data['content'] = $this->load->view("backend/user/pending_user_verification", $data, true);
        $this->load->view("backend/layout/main_wrapper", $data);

    }


    public function delete($user_id = null)
    {  
        if ($this->user_model->delete($user_id)) {
            $this->session->set_flashdata('message', display('delete_successfully'));
        } else {
            $this->session->set_flashdata('exception', display('please_try_again'));
        }
        redirect("backend/user/user/");
    }

    /*
    |----------------------------------------------
    |        id genaretor
    |----------------------------------------------     
    */
    public function randomID($mode = 2, $len = 6)
    {
        $result = "";
        if($mode == 1):
            $chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        elseif($mode == 2):
            $chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        elseif($mode == 3):
            $chars = "abcdefghijklmnopqrstuvwxyz0123456789";
        elseif($mode == 4):
            $chars = "0123456789";
        endif;

        $charArray = str_split($chars);
        for($i = 0; $i < $len; $i++) {
                $randItem = array_rand($charArray);
                $result .="".$charArray[$randItem];
        }
        return $result;
    }
    /*
    |----------------------------------------------
    |         Ends of id genaretor
    |----------------------------------------------
    */


}
