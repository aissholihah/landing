<?php
// file dashboard admin
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{
    public function __construct()
     {
          parent::__construct();
          
          $this->simple_login_admin->cek_login();
          

     }
    public function index()
    {
        $this->load->view('templates/header_auth');
        $this->load->view('auth/login');
        $this->load->view('templates/footer_auth');
    }

    public function registration()
    {
        $data['title'] = 'UPT';
        
        $this->form_validation->set_rules('username', 'username', 'required');
        $this->form_validation->set_rules('email', 'email', 'required|valid_email');
        $this->form_validation->set_rules('tgl_lahir', 'tgl_lahir', 'required');
        $this->form_validation->set_rules('alamat', 'alamat', 'required');
        $this->form_validation->set_rules('pekerjaan', 'pekerjaan', 'required');
        $this->form_validation->set_rules('institusi', 'institusi', 'required');
        $this->form_validation->set_rules('username', 'username', 'required');
        $this->form_validation->set_rules('password', 'password', 'required');
        
        if ($this->form_validation->run() == FALSE) {
            $this->load->view('auth/register', $data);
        } else {

            $data1['nama']   =    $this->input->post('nama');
            $data1['email']  =    $this->input->post('email');
            $data1['username'] =    $this->input->post('username');
            $data1['password'] =    md5($this->input->post('password'));

            $this->MAccount->daftar($data1);
            $this->load->view('akun/login');
        }
        $this->load->view('templates/header_auth', '$data');
        //$this->load->view('auth/register');
        $this->load->view('templates/footer_auth');
    }
}
