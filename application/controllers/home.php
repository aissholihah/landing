<?php
// file dashboard admin
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

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
	public function index()
	{
		//load modelnya dulu
        $this->load->model('M_home');
        $this->data['berita'] 					=  $this->M_home->tampil_data('berita');
        $this->data['artikel'] 					=  $this->M_home->tampil_data('artikel');
        // nggataulah ini bener engga
        //$this->data['carousel'] 					=  $this->M_home->carousel();
        $this->data['album']					= $this->M_home->splide();
        //$this->data['event']					= $this->M_home->tampil_event();
        $this->data['event'] 					= $this->M_home->tampil_event();


        //$this->data['total_artikel'] 			=  $this->M_home->total_rows_artikel();
        //$this->data['total_album'] 			=  $this->M_dashboard->total_rows_album();
        //$this->data['total_arsip'] 			=  $this->M_dashboard->total_rows_arsip();
        //$this->data['total_regulasi'] 		=  $this->M_dashboard->total_rows_regulasi();





        
 
        //load viewnya
        // $this->load->view('dashboard',$this->data);


		//$this->load->view('templates/header');
		//$this->load->view('templates/sidebar');
		$this->load->view('home',$this->data);
		// $this->load->view('pberita', $this->data);


		//$this->load->view('templates/footer');
	}



	public function about()
	{
        //$this->data['regulasi'] 						=  $this->M_pregulasi->tampil_data('regulasi');

        $data['tentang'] = $this->M_home->tampil_data('tentang');
        // var_dump ($data['tentang']);
        //$data['tentang'] = $this->M_ptentang->tampil_data('tentang')->result();

        //$data['tentang'] = $this->M_ptentang->tampil_data()->result();	// menampilkan ke model user di method tampil_data()


		// //breadcrumb
		// $this->mybreadcrumb->add('Beranda', base_url('home'));
		// $this->mybreadcrumb->add('tentang', base_url('ptentang/index'));

		// $data['breadcrumbs'] = $this->mybreadcrumb->render();


        
 
        //load viewnya
        
		$this->load->view('pheader.php');
		$this->load->view('pabout',$data);	// nek gitu malah tampil semua datanya//awalnya 
		$this->load->view('pfooter.php');


		//$this->load->view('templates/footer');
	}

}
