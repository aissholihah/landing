<?php
// file dashboard admin
defined('BASEPATH') OR exit('No direct script access allowed');

class Pregulasi extends CI_Controller {

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
	{	$this->load->model('M_pevent');
        //$this->data['regulasi'] 						=  $this->M_pregulasi->tampil_data('regulasi');

        $data['regulasi'] = $this->M_pregulasi->tampil_data('regulasi');
        // var_dump ($data['regulasi']);
        //$data['regulasi'] = $this->M_pregulasi->tampil_data('regulasi')->result();

        //$data['regulasi'] = $this->M_pregulasi->tampil_data()->result();	// menampilkan ke model user di method tampil_data()


		//breadcrumb
		$this->mybreadcrumb->add('Beranda', base_url('home'));
		$this->mybreadcrumb->add('Regulasi', base_url('pregulasi/index'));

		$data['breadcrumbs'] = $this->mybreadcrumb->render();

		$data['event'] = $this->M_pevent->tampil_event();
        
 
        //load viewnya
        
		$this->load->view('header1');
		$this->load->view('pregulasi',$data);	// nek gitu malah tampil semua datanya//awalnya 
		$this->load->view('pevent', $data);
		$this->load->view('footer2');


		//$this->load->view('templates/footer');
	}
	 public function detail()
	{
		$this->load->model('M_pregulasi');
		$this->load->model('M_pevent');
		
		$data['d_regulasi']	= $this->M_pregulasi->detail_data();

		$data['event'] = $this->M_pevent->tampil_event();	
				
		$this->load->view('header1');		
		$this->load->view('pregulasi', $data);	//  view ke artikel
		$this->load->view('pevent', $data);
		$this->load->view('footer2');
		// d'artikel adalah dari array data. 
		//
	}
}//end class
	
