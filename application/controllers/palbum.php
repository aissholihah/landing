<?php
// file dashboard admin
defined('BASEPATH') OR exit('No direct script access allowed');

class Palbum extends CI_Controller {
	

	public function index()
	{

			$idgrup=($this->uri->segment(3))? $this->uri->segment(3) :1;
			//$data['idalbum']	= ($this->uri->segment(3))? $this->uri->segment(3) :1;
			$data['album']=$this->M_palbum->get_album($idgrup);
			$data['daftar_card']=$this->M_palbum->tampil_data();
			$data['tahun'] =$this->M_palbum->get_album_tahun();
			$this->load->view('header1');
		//$this->load->view('templates/sidebar');
			$this->load->view('palbum',$data);
			$this->load->view('footer2');
		
		

	}

	public function detail()
	{

	} 





}

