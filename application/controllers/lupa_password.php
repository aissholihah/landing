<?php 
defined('BASEPATH') OR exit('no direct script access allowed'); 

class Lupa_password extends CI_Controller {
     function __construct() {
          parent::__construct();
     } 

     function index(){
         $this->load->view('lupa_password');
     }

     // function proses(){
     //      $this->load->model('M_login'); 
     //     $username = $this->input->post('username');
     //     $password = $this->input->post('password');
         
     //     if ($this->M_login->cek_login($username, $password)){
     //          echo '<h1>Hallo selamat datang admin</h1>';
     //          echo '<a href="'.site_url('loginn').'"> Kembali </a>';
     //     }else{
     //          echo '<h1>Username atau password salah</h1>';
     //          echo '<a href="'.site_url('loginn').'"> Kembali </a>';

     //     }
     // }           
}