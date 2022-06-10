<?php
// file dashboard admin
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */

	public function __construct()
     {
          parent::__construct();
          //$this->load->model('M_p_arsip_tekstual');
          $this->simple_login_admin->cek_login();
          

     }

	public function index()
	{
		$this->data['title'] = 'Dashboard';
		//load modelnya dulu
        $this->load->model('M_dashboard');
        $this->data['total_user'] 					=  $this->M_dashboard->total_rows();
        $this->data['total_artikel'] 		=  $this->M_dashboard->total_rows_artikel();
        $this->data['total_album'] 			=  $this->M_dashboard->total_rows_album();
        $this->data['total_berita'] 			=  $this->M_dashboard->total_rows_berita();
        $this->data['total_event'] 		=  $this->M_dashboard->total_rows_event();

        // chart arsip tekstual, arsip foto, arsip kearsitekturan
        $this->data['total_arsip_tekstual'] 		=  $this->M_dashboard->total_rows_arsip_tekstual();

        $this->data['total_arsip_foto'] 		=  $this->M_dashboard->total_rows_arsip_foto();
        $this->data['total_arsip_kearsitekturan'] 		=  $this->M_dashboard->total_rows_arsip_kearsitekturan();
        // chart grup foto, grup arsip foto. 
        $this->data['total_khasanah'] 		=  $this->M_dashboard->total_rows_khasanah();
        $this->data['total_event'] 		=  $this->M_dashboard->total_rows_event();
        $this->data['total_profil'] 		=  $this->M_dashboard->total_rows_profil();




        
 
        //load viewnya
        // $this->load->view('dashboard',$this->data);


		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('dashboard',$this->data);


		$this->load->view('templates/footer');
	}
}
