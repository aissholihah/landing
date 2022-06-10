<?php
// file dashboard admin
defined('BASEPATH') OR exit('No direct script access allowed');

class Pevent extends CI_Controller {

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
        $this->load->model('M_pevent');
        $this->data['event'] 					= $this->M_pevent->tampil_event();


        // var_dump(data['event']);
		//$this->load->view('templates/header');
		//$this->load->view('templates/sidebar');
		$this->load->view('pevent',$this->data);
		// $this->load->view('pberita', $this->data);


		//$this->load->view('templates/footer');
	}
}