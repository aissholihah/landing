<?php
defined('BASEPATH') or exit('No direct script access allowed');

class P_khasanah extends CI_Controller
{
  // function __construct(){
  //      parent::__construct();
  //      //$this->simple_login->cek_login();
  //      $this->cek_login();
  //         $this->load->model('M_p_arsip_kearsitekturan','tb_arsip_kearsitekturan');
  //         header('Access-Control-Allow-Origin: *');
  //         header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
  //         header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE");
  //  }

  public $outputs = [
    'status'  => false,
    'message' => '',
    'data'    => []
  ];

  public function __construct()
  {
    parent::__construct();
    $this->load->model([
      'M_p_khasanah'
    ]);
    $this->cek_login();
    // $this->load->model('M_p_khasanah','tb_khasanah');
    // header('Access-Control-Allow-Origin: *');
    // header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
    // header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE");
  }

  public function index()
  {
    $hasil = $this->session->userdata('user_data');
    // $data['pp'] = $hasil->picture;
    $data['title'] = 'Arsip Khasanah';
    $this->load->view('p_arsip_header',$data);
    
    $this->load->view('p_khasanah',$data);
   
  }

  public function get_siswa()
   { 



  // $parent= $this->M_p_khasanah->get_parent_id();
    // $where = array ('id_parent'=>$parent);
    // $parent = $this->M_p_khasanah->get_parent($where,'tb_khasanah');  
    if (!$this->input->is_ajax_request()) {
      show_404(); // Jika tidak akses melalui ajax request
    } else {
      if(isset($_POST['parentid'])){
      $parent         =$_POST['parentid'];
      }else{
        $parent         ='0';
      }
      $column_order   = ['', 'nama_khasanah','tahun']; // Order berdasarkan columns pada table siswa
      $column_search  = ['nama_khasanah','tahun']; // Pencarian berdasarkan columns nama siswa
      $order          = ['nama_khasanah','tahun' => 'ASC']; // Sorting berdasarkan nama siswa menggunakan ASC
      $list           = $this->M_p_khasanah->get_datatables('tb_khasanah', $column_order, $column_search, $order, $parent); // Memanggil siswa model untuk menampilkannya ke datatables
      

      $upper = $this->M_p_khasanah->get_parent_id($parent);

      $data           = [];
      // $this->mybreadcrumb->add('Data Khasanah', base_url('khasanah'));
      
      // $this->mybreadcrumb->add($upper->parent_id.$upper->id_khasanah);
      // $data['breadcrumbs'] = $this->mybreadcrumb->render();
      $no             = $_POST['start'];
      foreach ($list as $key => $lists) {
        $no++;
        $data[$key][]  = $no;
        if($lists->folder=='1'){
        $data[$key][]  = '<span style="color : orange"><i class="fa fa-folder-open"> <a href="javascript:;"  onclick="tampil_siswa(' . $lists->id_khasanah . ',\''.$lists->nama_khasanah.'\')" style="text-decoration: none">'.$lists->nama_khasanah.'</a></i></span>';}
        else{
          $data[$key][]  = '<span style="color : lightblue"><i class="fa fa-file"> <a href="javascript:;"   style="text-decoration: none">'.$lists->nama_khasanah.'</a></i></span>';
        }
        // $data[$key][]  = '<a href="javascript:;" onclick="tambah(' . $lists->id_khasanah . ')">'. $lists->nama_khasanah .'</a>';
        $data[$key][]  = $lists->tahun;
        // $data[$key][]  = '<a href="javascript:;" class="btn btn-warning btn-sm" onclick="tampil_siswa(' . $lists->id_khasanah . ',\''.$lists->nama_khasanah.'\')">BUKA</a>';
        // $data[$key][]  = '<a href="javascript:;" class="btn btn-warning btn-sm" onclick="edit(' . $lists->id_khasanah . ')">EDIT</a>';
        // $data[$key][]  = '<a href="javascript:;" class="btn btn-danger btn-sm" onclick="hapus(' . $lists->id_khasanah . ')">HAPUS</a>';
      }
      if ($upper->num_rows()>0) {
          $upper=$upper->row();
          $jar=count($list);
          $data[$jar][]  = '';
          $data[$jar][]  = '<a href="javascript:;" class="btn btn-warning btn-sm" onclick="tampil_siswa(' . $upper->parent_id . ',\''.$upper->nama_khasanah.'\',true)">Kembali</a>';
          $data[$jar][]  = '';
          $data[$jar][]  = '';
          $data[$jar][]  = '';
          $data[$jar][]  = '';
      }
      // Output menggunakan JSON
      $output = [
        "draw"              => $_POST['draw'],
        "recordsTotal"      => $this->M_p_khasanah->count_all('tb_khasanah'),
        "recordsFiltered"   => $this->M_p_khasanah->count_filtered('tb_khasanah', $column_order, $column_search, $order, $parent),
        "data"              => $data,
        "parent"            => $parent,
      ];

      echo json_encode($output);
    }
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