<?php 
defined('BASEPATH') OR exit('no direct script access allowed'); 

class Register extends CI_Controller {
     // function __construct() {
     //      parent::__construct();
     // } 

     // function index(){
     //     $this->load->view('register');
     // }

     //  function proses(){
     //      $this->load->model('M_login'); 
     //     $username = $this->input->post('username');
     //     $password = $this->input->post('password');
     //     $email = $this->input->post('email');
     //     $nama = $this->input->post('nama');
     //     $tgl_lahir = $this->input->post('tgl_lahir');
     //     $alamat = $this->input->post('alamat');
     //     $pekerjaan = $this->input->post('pekerjaan');
     //     $institusi = $this->input->post('institusi');
         
     //     if ($this->M_login->cek_login($username, $password)){
     //          echo '<h1>Hallo selamat datang admin</h1>';
     //          echo '<a href="'.site_url('loginn').'"> Kembali </a>';
     //     }else{
     //          echo '<h1>Username atau password salah</h1>';
     //          echo '<a href="'.site_url('loginn').'"> Kembali </a>';

     //     }
     // }// end proses()


     // public function tambah_aksi()
     // {
     //      //menangkap inputan dari form yg methodny POST
     //      $username            = $this->input->POST('username_');   // inget POST('berdasarkan name di tag input')
     //      $password         = $this->input->POST('password');
     //      $email               = $this->input->POST('email');
     //      $nama               = $this->input->POST('nama');
     //      $tgl_lahir               = $this->input->POST('tgl_lahir');
     //      $alamat               = $this->input->POST('alamat');
     //      $pekerjaan               = $this->input->POST('pekerjaan');
     //      $institusi               = $this->input->POST('institusi');

     //      // setelah data dari form ditangkap, datanya akan diubah jadi array
     //      $data = array (
     //           'username'                    =>$username,
     //           'password'                    =>$password,
     //           'email'                       =>$email,
     //           'nama'                        =>$nama,
     //           'tgl_lahir'                   =>$tgl_lahir,
     //           'alamat'                      =>$alamat,
     //           'pekerjaan'                   =>$pekerjaan,
     //           'institusi'                   =>$institusi,
     //      );

     //      // biar $data masukk ke database tb_administrator
     //      $this->M_register->input_data($data,'tb_user');
     //      redirect ('masuk/index');



     function __construct(){
       parent::__construct();
       $this->load->library(array('form_validation'));
       //$this->load->library('form_validation');
       $this->load->helper(array('url','form'));
       $this->load->model('M_register'); //call model
       
   }

   public function index() {
    $this->data['title'] = 'Register';
      // set_rules('$field','$label(terserak kita)','$rules=array()'')
      // contoh2 rules : 1. trim = agar spasi ngga diitung di db
    //2. 
     $this->form_validation->set_rules('username', 'username','required|trim|is_unique[tb_user.username]',['is_unique'=> 'Username sudah terdaftar.']);
     $this->form_validation->set_rules('password', 'password','required|trim|min_length[3]',['min_length'  => 'Password too short']);
     $this->form_validation->set_rules('email','email','required|trim|is_unique[tb_user.email]',['is_unique'=> 'Email sudah terdaftar.']);
     $this->form_validation->set_rules('nama', 'nama','required');
     $this->form_validation->set_rules('tgl_lahir', 'tgl_lahir','required');
     $this->form_validation->set_rules('alamat', 'alamat','required');
     $this->form_validation->set_rules('nama', 'nama','required');
     $this->form_validation->set_rules('pekerjaan', 'pekerjaan','required');
     $this->form_validation->set_rules('institusi', 'institusi','required');


    



       if($this->form_validation->run() == FALSE) {
          
         //$data["status"]="gagal";
          $this->load->view('register',$this->data);
       }else{

           
           $data['username'] =    $this->input->post('username');           
           $data['password'] =    md5($this->input->post('password'));
           $data['email']  =    $this->input->post('email');
           $data['nama']   =    $this->input->post('nama');
           $data['tgl_lahir']   =    $this->input->post('tgl_lahir');
           $data['alamat']   =    $this->input->post('alamat');
           $data['pekerjaan']   =    $this->input->post('pekerjaan');
           $data['institusi']   =    $this->input->post('institusi');

           $this->M_register->daftar($data);
           $this->session->set_flashdata('message','<div class="alert alert-secondary" role="alert">
            Selamat Akun anda telah Terregistrasi!
            </div>');


           //$pesan['message'] =    "Pendaftaran berhasil";
           $this->load->view('templates/header_auth',$this->data);
           $this->load->view('masuk',$this->data);
           $this->load->view('templates/footer_auth');
          //$this->load->view('account/v_success',$pesan);
       }
   }





     }// end class           
