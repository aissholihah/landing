<?php 
defined('BASEPATH') OR exit('no direct script access allowed'); 

class P_arsip_kearsitekturan extends CI_Controller {
     function __construct(){
       parent::__construct();
       //$this->simple_login->cek_login();
       $this->cek_login();
          $this->load->model('M_p_arsip_kearsitekturan','tb_arsip_kearsitekturan');
          header('Access-Control-Allow-Origin: *');
          header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
          header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE");
   }

     function index(){
       
        $hasil = $this->session->userdata('user_data');
        // $data['pp'] = $hasil->picture;
        $data['title'] = 'Arsip Kearsitekturan';
        $this->load->view('p_arsip_header',$data);
        $this->load->view('p_arsip_kearsitekturan');
         
     }


     public function ajax_list()
     {
          $list = $this->tb_arsip_kearsitekturan->get_datatables();
          $data = array();
          $no = $_POST['start'];
          foreach ($list as $b) {
               $no++;
               $row = array();
               $row[] = $no;
               $row[] = $b->unit_kerja;
               $row[] = $b->no_kerja;
               $row[] = $b->arsitek_perusahaan;
               $row[] = $b->tanggal;
               $row[] = $b->lokasi;
               $row[] = $b->nama_bangunan;
               $row[] = $b->kondisi;
               
               $row[] = '<a href="'.site_url('p_arsip_kearsitekturan/detail/'.$b->idp).'" class="btn btn-primary btn-md" tabindex="-1" role="button" aria-disabled="true">Detail</a>';
               // $row[] = $tb_arsip_kearsitekturan->city;
               // $row[] = $tb_arsip_kearsitekturan->country;

               $data[] = $row;
          }

          $output = array(
                              "draw" => $_POST['draw'],
                              "recordsTotal" => $this->tb_arsip_kearsitekturan->count_all(),
                              "recordsFiltered" => $this->tb_arsip_kearsitekturan->count_filtered(),
                              "data" => $data,
                    );
          //output to json format
          echo json_encode($output);
     }


     public function detail()
     { 
      $hasil = $this->session->userdata('user_data');
      $data['pp'] = $hasil->picture;  
      $data['title'] = 'Arsip Kearsitekturan'; 
      $idp=$this->uri->segment(3);
      $data['detail']  = $this->M_p_arsip_kearsitekturan->detail_data($idp);

      $this->load->view('p_arsip_header',$data);   
      $this->load->view('detail_p_arsip_kearsitekturan', $data);
     }  

    public function cek_login()
    {             

        $hasil = $this->session->userdata('username');
          //echo json_encode($hasil);

        if($hasil==''){
          redirect(site_url('masuk'));
        }     
    }// end cek login

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
}// end class