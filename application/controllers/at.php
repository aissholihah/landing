<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class At extends CI_Controller {

	function __construct()
    {
        parent::__construct();
        $this->load->model('M_at');
    }

	public function index()
	{
		$this->load->view('tes/at');
		

	}

	
}
