<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller 
{
    public function __construct()
    {
        parent::__construct(); 

        $this->load->model(array(
            'website/web_model',
            'common_model',
            'payment_model',

        ));

        //Language setting
        $globdata['lang']        = $this->langSet();
        
        $globdata['web_language']= $this->web_model->webLanguage();
        $globdata['social_link'] = $this->web_model->socialLink();
        $globdata['category']    = $this->web_model->categoryList();

        $this->load->vars($globdata);

    }

    public function index()
    {

       
        $data['title'] = "";
        
        $data['blog']        = $this->db->select("*")->from('web_news')->order_by('article_id', 'desc')->limit(3)->get()->result();

        //Testmonial data
        $cat_id = $this->web_model->catidBySlug('testimonial');
        
        $data['testimonial'] = $this->db->select('*')->from('web_article')->where('cat_id', @$cat_id->cat_id)->get()->result();

        //FAQ data
        $parent_cat = $this->db->select("cat_id")->from('web_category')->where('slug', 'faq')->get()->row();
        $data['faq_cat'] = $this->db->select("*")->from('web_category')->where('parent_id', @$parent_cat->cat_id)->get()->result();
        $ids = $this->db->select("cat_id")->from('web_category')->where('parent_id', @$parent_cat->cat_id)->get()->result();
        $cat_ids = array();
        foreach (@$ids as $key => $value) {
            $cat_ids[]=$value->cat_id;
        }
        $data['faq'] = $this->db->select('*')->from('web_article')->where_in('cat_id', @$cat_ids)->get()->result();

        //Advisors data
        $cat_id = $this->web_model->catidBySlug('advisors');
        $data['advisors'] = $this->db->select('*')->from('web_article')->where('cat_id', @$cat_id->cat_id)->limit(4)->get()->result();

        //Team data
        $cat_id = $this->web_model->catidBySlug('team');
        $data['team'] = $this->db->select('*')->from('web_article')->where('cat_id', @$cat_id->cat_id)->limit(9)->get()->result();

        //Chart Data
        $parent_cat = $this->db->select("cat_id")->from('web_category')->where('slug', 'chart')->get()->row();
        $ids = $this->db->select("cat_id")->from('web_category')->where('parent_id', @$parent_cat->cat_id)->get()->result();
        $i = 0;
        foreach ($ids as $key => $value) {
            $data['chart'.$i] = $this->db->select('*')->from('web_article')->where('cat_id', @$value->cat_id)->get()->result();
            $i++;
        }

        //Team data
        $cat_id = $this->web_model->catidBySlug('roadmap');
        $data['roadmap'] = $this->db->select('*')->from('web_article')->where('cat_id', @$cat_id->cat_id)->limit(7)->order_by('position_serial', 'ASC')->get()->result();

        $data['about']          = $this->web_model->article(@$this->web_model->catidBySlug('about')->cat_id);



        $data['client']           = $this->web_model->article(@$this->web_model->catidBySlug('client')->cat_id);
        $data['testimonial']    = $this->web_model->article(@$this->web_model->catidBySlug('testimonial')->cat_id);


        $data['social_link'] = $this->web_model->socialLink();



        $data['contact']   = $this->db->select("*")->from('web_category')->where('slug', 'contact')->get()->row();
        $data['blog_cat']   = $this->db->select("*")->from('web_category')->where('slug', 'blog')->get()->row();
        $data['faq_cat_details']   = $this->db->select("*")->from('web_category')->where('slug', 'faq')->get()->row();
        $data['team_cat']   = $this->db->select("*")->from('web_category')->where('slug', 'team')->get()->row();
        $data['token']   = $this->db->select("*")->from('web_category')->where('slug', 'token')->get()->row();
        $data['aboutcoin_cat']   = $this->db->select("*")->from('web_category')->where('slug', 'aboutcoin')->get()->row();

        
        $data['aboutcoin']   = $this->web_model->article(@$this->web_model->catidBySlug('aboutcoin')->cat_id);


        $data['home']          = $this->web_model->article(@$this->web_model->catidBySlug('home')->cat_id);
        $data['rcoin_info']   = $this->web_model->release_coin_info();

        $result = $this->db->select('*')->from('setting')->get()->row();
        date_default_timezone_set(@$result->time_zone);
        $nowtime      = date("Y-m-d H:i:s");

        $coinreleasetimedata    = $this->web_model->coin_release_time($nowtime);
        $checkitem              = $coinreleasetimedata->num_rows();
        $coinrelease            = $coinreleasetimedata->row();
        $fliptime               = 0;
        if($checkitem>0){

            $releasetime        = date("Y-m-d H:i:s",strtotime("$coinrelease->start_date +$coinrelease->day day"));
            $realreleasetime    = strtotime($releasetime)-strtotime($nowtime);
            if($realreleasetime>0){
                $fliptime       = $realreleasetime;
            }
        }
        $data['fliptime']       = $fliptime;
        $data['flipdata']       = $coinrelease;
        $data['teamoverview']   = $this->db->select('*')->from('web_article')->where('article_id',46)->get()->row();



        


//  v    t    r   tr  f
//8500+1400+2500+300+500+





        $this->load->view('website/header', $data);     
        $this->load->view('website/index', $data);
        $this->load->view('website/footer', $data);

    }

    public function test(){

        $total = $this->db->count_all('dbt_token');

        if ($total<=1000000) {
            $datains ='';
            $j = 1500;
            $temp = 1000000-$total;
            if($temp<=$j){
                $j = $temp;
            }
            
            for($i=1;$i<=$j;$i++){

                $datains = "('','".hash ('sha256', date('Y-m-d H:i:s').microtime().mt_rand(0,9999999))."','0')";
                $datains = rtrim($datains, ',');
                $inssql = "INSERT INTO dbt_token (id, token, status) VALUES $datains";
                $results = $this->db->query($inssql);

            }
        }

        
    }


    public function page()
    {

        if (!$this->web_model->catidBySlug($this->uri->segment(1))) {
            redirect(base_url());
        }

        $cat_id = $this->web_model->catidBySlug($this->uri->segment(1));

       // Language setting
       // $data['lang']       = $this->langSet();

        $parent_cat = $this->db->select("cat_id")->from('web_category')->where('slug', 'faq')->get()->row();

        $data['faq_cat'] = $this->db->select("*")->from('web_category')->where('parent_id', $parent_cat->cat_id)->get()->result();

        $data['title']      = $this->uri->segment(1);
        $data['cat_info']   = $this->web_model->cat_info($this->uri->segment(1));
        $data['article']    = $this->web_model->article($this->web_model->catidBySlug($this->uri->segment(1))->cat_id);

        if ($this->uri->segment(1)=='faq') {
            $data['article']    = $this->web_model->article($cat_id->cat_id);
            $data['cat_info']   = $this->web_model->cat_info($this->uri->segment(1));

            $this->load->view('website/header', $data);     
            $this->load->view('website/faq', $data);
            $this->load->view('website/footer', $data);

        }else{

            $this->load->view('website/header', $data);
            $this->load->view('website/page', $data);
            $this->load->view('website/footer', $data);
        }        

    }

    public function contact()
    {

        $cat_id = $this->web_model->catidBySlug($this->uri->segment(1));

        //Language setting
        //$data['lang']       = $this->langSet();
        
        $data['title']      = $this->uri->segment(1);
        $data['article']    = $this->web_model->article($cat_id->cat_id);
        $data['cat_info']   = $this->web_model->cat_info($this->uri->segment(1));

        $this->load->view('website/header', $data);     
        $this->load->view('website/contact', $data);
        $this->load->view('website/footer', $data);
        
    }

     //Ajax Contact Message Action
    public function contactMsg()
    {

        $appSetting = $this->common_model->get_setting();
        
        $data['fromName']  = $this->input->post('name');
        $data['from']      = $this->input->post('email');
        $data['to']        = $appSetting->email;
        $data['subject']   = $this->input->post('subject');
        $data['title']     = $this->input->post('email');
        $data['message']   = "<b>Message: </b>".$this->input->post('comment');

        $this->common_model->send_email($data);

    }

    public function blog()
    {

        $slug1 = $this->uri->segment(1);
        $slug2 = $this->uri->segment(2);
        $slug3 = $this->uri->segment(3);

        //Language setting
        //$data['lang']               = $this->langSet();

        $data['title']              = $this->uri->segment(1);

        //For Coin Tricker
        //$data['cryptocoins']        = $this->web_model->cryptoCoin(10, 0);
        $data['recentblog']         = $this->db->select("*")->from('web_news')->order_by('article_id', 'desc')->limit(3)->get()->result();

        if ($slug2=="" || $slug2==NULL || is_numeric($slug2)) {

            //All Category blog with Pagination
            $cat_id     = $this->web_model->catidBySlug($slug1)->cat_id;
            if (!$cat_id) {
                redirect(base_url('blog'));
            }
            $where_add  = $this->web_model->catidBySlug('blog')->cat_id;

            /******************************
            * Pagination Start
            ******************************/
            $config["base_url"]         = base_url('blog');
            $config["total_rows"]       = $this->db->count_all('web_news');
            $config["per_page"]         = 6;
            $config["uri_segment"]      = 2;
            $config["last_link"]        = "Last"; 
            $config["first_link"]       = "First"; 
            $config['next_link']        = '&#8702;';
            $config['prev_link']        = '&#8701;';  
            $config['full_tag_open']    = "<ul class='pagination'>";
            $config['full_tag_close']   = "</ul>";
            $config['num_tag_open']     = '<li>';
            $config['num_tag_close']    = '</li>';
            $config['cur_tag_open']     = "<li class='disabled'><li class='active'><a href='#'>";
            $config['cur_tag_close']    = "<span class='sr-only'></span></a></li>";
            $config['next_tag_open']    = "<li>";
            $config['next_tag_close']   = "</li>";
            $config['prev_tag_open']    = "<li>";
            $config['prev_tagl_close']  = "</li>";
            $config['first_tag_open']   = "<li>";
            $config['first_tagl_close'] = "</li>";
            $config['last_tag_open']    = "<li>";
            $config['last_tagl_close']  = "</li>";
            /* ends of bootstrap */
            $this->pagination->initialize($config);
            $page = ($this->uri->segment(2)) ? $this->uri->segment(2) : 0;
            $data['blog']           = $this->db->select("*")
                                        ->from('web_news')
                                        ->order_by('article_id', 'desc')
                                        ->limit($config["per_page"], $page)
                                        ->get()
                                        ->result();
            $data["links"]          = $this->pagination->create_links();
            /******************************
            * Pagination ends
            ******************************/

            $data['advertisement']  = $this->web_model->advertisement($where_add);
            $data['blogcat']        = $this->web_model->blogCatListBySlug('blog');
            $data['cat_info']       = $this->web_model->cat_info($slug1);
            $data['content']        = $this->load->view("website/sidebar", $data, true);


            $this->load->view('website/header', $data);     
            $this->load->view('website/blog', $data);
            $this->load->view('website/footer', $data); 

        }
        elseif (($slug2!="" || !is_numeric($slug2)) && ($slug3=="" || $slug3==NULL)) {

            @$where_add  = $this->web_model->catidBySlug('blog')->cat_id;

            //Slug Category blog
            $cat_id     = $this->web_model->catidBySlug($slug2)->cat_id;
            if (!$cat_id) {
                redirect(base_url('blog'));
            }
            /******************************
            * Pagination Start
            ******************************/
            $config["base_url"]         = base_url('blog/'.$slug2);
            $config["total_rows"]       = $this->db->get_where('web_news', array('cat_id'=>$cat_id))->num_rows();
            $config["per_page"]         = 6;
            $config["uri_segment"]      = 3;
            $config["last_link"]        = "Last"; 
            $config["first_link"]       = "First"; 
            $config['next_link']        = '&#8702;';
            $config['prev_link']        = '&#8701;';  
            $config['full_tag_open']    = "<ul class='pagination'>";
            $config['full_tag_close']   = "</ul>";
            $config['num_tag_open']     = '<li>';
            $config['num_tag_close']    = '</li>';
            $config['cur_tag_open']     = "<li class='disabled'><li class='active'><a href='#'>";
            $config['cur_tag_close']    = "<span class='sr-only'></span></a></li>";
            $config['next_tag_open']    = "<li>";
            $config['next_tag_close']   = "</li>";
            $config['prev_tag_open']    = "<li>";
            $config['prev_tagl_close']  = "</li>";
            $config['first_tag_open']   = "<li>";
            $config['first_tagl_close'] = "</li>";
            $config['last_tag_open']    = "<li>";
            $config['last_tagl_close']  = "</li>";
            /* ends of bootstrap */
            $this->pagination->initialize($config);
            $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
            $data['blog']               = $this->db->select("*")
                                            ->from('web_news')
                                            ->where('cat_id', $cat_id)
                                            ->order_by('article_id', 'desc')
                                            ->limit($config["per_page"], $page)
                                            ->get()
                                            ->result();
            $data["links"]              = $this->pagination->create_links();
            /******************************
            * Pagination ends
            ******************************/

            $data['advertisement']      = $this->web_model->advertisement($where_add);
            @$data['blogcat']            = $this->web_model->blogCatListBySlug('blog');
            $data['cat_info']           = $this->web_model->cat_info($slug1);
            $data['content']            = $this->load->view("website/sidebar", $data, true);


            $this->load->view('website/header', $data);     
            $this->load->view('website/blog', $data);
            $this->load->view('website/footer', $data);

        }
        elseif ($slug3=="" || $slug3==NULL || is_numeric($slug3)) {

            @$where_add  = $this->web_model->catidBySlug('blog')->cat_id;

            //Slug Category blog with Pagination
            $cat_id     = $this->web_model->catidBySlug($slug2)->cat_id;
            if (!$cat_id) {
                redirect(base_url('blog'));
            }
            /******************************
            * Pagination Start
            ******************************/
            $config["base_url"]         = base_url('blog');
            $config["total_rows"]       = $this->db->get_where('web_news', array('cat_id'=>$cat_id))->num_rows();
            $config["per_page"]         = 6;
            $config["uri_segment"]      = 2;
            $config["last_link"]        = "Last"; 
            $config["first_link"]       = "First"; 
            $config['next_link']        = '&#8702;';
            $config['prev_link']        = '&#8701;';  
            $config['full_tag_open']    = "<ul class='pagination'>";
            $config['full_tag_close']   = "</ul>";
            $config['num_tag_open']     = '<li>';
            $config['num_tag_close']    = '</li>';
            $config['cur_tag_open']     = "<li class='disabled'><li class='active'><a href='#'>";
            $config['cur_tag_close']    = "<span class='sr-only'></span></a></li>";
            $config['next_tag_open']    = "<li>";
            $config['next_tag_close']   = "</li>";
            $config['prev_tag_open']    = "<li>";
            $config['prev_tagl_close']  = "</li>";
            $config['first_tag_open']   = "<li>";
            $config['first_tagl_close'] = "</li>";
            $config['last_tag_open']    = "<li>";
            $config['last_tagl_close']  = "</li>";
            /* ends of bootstrap */
            $this->pagination->initialize($config);
            $page = ($this->uri->segment(2)) ? $this->uri->segment(2) : 0;
            $data['blog']           = $this->db->select("*")
                                        ->from('web_news')
                                        ->where('cat_id', $cat_id)
                                        ->order_by('article_id', 'desc')
                                        ->limit($config["per_page"], $page)
                                        ->get()
                                        ->result();
            $data["links"]          = $this->pagination->create_links();
            /******************************
            * Pagination ends
            ******************************/
            
            $data['advertisement']  = $this->web_model->advertisement($where_add);
            @$data['blogcat']        = $this->web_model->blogCatListBySlug('blog');
            $data['cat_info']       = $this->web_model->cat_info($slug1);
            $data['content']        = $this->load->view("website/sidebar", $data, true);


            $this->load->view('website/header', $data);     
            $this->load->view('website/blog', $data);
            $this->load->view('website/footer', $data);

        }
        elseif ($slug3!="" || !is_numeric($slug3)) {
            //Slug Category blog detail

            $where_add = $this->web_model->catidBySlug('blog')->cat_id;

            $data['advertisement']  = $this->web_model->advertisement($where_add);
            @$data['blogcat']       = $this->web_model->blogCatListBySlug('blog');
            $data['article']        = $this->web_model->article($slug1);
            $data['cat_info']       = $this->web_model->cat_info($slug1);
            $data['blog']           = $this->web_model->blogDetails($slug3);
            $data['content']        = $this->load->view("website/sidebar", $data, true);


            $this->load->view('website/header', $data);     
            $this->load->view('website/blogdetails', $data);
            $this->load->view('website/footer', $data);
            
        }
        
    }


    public function register()
    {
        $data['title'] = "Register";

        if ($this->session->userdata('isLogIn'))
            redirect(base_url());


        //Load Cookie For Store Referral ID
        $this->load->helper(array('cookie', 'url'));
        $ref=$this->input->get('ref'); 

        if (isset($ref) && ($ref!="")) {
            $user_id = $this->db->select('user_id')->where('user_id', $ref)->get('dbt_user')->row();
            if($user_id){
                set_cookie('referral_id', $ref, 86400*30);

            }
            else{
                $this->session->set_flashdata('exception', "Referral ID is invalid");
                redirect("register");

            }
        }               


        //Load Helper For [user_id] Generate
        $this->load->helper('string');

        //Set Rules From validation
        $this->form_validation->set_rules('rf_name', display('firstname'),'required|max_length[50]|trim');
        $this->form_validation->set_rules('remail', display('email'),"required|valid_email|max_length[100]|trim");
        $this->form_validation->set_rules('rusername', display('username'),"required|is_unique[dbt_user.username]|max_length[100]|trim");
        $this->form_validation->set_rules('rpass', display('password'),'required|min_length[8]|matches[rr_pass]|trim');
        $this->form_validation->set_rules('rr_pass','Confirm Password','trim');
        $this->form_validation->set_rules('raccept_terms', display('accept_terms_privacy'),'required|trim');

        //From Validation Check
        if ($this->form_validation->run()) {

            if (!$this->input->valid_ip($this->input->ip_address())){
                $this->session->set_flashdata('exception',  "Invalid IP address");
                redirect("register");
            }

            //Generate User Id
            $userid = strtoupper(random_string('alnum', 6));

            while ( $this->web_model->checkUseridExist($userid) ) {
                $userid = strtoupper(random_string('alnum', 6));

            }

            if ($this->web_model->checkEmailExist($this->input->post('remail'))) {

                if ($this->web_model->accountStatusCheck($this->input->post('remail')) == 0) {
                    $this->session->set_flashdata('exception',  "Please activate your account");
                    redirect("login");

                }
                elseif ($this->web_model->accountStatusCheck($this->input->post('remail')) == 1) {
                    $this->session->set_flashdata('exception',  "Already regsister!!!");
                    redirect("login");

                } 
                elseif ($this->web_model->accountStatusCheck($this->input->post('remail')) == 2) {
                    $this->session->set_flashdata('exception',  "This account is now pending");
                    redirect("login");

                }  
                elseif ($this->web_model->accountStatusCheck($this->input->post('remail')) == 2) {
                    $this->session->set_flashdata('exception',  "This account is suspend");
                    redirect("register");

                }               

            }

            $dlanguage = $this->db->select('language')->get('setting')->row();

            $data = [
                'first_name'    => $this->input->post('rf_name'),
                'referral_id'   => $this->input->cookie('referral_id'), 
                'language'      => $dlanguage->language,
                'user_id'       => $userid,
                'email'         => $this->input->post('remail'),
                'password'      => md5($this->input->post('rpass')),
                'password_reset_token' => md5($userid),
                'status'        => 0,
                'ip'            => $this->input->ip_address()
            ];

            if($this->web_model->registerUser($data)){
                $appSetting = $this->common_model->get_setting();

                $data['title']      = $appSetting->title;
                $data['to']         = $this->input->post('remail');
                $data['subject']    = 'Account Activation';
                $data['message']    = "<br><b>Your account was created successfully, Please click on the link below to activate your account. </b><br> <a target='_blank' href='".base_url('home/activate_account/').md5($userid)."'>".base_url('home/activate_account/').md5($userid)."</a>";
                $this->common_model->send_email($data);

                $this->session->set_flashdata('message', display('account_create_active_link'));
                redirect("login");
            }

        }

        $this->load->view('website/header', $data);     
        $this->load->view('website/login', $data);
        $this->load->view('website/footer', $data);
        
    }

    public function login()
    {

        if ($this->session->userdata('isLogIn'))
            redirect(base_url());

             
        $data['title']      = $this->uri->segment(1);

        $email      = $this->input->post('luseremail');
        $password   = $this->input->post('lpassword');
        $passwordmd5   = md5($password);

        //Set Rules From validation
        $this->form_validation->set_rules('luseremail', display('email'), 'required|max_length[100]|trim');
        $this->form_validation->set_rules('lpassword', display('password'), 'required|max_length[32]|md5|trim');
        
        //From Validation Check
        if ($this->form_validation->run())
        {
            $date = new DateTime();
            $access_time = $date->format('Y-m-d H:i:s');

            $data['user'] = (object)$userData = array(
                'email'      => $email,
                'password'   => $passwordmd5
            );

            if ($this->web_model->checkEmailExist($email)) {

                $user_status = $this->web_model->accountStatusCheck($email);

                if ($user_status == 0) {
                    $this->session->set_flashdata('exception',  "Please activate your account");
                    redirect("login");

                }
                elseif ($user_status == 2) {
                    $this->session->set_flashdata('exception',  "This account is now pending");
                    redirect("login");

                }  
                elseif ($user_status == 3) {
                    $this->session->set_flashdata('exception',  "This account is suspend");
                    redirect("login");

                }
                elseif ($user_status == 1) {

                    $user = $this->web_model->loginCheckUser($userData);

                    if($user) {

                        $query = $this->db->select('googleauth')->from('dbt_user')->where('user_id',  $user->user_id)->get()->row();

                        if ($query->googleauth!='') {

                            $user_agent = array(
                                'device'     => $this->agent->browser(),
                                'browser'    => $this->agent->browser().' V-'.$this->agent->version(),
                                'platform'   => $this->agent->platform()
                            );
                            

                            $sData = array(
                                'id'          => $user->id,
                                'user_id'     => $user->user_id,
                                'fullname'    => $user->first_name.' '.$user->last_name,
                                'email'       => $user->email
                            );
                            $logData = array(
                                'log_type'     => 'login',
                                'access_time'  => $access_time,
                                'user_agent'   => json_encode($user_agent),
                                'user_id'      => $user->user_id,
                                'ip'           => $this->input->ip_address()
                            );

                            $this->session->set_userdata('userdata', $sData);
                            $this->session->set_userdata('userlogdata', $logData);
                            redirect(base_url('home/login_verify'));                               

                        }else{

                            $user_agent = array(
                                'device'     => $this->agent->browser(),
                                'browser'    => $this->agent->browser().' V-'.$this->agent->version(),
                                'platform'   => $this->agent->platform()
                            );
                            

                            $sData = array(
                                'isLogIn'     => true,
                                'id'          => $user->id,
                                'user_id'     => $user->user_id,
                                'fullname'    => $user->first_name.' '.$user->last_name,
                                'email'       => $user->email
                            );
                            $logData = array(
                                'log_type'     => 'login',
                                'access_time'  => $access_time,
                                'user_agent'   => json_encode($user_agent),
                                'user_id'      => $user->user_id,
                                'ip'           => $this->input->ip_address()
                            );

                            //Store data to session, log & Login
                            $this->session->set_userdata($sData);
                            $this->web_model->storeUserLogData($logData);
                            redirect(base_url());
                        }                            

                    }
                    else{
                        $this->session->set_flashdata('exception', display('incorrect_email_password'));
                        redirect(base_url('login'));

                    }
                }
                else{
                    $this->session->set_flashdata('exception', "Something wrong !!!");
                    redirect(base_url('login'));

                }

            }
            
        }


        $this->load->view('website/header', $data);     
        $this->load->view('website/login', $data);
        $this->load->view('website/footer', $data);

    }

    public function email_check($email, $user_id)
    {

        $emailExists = $this->db->select('*')
            ->where('email', $email) 
            ->where_not_in('user_id',$user_id) 
            ->get('dbt_user')
            ->num_rows();

        if ($emailExists > 0) {
            $this->form_validation->set_message('email', 'The {field} is already registered.');
            return false;

        } else {
            return true;

        }
    }


    public function edit_profile()
    {

        if (!$this->session->userdata('isLogIn'))
            redirect(base_url());

             
        $data['title']      = $this->uri->segment(1);


        $user_id = $this->session->userdata('user_id');

        $this->form_validation->set_rules('first_name', 'First Name','required|max_length[50]');
        $this->form_validation->set_rules('email', 'Email Address', "required|valid_email|max_length[100]|callback_email_check[$user_id]");
        $this->form_validation->set_rules('phone', 'Phone', "max_length[100]|is_unique[dbt_user.phone]");
        $this->form_validation->set_rules('password', 'Password','required|max_length[32]');

        if ($this->form_validation->run()) {

            $user   = $this->web_model->retriveUserInfo();

            if ($user->password != md5($this->input->post('password'))) {
                $this->session->set_flashdata('exception',  "password missmatch");
                redirect("home/edit_profile");
            }
            //set config 
            $config = [
                'upload_path'      => './upload/user/',
                'allowed_types'    => 'gif|jpg|png|jpeg', 
                'overwrite'        => false,
                'maintain_ratio'   => true,
                'encrypt_name'     => true,
                'remove_spaces'    => true,
                'file_ext_tolower' => true 
            ]; 
            $this->load->library('upload', $config);
     
            if ($this->upload->do_upload('image')) {  
                $data = $this->upload->data();  
                $image = $config['upload_path'].$data['file_name']; 

                $config['image_library']  = 'gd2';
                $config['source_image']   = $image;
                $config['create_thumb']   = false;
                $config['encrypt_name'] = TRUE;
                $config['width']          = 115;
                $config['height']         = 90;
                $this->load->library('image_lib', $config);
                $this->image_lib->resize();
                $this->session->set_flashdata('message', display("image_upload_successfully"));
            }
            /*-----------------------------------*/
            $data['user'] = (object)$userData = array(
                'user_id'   => $user_id,
                'first_name'   => $this->input->post('first_name'),
                'last_name'    => $this->input->post('last_name'),
                'email'       => $this->input->post('email'),
                'phone'       => $this->input->post('phone'),
                //'password'    => md5($this->input->post('password')),
                'bio'       => $this->input->post('bio',true),
                'image'       => (!empty($image)?$image:$this->input->post('old_image')) 
            );

            if (empty($userData['image'])) {
                $this->session->set_flashdata('exception', $this->upload->display_errors()); 

            }

            if ($this->web_model->updateUser($userData)) 
            {
                $this->session->set_userdata(array(
                    'fullname'   => $this->input->post('first_name'). ' ' .$this->input->post('last_name'),
                    'email'       => $this->input->post('email'),
                    'image'       => (!empty($image)?$image:$this->input->post('old_image'))
                ));
                $this->session->set_flashdata('message', display('update_successfully'));


            } else {
                $this->session->set_flashdata('exception',  display('please_try_again'));

            }
            redirect("home/edit_profile");

        }

        
        $data['user']   = $this->web_model->retriveUserInfo();

        $this->load->view('website/header', $data);     
        $this->load->view('website/edit_profile', $data);
        $this->load->view('website/footer', $data);

    }



    public function change_password(){

        $data['title'] = "Password Change";

        $this->form_validation->set_rules('old_pass', display('enter_old_password'), 'required');
        $this->form_validation->set_rules('new_pass', display('enter_new_password'), 'required|max_length[32]|matches[confirm_pass]|trim');
        $this->form_validation->set_rules('confirm_pass', display('enter_confirm_password'), 'required|max_length[32]|trim');
        
        if ( $this->form_validation->run())
        {
            $oldpass = MD5($this->input->post('old_pass'));

            $new_pass['password'] = MD5($this->input->post('new_pass'));

            $query = $this->db->select('password')
            ->from('dbt_user')
            ->where('user_id',$this->session->userdata('user_id'))
            ->where('password',$oldpass)
            ->get()
            ->num_rows();

            if($query > 0) {

                $this->db->where('user_id',$this->session->userdata('user_id'))
                ->update('dbt_user',$new_pass);

                $this->session->set_flashdata('message', display('password_change_successfull'));
                redirect('home/change_password');

            } else {
                $this->session->set_flashdata('exception',display('old_password_is_wrong'));
                redirect('home/change_password');
            }

        }


        $this->load->view('website/header', $data);     
        $this->load->view('website/change_password', $data);
        $this->load->view('website/footer', $data);

    }

    public function login_verify()
    {

        if ($this->session->userdata('isLogIn'))
            redirect(base_url());

         $data['title']      = $this->uri->segment(1);

        $userdata = $this->session->userdata('userdata');
        $userlogdata = $this->session->userdata('userlogdata');

        // 2 factor authentication codes.
        $this->load->library('GoogleAuthenticator'); 

        $query = $this->db->select('googleauth')->from('dbt_user')->where('user_id',  $userdata['user_id'])->get()->row();

        $ga = new GoogleAuthenticator();
        $secret = $query->googleauth;
        $qrCodeUrl = $ga->getQRCodeGoogleUrl('TradeBox', $secret);
        $data['qrCodeUrl'] = $qrCodeUrl;

        //Set Rules From validation
        $this->form_validation->set_rules('token', 'token', 'required|max_length[6]|trim');
        
        //From Validation Check
        if ($this->form_validation->run())
        {
            $oneCode = $this->input->post('token');
            // $oneCode = $ga->getCode($secret);
            //echo "Checking Code '$oneCode' and Secret '$secret':\n";


            $checkResult = $ga->verifyCode($secret, $oneCode, 2);    // 2 = 2*30sec clock tolerance
            if ($checkResult) {
                $user_agent = array(
                    'device'     => $this->agent->browser(),
                    'browser'    => $this->agent->browser().' V-'.$this->agent->version(),
                    'platform'   => $this->agent->platform()
                );
                

                $sData = array(
                    'isLogIn'     => true,
                    'id'          => $userdata['id'],
                    'user_id'     => $userdata['user_id'],
                    'fullname'    => $userdata['fullname'],
                    'email'       => $userdata['email']
                );
                $logData = array(
                    'log_type'     => 'login',
                    'access_time'  => $userlogdata['access_time'],
                    'user_agent'   => json_encode($user_agent),
                    'user_id'      => $userlogdata['user_id'],
                    'ip'           => $userlogdata['ip']
                );

                //Unset session, log & Login
                $this->session->unset_userdata('userdata');
                $this->session->unset_userdata('userlogdata');

                //Store data to session, log & Login
                $this->session->set_userdata($sData);
                $this->web_model->storeUserLogData($logData);
                redirect(base_url());


            } else {

                $this->session->set_flashdata('exception', "Invalid Authentication Code");

            }
            
        }


        $this->load->view('website/header', $data);     
        $this->load->view('website/gauthlogin', $data);
        $this->load->view('website/footer', $data);

    }

    public function forgotPassword()
    {

        //Set Rules From validation
        $this->form_validation->set_rules('luseremail', display('email'),'required');

        //From Validation Check
        if ($this->form_validation->run()) {
            $userdata = array(
                'email'       => $this->input->post('luseremail'),
            );

            $varify_code = $this->randomID();

            /******************************
            *  Email Verify
            ******************************/
            $appSetting = $this->common_model->get_setting();

            $post = array(
                'title'             => $appSetting->title,
                'subject'           => 'Password Reset Verification!',
                'to'                => $this->input->post('luseremail'),
                'message'           => 'The Verification Code is <h1>'.$varify_code.'</h1>'
            );

            //Send Mail Password Reset Verification
            $send = $this->common_model->send_email($post);
            
            if(isset($send)){

                $varify_data = array(

                    'ip_address'    => $this->input->ip_address(),
                    'user_id'       => $this->session->userdata('user_id'),
                    'session_id'    => $this->session->userdata('isLogIn'),
                    'verify_code'   => $varify_code,
                    'data'          => json_encode($userdata)
                );

                $this->db->insert('dbt_verify',$varify_data);
                $id = $this->db->insert_id();

                $this->session->set_flashdata('message', "Password reset code send.Check your email.");
                redirect("resetPassword");

            }
        }else{
            $this->session->set_flashdata('exception',display('email')." Required");
            redirect('login');

        }

    }

    public function resetPassword()
    {

        // @$cat_id = $this->web_model->catidBySlug('forgot-password');     

        $data['title'] = $this->uri->segment(1);   
        // $data['article']  = $this->web_model->article($cat_id->cat_id);
        // $data['cat_info'] = $this->web_model->cat_info('forgot-password');

        $code = $this->input->post('verificationcode');
        $newpassword = $this->input->post('newpassword');
        
        $chkdata = $this->db->select('*')
        ->from('dbt_verify')
        ->where('verify_code',$code)
        ->where('status', 1)
        ->get()
        ->row();

        //Set Rules From validation
        $this->form_validation->set_rules('verificationcode', display('enter_verify_code'),'required');
        $this->form_validation->set_rules('newpassword', display('password'),'required|trim|min_length[8]|max_length[32]|matches[r_pass]');
        $this->form_validation->set_rules('r_pass', display('password'),'trim');

        //From Validation Check
        if ($this->form_validation->run()) {
            if($chkdata!=NULL) {
                $p_data = ((array) json_decode($chkdata->data));
                $password   = array('password' => md5($newpassword));
                $status     = array('status'   => 0);

                $this->db->where('verify_code',$code)
                ->update('dbt_verify', $status);

                $this->db->where('email',$p_data['email'])
                ->update('dbt_user', $password);

                $this->session->set_flashdata('message',display('update_successfully'));
                redirect('login');

            }else{
                $this->session->set_flashdata('exception',display('wrong_try_activation'));
                redirect('resetPassword');
            }

        }else{
            $this->load->view('website/header', $data);     
            $this->load->view('website/passwordreset', $data);
            $this->load->view('website/footer', $data);
        }

    }

    public function googleauth()
    {

        if (!$this->session->userdata('isLogIn'))
            redirect(base_url());

        $data['title']      = $this->uri->segment(1);


        // 2 factor authentication codes.
        $this->load->library('GoogleAuthenticator');

        $ga = new GoogleAuthenticator();


        $query = $this->db->select('googleauth')->from('dbt_user')->where('user_id', $this->session->userdata('user_id'))->get()->row();

        if ($query->googleauth!='') {
            $secret = $query->googleauth;
            $data['btnenable'] = 0;

        }else{
            $secret = $ga->createSecret();
            $data['btnenable'] = 1;

        }
        
        $data['secret'] = $secret;

        $qrCodeUrl = $ga->getQRCodeGoogleUrl('TradeBox', $secret);
        //echo "Google Charts URL for the QR-Code: ".$qrCodeUrl."\n\n";
        $data['qrCodeUrl'] = $qrCodeUrl;


        //Set Rules From validation
        $this->form_validation->set_rules('token', "token", 'required|max_length[6]|trim');
        $this->form_validation->set_rules('secret', "secret", 'required|max_length[16]|trim');
        
        //From Validation Check
        if ($this->form_validation->run())
        {

            if (isset($_POST['disable'])) {
                $oneCode = $this->input->post('token');
                $secret = $query->googleauth;
                $checkResult = $ga->verifyCode($secret, $oneCode, 2);    // 2 = 2*30sec clock tolerance

                if ($checkResult) {
                    $secret = NULL;
                    $this->db->set('googleauth', $secret)->where('user_id', $this->session->userdata('user_id'))->update("dbt_user");
                    $this->session->set_flashdata('message', "Google Authenticator Disabled");
                    redirect("profile");

                } else {

                    $this->session->set_flashdata('exception', "Invalid Authentication Code");

                }
            }

            if (isset($_POST['enable'])) {
                $oneCode = $this->input->post('token');
                $secret = $this->input->post('secret');
                $checkResult = $ga->verifyCode($secret, $oneCode, 2);    // 2 = 2*30sec clock tolerance

                if ($checkResult) {
                    $this->db->set('googleauth', $secret)->where('user_id', $this->session->userdata('user_id'))->update("dbt_user");
                    $this->session->set_flashdata('message', "Google Authenticator Enabled");
                    redirect("profile");

                } else {

                    $this->session->set_flashdata('exception', "Invalid Authentication Code");

                }
            }
            
        }


        $this->load->view('website/header', $data);     
        $this->load->view('website/googleauthenticator', $data);
        $this->load->view('website/footer', $data);

    }

    public function activate_account($activecode=NULL){

        
        if ($activecode !=NULL || $activecode != '') {
            
           $user = $this->web_model->passwordtokenCheck($activecode);

            if ($user->status == 1){
                $this->session->set_flashdata('message', "This account already activated");
                redirect("login");

            }elseif ($user->status == 2) {
               $this->session->set_flashdata('message', "This account is now pending");
                redirect("login");

            }elseif ($user->status == 3) {
                $this->session->set_flashdata('exception',  "This account is suspend");
                redirect("login");

            }elseif ($user->status == 0) {
                $this->web_model->activeUserAccount($activecode);
                $this->session->set_flashdata('message', display('active_account'));
                redirect("login");
            }
            else{
                $this->session->set_flashdata('exception', "Something wrong !!!");
                redirect(base_url('login'));

            }

        }
        else{
            $this->session->set_flashdata('exception', display('wrong_try_activation'));
            redirect("login");

        }
        
    }


    //Ajax Subscription Action
    public function subscribe()
    {
        $data = array();
        $data['email'] =  $this->input->post('subscribe_email');

        if($this->web_model->subscribe($data)){
            $this->session->set_flashdata('message', display('save_successfully'));

        }
        else{
            $this->session->set_flashdata('exception',  display('please_try_again'));

        }
    }

    //Ajax Language Change
    public function langChange()
    {
        $newdata = array(
            'lang'  => $this->input->post('lang')
        );        

        $user_id = $this->session->userdata('user_id');
        if ($user_id!="") {
            $data['language'] = $this->input->post('lang');
            $this->db->where('user_id', $user_id);
            $this->db->update('dbt_user', $data);

        }
        else {
            $this->session->set_userdata($newdata);

        }
        
    }


    /******************************
    * Language Set For User
    ******************************/
    public function langSet(){

        $lang = "";
        $user_id = $this->session->userdata('user_id');
        if ($user_id!="") {
            $ulang = $this->db->select('language')->where('user_id', $user_id)->get('dbt_user')->row();
            if ($ulang->language!='english') {
                $lang ='french';
                $newdata = array(
                    'lang'  => 'french'
                );
                $this->session->set_userdata($newdata);

            }
            else{
                $lang ='english';
                $newdata = array(
                    'lang'  => 'french'
                );
                $this->session->set_userdata($newdata);
            }

        }
        else{
            $alang = $this->db->select('language')->get('setting')->row();
            if ($alang->language=='french') {
                $lang ='french';
                $newdata = array(
                    'lang'  => 'french'
                );
                $this->session->set_userdata($newdata);

            }else{
                if ($this->session->lang=='french') {
                    $lang ='french';

                }
                else{
                    $lang ='english';
                }

            }

        }

        return $lang;
        
    }

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


}