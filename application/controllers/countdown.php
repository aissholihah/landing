<?php
// file dashboard admin
defined('BASEPATH') OR exit('No direct script access allowed');

class Countdown extends CI_Controller {

	
	public function __construct()
     {
          parent::__construct();
          //$this->load->model('M_p_arsip_tekstual');
          $this->simple_login_admin->cek_login();
          

     }


     public function index()
	{
		$this->load->view('v_countdown');
	}

	public function time()
	{
		$tanggal_start =$this->input->post('start');
		$waktu_start = $this->input->post('waktu_start');
		$s = strtotime("$waktu_start $tanggal_start");
		$start =array('waktu'=>date('Y:m:d H:i:s', $s));
		$result = $this->M_countdown->time($start);
		if($result == true)
			{
			redirect(site_url('countdown/lihat_countdown'));
			}
			else{
			redirect(site_url());
			}
	}


	public function lihat_countdown()
	{
		$result['timer'] = $this->M_countdown->select_time();
		$this->load->view('v_timer', $result);
	}


}//end class

	














