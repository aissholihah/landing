<?php 
defined('BASEPATH') OR exit('no direct script access allowed'); 

class Register_admin extends CI_Controller {
     // function __construct() {
     //      parent::__construct();
     // } 

     // function index(){
     //     $this->load->view('register');
     // }

     //  function proses(){
     //      $this->load->model('M_login'); 
     //     $username_administrator = $this->input->post('username_administrator');
     //     $password_administrator = $this->input->post('password_administrator');
     //     $email_administrator = $this->input->post('email_administrator');
     //     $nama = $this->input->post('nama');
     //     $tgl_lahir = $this->input->post('tgl_lahir');
     //     $alamat = $this->input->post('alamat');
     //     $pekerjaan = $this->input->post('pekerjaan');
     //     $institusi = $this->input->post('institusi');
         
     //     if ($this->M_login->cek_login($username_administrator, $password_administrator)){
     //          echo '<h1>Hallo selamat datang admin</h1>';
     //          echo '<a href="'.site_url('loginn').'"> Kembali </a>';
     //     }else{
     //          echo '<h1>username_administrator atau password_administrator salah</h1>';
     //          echo '<a href="'.site_url('loginn').'"> Kembali </a>';

     //     }
     // }// end proses()


     // public function tambah_aksi()
     // {
     //      //menangkap inputan dari form yg methodny POST
     //      $username_administrator            = $this->input->POST('username_administrator_');   // inget POST('berdasarkan name di tag input')
     //      $password_administrator         = $this->input->POST('password_administrator');
     //      $email_administrator               = $this->input->POST('email_administrator');
     //      $nama               = $this->input->POST('nama');
     //      $tgl_lahir               = $this->input->POST('tgl_lahir');
     //      $alamat               = $this->input->POST('alamat');
     //      $pekerjaan               = $this->input->POST('pekerjaan');
     //      $institusi               = $this->input->POST('institusi');

     //      // setelah data dari form ditangkap, datanya akan diubah jadi array
     //      $data = array (
     //           'username_administrator'                    =>$username_administrator,
     //           'password_administrator'                    =>$password_administrator,
     //           'email_administrator'                       =>$email_administrator,
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
       $this->load->library('form_validation');
       $this->load->helper(array('url','form'));
       $this->load->model('M_register_admin'); //call model
       
   }

   public function index() {

    $this->data['title'] = 'Register';
    

     $this->form_validation->set_rules('username_administrator', 'Username_administrator','required|trim|is_unique[tb_administrator.username_administrator]');
     $this->form_validation->set_rules('password_administrator', 'Password_administrator','required|trim|is_unique[tb_administrator.email_administrator]');
     $this->form_validation->set_rules('email_administrator','Email_administrator','required|valid_email|is_unique[tb_administrator.email_administrator]',['is_unique'=> 'Email sudah terdaftar.']);
     $this->form_validation->set_rules('nama_lengkap', 'Nama_lengkap','required');
     
     
       if($this->form_validation->run() == FALSE) {

           $this->load->view('register_admin',$this->data);
       }else{


          $a=$this->input->post('username_administrator'); 
          var_dump($a);

           
           $data['username_administrator'] =    $this->input->post('username_administrator');           
           $data['password_administrator'] =    md5($this->input->post('password_administrator'));
           $data['email_administrator']  =    $this->input->post('email_administrator');
           $data['nama_lengkap']        =    $this->input->post('nama_lengkap');
           

           $this->M_register_admin->daftar($data);

           $pesan['message'] =    "Pendaftaran berhasil";
           $this->load->view('templates/header_auth',$this->data);
           $this->load->view('login_admin');
           $this->load->view('templates/footer_auth');
          //$this->load->view('account/v_success',$pesan);
       }
   }


   public function cek(){
    $this->data['title'] = 'Login';
     //  $this->form_validation->set_rules('username_administrator', 'username_administrator','required');
     // $this->form_validation->set_rules('password_administrator', 'password_administrator','required');
     // $this->form_validation->set_rules('email_administrator','email_administrator','required|valid_email_administrator');
     // $this->form_validation->set_rules('nama_lengkap', 'nama_lengkap','required');
     
     
       // if($this->form_validation->run() == FALSE) {

       //     $this->load->view('register_admin');
       // }else{


       //    $a=$this->input->post('username_administrator'); 
       //    var_dump($a);

           
           $data['username_administrator'] =    $this->input->post('username_administrator');           
           $data['password_administrator'] =    md5($this->input->post('password_administrator'));
           $data['email_administrator']  =    $this->input->post('email_administrator');
           $data['nama_lengkap']        =    $this->input->post('nama_lengkap');
           

           $this->M_register_admin->daftar($data);

           $pesan['message'] =    "Pendaftaran berhasil";
           $this->load->view('templates/header_auth',$this->data);
           $this->load->view('login_admin');
           $this->load->view('templates/footer_auth');
          //$this->load->view('account/v_success',$pesan);
       //}
    //$user = $this->input->post('username_administrator');
    //var_dump($user);




   }





     }// end class           
