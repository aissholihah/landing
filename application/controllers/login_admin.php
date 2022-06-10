<?php 
// defined('BASEPATH') OR exit('no direct script access allowed'); 

class Login_admin extends CI_Controller {
//      function __construct() {
//           parent::__construct();
//      } 

     // function index(){
     //     $this->load->view('masuk');
     // }

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

    function __construct(){
       parent::__construct();
       $this->load->library('form_validation');
       $this->load->helper(array('url','form'));
       //$this->load->model('M_login_admin'); //call model
       
   }

     public function index() {
        $this->data['title'] = 'Login';
       // Fungsi Login
       $valid = $this->form_validation;
       $username = $this->input->post('username_administrator');
       $password = $this->input->post('password_administrator');
       $valid->set_rules('username_administrator','username_administrator','required');
       $valid->set_rules('password_administrator','password_administrator','required');

       if($valid->run()){ 
           $this->simple_login_admin->login($username,$password, base_url('admin'), base_url('login_admin'));
       }
    
       // End fungsi login
       $this->load->view('templates/header_auth',$this->data);
       $this->load->view('login_admin');
       $this->load->view('templates/footer_auth');
   }

   public function logout(){
       $this->simple_login_admin->logout();
       redirect(site_url('login_admin'));
       
   }  


   public function cek(){
    //$a= $this->input->post('username_administrator');
    $this->data['title'] = 'Dashboard';
    $username = $this->input->post('username_administrator');
    $password = $this->input->post('password_administrator');

    $this->simple_login_admin->login($username,$password, base_url('admin'), base_url('login_admin'));

    
    //var_dump($a);

   }                 
}// end class
