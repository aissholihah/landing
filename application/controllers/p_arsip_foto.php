<?php
// file dashboard admin
defined('BASEPATH') OR exit('No direct script access allowed');

class P_arsip_foto extends CI_Controller {

     public function __construct()
     {
          parent::__construct();
          //$this->load->model('M_p_arsip_tekstual');
          //$this->simple_login->cek_login();
          $this->cek_login();
          $this->load->model('M_p_arsip_foto','tb_arsip_foto');
          header('Access-Control-Allow-Origin: *');
          header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
          header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE");

     }

     public function index()
     {
          $hasil = $this->session->userdata('user_data');
          // $data['pp'] = $hasil->picture;
          $data['title'] = 'Arsip Foto';
          $idgrup=($this->uri->segment(3))? $this->uri->segment(3) :12;//set default nanti yang ud nya 6. 
               //$data['idalbum']  = ($this->uri->segment(3))? $this->uri->segment(3) :1;
          $data['foto_arsip']=$this->M_p_arsip_foto->get_arsip_foto($idgrup);//mbil data dair tabel, grup jugak

          $data['daftar_card']=$this->M_p_arsip_foto->tampil_data();
          $data['tahun'] =$this->M_p_arsip_foto->get_arsip_tahun();
          $this->load->view('p_arsip_header', $data);
          //$this->load->view('templates/sidebar');
          $this->load->view('p_arsip_foto',$data);
               
          
          

     }

     public function cek_login()
     {             

          $hasil = $this->session->userdata('username');
          //echo json_encode($hasil);

        if($hasil==''){
          redirect(site_url('masuk'));
        }     


     }

}//end class

