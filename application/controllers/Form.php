<?php
Class Form extends CI_Controller {

	public function index()
	{
		$this->load->helper(array('form', 'url'));

		$this->load->library('form_validation');

		// form validation parameter (namafield di tabel, name inputan, form validation nya)
		$this->form_validation->set_rules('username', 'Username', 'required');
		$this->form_validation->set_rules('password', 'Password', 'required',
			array('required' => 'You must provide a %s.')
		);
		$this->form_validation->set_rules('passconf', 'Password Confirmation', 'required');
		$this->form_validation->set_rules('email', 'Email', 'required');

		// setting rules usung an array
		$config = array(
	array(
		'field' => 'username',
		'label' => 'Username',
		'rules' => 'required'
	),
	array(
		'field' => 'password',
		'label' => 'Password',
		'rules' => 'required',
		'errors' => array(
			'required' => 'You must provide a %s.',
		),
	),
	array(
		'field' => 'passconf',
		'label' => 'Password Confirmation',
		'rules' => 'required'
	),
	array(
		'field' => 'email',
		'label' => 'Email',
		'rules' => 'required'
	)
);

$this->form_validation->set_rules($config);





		if ($this->form_validation->run() == FALSE)
		{
			$this->load->view('2-myform');
		}
		else
		{
			$this->load->view('2-formsuccess');
		}
	}
}

?>