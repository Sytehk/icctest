<?php defined('BASEPATH') OR exit('No direct script access allowed');

class common_model extends CI_Model {

	//Send email via SMTP server in CodeIgniter
	public function send_email($post=array()){

		//Load email library
		$this->load->library('email');

		$email = $this->db->select('*')->from('email_sms_gateway')->where('es_id', 2)->get()->row();

		//SMTP & mail configuration
		$config = array(
		    'protocol'  => $email->protocol,
		    'smtp_host' => $email->host,
		    'smtp_port' => $email->port,
		    'smtp_user' => $email->user,
		    'smtp_pass' => $email->password,
		    'mailtype'  => $email->mailtype,
		    'charset'   => $email->charset,
		    'newline'   => "\r\n"
		);
		$this->email->initialize($config);
		//$this->email->set_mailtype("html");
		//$this->email->set_newline("\r\n");

		//Email content
		$htmlContent = $post['message'];

		$this->email->to($post['to']);
		$this->email->from($email->user, $post['title']);
		$this->email->subject($post['subject']);
		$this->email->message($htmlContent);

		
		//Send email
		if($this->email->send()){
			return 1;

		} else{
			return 0;

		}
		
	}


	public function email_sms($method)
	{
        
	   return $this->db->select('*')
       ->from('sms_email_send_setup')
       ->where('method',$method)
       ->get()
       ->row();

	}


	public function get_setting(){
		return $settings = $this->db->select("email,phone,time_zone,title")
    		->get('setting')
    		->row();
	}

	public function getFees($table,$id)
	{
		return $this->db->select('*')
		->from($table)
		->where($table.'_id',$id)
		->get()
		->row();
	}


	public function payment_gateway()
	{
		return $this->db->select('*')
		->from('payment_gateway')
		->where('status', 1)
		->get()
		->result();
	}

	public function payment_gateway_common()
	{
		$coininfo 	= $this->get_coin_info();
		$p 			= $coininfo->pair_with;
		$identity 	= "";

		if($p=="USD"){
			$identity 	= array('payeer','paypal','stripe','phone','bank');
		}
		else if($p=="BTC"){
			$identity = array('payeer','bitcoin','coinpayment');
		}
		else if($p=="BCH"||$p=="LTC"||$p=="DASH"||$p=="DOGE"||$p=="POT"||$p=="VTC"||$p=="PPC"||$p=="MUE"||$p=="UNIT"){
			$identity = array('bitcoin','coinpayment');
		}
		else if($p=="BSV"||$p=="SPD"||$p=="RDD"||$p=="FTC"){
			$identity = array('bitcoin');
		}
		else{
			$identity = array('phone','bank','coinpayment');
		}

		return $this->db->select('*')
			->from('payment_gateway')
			->where_in('identity',$identity)
			->where('status', 1)
			->get()
			->result();
	}

	public function get_coin_info()
	{
		return $this->db->select('*')
		->from('coin_setup')
		->get()
		->row();
	}


}