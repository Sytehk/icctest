<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Ajax_cmd extends CI_Controller 
{
    public function __construct()
    {
        parent::__construct(); 

        $this->load->model(array(
            'website/web_model',
            'common_model',

        ));

        $this->load->library('payment');
        date_default_timezone_set('Asia/Dhaka');


        $globdata['social_link'] = $this->web_model->socialLink();
        $globdata['category']    = $this->web_model->categoryList();

        $this->load->vars($globdata);

    }



     //Ajax Contact Message Action
    public function contactMsg()
    {
        $appSetting = $this->common_model->get_setting();
        
        $data['fromName']       = $this->input->post('first_name')." ".$this->input->post('last_name');
        $data['from']           = $this->input->post('email');
        $data['to']             = $appSetting->email;
        $data['subject']        = 'Leave us a message';
        $data['htmlmessage']    = "<b>Phone: </b>".$this->input->post('phone')."<br><b>Company: </b>".$this->input->post('company')."<br><b>Message: </b>".$this->input->post('comment');
        $this->common_model->send_email($data);

    }


}