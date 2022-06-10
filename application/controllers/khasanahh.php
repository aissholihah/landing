<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Khasanah extends CI_Controller
{

  public $outputs = [
    'status'  => false,
    'message' => '',
    'data'    => []
  ];

  public function __construct()
  {
    parent::__construct();
    $this->load->model([
      'M_khasanah'
    ]);
    
  }

  public function index()
  {
    $data['title'] = "Khasanah";
    $this->load->view('templates/header',$data);
    $this->load->view('templates/sidebar');
    $this->load->view('khasanah');
    $this->load->view('templates/footer');
  }

  public function get_siswa()
   {   
    if (!$this->input->is_ajax_request()) {
      show_404(); // Jika tidak akses melalui ajax request
    } else {
      //isset() merupakan salah satu fungsi php, guna untuk memeriksa suatu objek dari nilai inputan form
      if(isset($_POST['parentid'])){ // udah ada belum  inputan yang name nya parentid?
      $parent         =$_POST['parentid']; // kalo ada, lalu simpen  ke variabel parent.
      }else{
        $parent         ='0'; // kalo ngga ada set ini. 
      }
      $column_order   = ['', 'nama_khasanah','tahun']; // Order berdasarkan columns pada table siswa
      $column_search  = ['nama_khasanah','tahun']; // Pencarian berdasarkan columns nama siswa
      $order          = ['nama_khasanah','tahun' => 'ASC']; // Sorting berdasarkan nama siswa menggunakan ASC
      $list           = $this->M_khasanah->get_datatables('tb_khasanah', $column_order, $column_search, $order, $parent); // Memanggil siswa model untuk menampilkannya ke datatables
      

      $upper = $this->M_khasanah->get_parent_id($parent);

      $data           = [];
      // $this->mybreadcrumb->add('Data Khasanah', base_url('khasanah'));
      
      // $this->mybreadcrumb->add($upper->parent_id.$upper->id_khasanah);
      // $data['breadcrumbs'] = $this->mybreadcrumb->render();
      $no             = $_POST['start'];
      // $folder = 
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
        $data[$key][]  = '<a href="javascript:;" class="btn btn-warning btn-sm" onclick="edit(' . $lists->id_khasanah . ')">EDIT</a>';
        $data[$key][]  = '<a href="javascript:;" class="btn btn-danger btn-sm" onclick="hapus(' . $lists->id_khasanah . ')">HAPUS</a>';
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
        "recordsTotal"      => $this->M_khasanah->count_all('tb_khasanah'),
        "recordsFiltered"   => $this->M_khasanah->count_filtered('tb_khasanah', $column_order, $column_search, $order, $parent),
        "data"              => $data,
        "parent"            => $parent,
      ];

      echo json_encode($output);
    }
  }

  public function save_siswa()
  { 
    // $data['folder'] = $this->M_khasanah->statusfolder();
    // var_dump($data['folder']); 
    if (!$this->input->is_ajax_request()) {
      show_404();
    } else {
      $simpan = $this->M_khasanah->save_siswa();
      if ($simpan) {
        $this->outputs['status']    = true;
        $this->outputs['message']   = "Data berhasil disimpan !";
      }

      echo json_encode($this->outputs);
    }
  }

  public function edit_siswa()
  {
    if (!$this->input->is_ajax_request()) {
      show_404();
    } else {
      $siswa = $this->M_khasanah->get_siswa_by_id();
      if ($siswa->num_rows() > 0) {
        $this->outputs['data'] = $siswa->row();
        $this->outputs['status']  = true;
      }

      echo json_encode($this->outputs);
    }
  }

  public function update_siswa()
  {
    if (!$this->input->is_ajax_request()) {
      show_404();
    } else {
      $update = $this->M_khasanah->update_siswa();
      if ($update) {
        $this->outputs['status']  = true;
        $this->outputs['message'] = "Data berhasil diupdate !";
      }

      echo json_encode($this->outputs);
    }
  }

  public function delete_siswa()
  {
    if (!$this->input->is_ajax_request()) {
      show_404();
    } else {
      $delete = $this->M_khasanah->delete_siswa();
      if ($delete) {
        $this->outputs['status']  = true;
        $this->outputs['message'] = "Data berhasil dihapus !";
      }

      echo json_encode($this->outputs);
    }
  }
}
