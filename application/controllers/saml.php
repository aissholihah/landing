<?php

if (! defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class saml extends CI_Controller
{
    private $saml;

    public function __construct()
    {
        parent::__construct();
		//$this->load->library(array('form_validation'));
        $this->load->model('M_register');
        $this->load->library('session');
        $this->load->helper('url');

        $config = require(__DIR__.'/../config/saml.php');
        $this->saml = new OneLogin_Saml2_Auth($config);
    }

    public function login()
    {
        $this->saml->login();
    }

    public function acs()
    {
        $this->saml->processResponse();

        $errors = $this->saml->getErrors();
        if (!empty($errors)) {
            $message = 'Saml response error: ' . var_export($errors, true);
            throw new Exception($message);
        }

        // baca response dari sso, ambil email lalu insert ke database jika belum ada. setelah itu login kan user tersebut.
        $attributes = $this->saml->getAttributes();
         var_dump($attributes); exit; // cek attribute dengan var_dump

        // query user berdasarkan email
        $email = $attributes['email'][0];
        $nama = $attributes['nama'][0];
        $user = $this->M_register->getByEmail($email)->count_all_results();
        if ($user != '1') { // kalau di database belum ada buat baru
            $data = [
				'username' => '',
				'password' => '',
                'email' => $email,
                'nama' => $nama,
				'tgl_lahir' => '',
				'alamat'=>'',
				'pekerjaan'=>'',
				'institusi'=>'universitas sebelas maret'
            ];
            $user = $this->M_register->create($data);
        }

        // login kan user
        $this->session->set_userdata([
            'login' => true,
            'email' => $email,
            'nama' => $nama,
        ]);

        // redirect user setelah login
        redirect('homepage'); // login sukses lalu redirect use setelah login
    }

    public function logout()
    {
        $response = $this->input->post('SAMLResponse');
        if ($response) {
            $this->saml->processResponse();
            redirect('welcome'); // logout sukses lalu redirect user setelah logout
        }

        $this->session->sess_destroy();
        $this->saml->logout();
    }

    public function metadata()
    {
        $this->output->set_content_type('application/json');
        $config = require(__DIR__.'/../config/saml.php');
        $settings = new OneLogin_Saml2_Settings($config, true);
        echo $settings->getSPMetadata();
    }
}
?>