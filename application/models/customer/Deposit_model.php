<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Deposit_model extends CI_Model {


	public function save_deposit($data)
	{
		$this->db->insert('dbt_deposit',$data);
		return array('id'=>$this->db->insert_id());
	}
	public function read($limit, $offset)
	{
		return $this->db->select("*")
			->from('dbt_deposit')
			->where('user_id',$this->session->userdata('user_id'))
			->limit($limit, $offset)
			->get()
			->result();
	}	
	public function all_deposit()
	{
		return $this->db->select('*')
		->from('dbt_deposit')
		->where('user_id',$this->session->userdata('user_id'))
		->get()
		->result();
	}	
	public function balance($user_id)
	{
		return $this->db->select('SUM(amount) AS amount')
		->from('dbt_deposit')
		->where('user_id',$user_id)
		->get()
		->row();
	}

	public function save_transections($data)
	{
		$this->db->insert('transections',$data);
	}


}
 