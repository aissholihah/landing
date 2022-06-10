<?php
// file dashboard admin
defined('BASEPATH') OR exit('No direct script access allowed');

class P_arsip_video extends CI_Controller {

     public function __construct()
     {
          parent::__construct();
          //$this->load->model('M_p_arsip_tekstual');
          //$this->simple_login->cek_login();
          $this->cek_login();
          $this->load->model('M_p_arsip_video','tb_arsip_video');
          header('Access-Control-Allow-Origin: *');
          header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
          header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE");

     }

     public function index()
     {
          $hasil = $this->session->userdata('user_data');
          // $data['pp'] = $hasil->picture;
          $data['title'] = 'Arsip Video';
          $idgrup=($this->uri->segment(3))? $this->uri->segment(3) :6;
               //$data['idalbum']  = ($this->uri->segment(3))? $this->uri->segment(3) :1;
          $data['video_arsip']=$this->M_p_arsip_video->get_arsip_video($idgrup);
          $data['daftar_card']=$this->M_p_arsip_video->tampil_data();
          $data['tahun'] =$this->M_p_arsip_video->get_arsip_tahun();
          $this->load->view('p_arsip_header', $data);
          // $this->load->view('p_arsip_video',$data);
          $this->load->view('videoplay',$data);
               
          
          

     }

     public function videojson(){
          $idgrup=6;
          $dprofil=$this->M_p_arsip_video->get_arsip_video($idgrup);
          $response= array();

          foreach($dprofil as $hasil) {
            $response[] = array(
                'id'        => $hasil->id_arsip_video,
                'name'     => $hasil->judul,
                'source'       => base_url().'assets/arsip_video/'.$hasil->video,
                'duration'      => "1:10",
                'img'      => base_url()."0.png"
            );

        }
        
        header('Content-Type: application/json');
        echo json_encode($response, JSON_UNESCAPED_SLASHES
            /*array(
                'success' => true,
                'message' => 'Get All Data Siswa',
                'data'    => $response  
            )*/
        );
     }

     public function cek_login()
     {             

          // $hasil = $this->session->userdata('user_data');
          // //echo json_encode($hasil);
          
          // if($hasil->email==''){
          // redirect(site_url('masuk'));
          // }
          $hasil = $this->session->userdata('username');
          //echo json_encode($hasil);
          
          if($hasil==''){
          redirect(site_url('masuk'));
          }     


     }

}//end class

