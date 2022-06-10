<?php 
defined('BASEPATH') OR exit('no direct script access allowed'); 

class ArsipTekstual extends CI_Controller {
     public function __construct()
     {
          parent::__construct();
          //$this->load->model('M_arsipTekstual');
          //$this->simple_login->cek_login();
          $this->load->model('m_arsipTekstual','tb_arsip_tekstual');
          header('Access-Control-Allow-Origin: *');
          header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
          header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE");

     }

     function index(){
          $data['title'] = 'Arsip Tekstual';
          
          //$this->load->view('templates/header');
          //$this->load->view('templates/sidebar');
          $this->load->view('arsipTekstual',$data);
          //$this->load->view('editarsip', $data);
          //$this->load->view('templates/footer');
     }

     public function ajax_list()
     {
          $list = $this->tb_arsip_tekstual->get_datatables();
          $data = array();
          $no = $_POST['start'];
          foreach ($list as $a) {
               $no++;
               $row = array();
               $row[] = $no;
               $row[] = $a->unit_kerja;
               $row[] = $a->tanggal;
               $row[] = $a->isi_informasi;
               $row[] = $a->masalah;
               $row[] = $a->retensi_aktif;
               $row[] = $a->retensi_inaktif;
               $row[] = $a->file_url;
                           


               
               $row[] = '<a href="'.base_url('assets/arsip/'.$a->file_url).'" class="btn btn-primary btn-md" tabindex="-1" role="button" aria-disabled="true">Download</a>';
               $row[] = '<a href="'.base_url('arsipTekstual/hapus'.$a->id_arsip_tekstual).'" class="btn btn-primary btn-md" tabindex="-1" role="button" aria-disabled="true">Hapus</a>';
               $row[] = '<a href="'.base_url('arsipTekstual/edit'.$a->id_arsip_tekstual).'" class="btn btn-primary btn-md" tabindex="-1" role="button" aria-disabled="true">Hapus</a>';
               
               // $row[] = $tb_arsip_tekstual->city;
               // $row[] = $tb_arsip_tekstual->country;

               $data[] = $row;
          }

          $output = array(
                              "draw" => $_POST['draw'],
                              "recordsTotal" => $this->tb_arsip_tekstual->count_all(),
                              "recordsFiltered" => $this->tb_arsip_tekstual->count_filtered(),
                              "data" => $data,
                    );
          //output to json format
          echo json_encode($output);
     }

     public function tambah()
     {    
          //menangkap inputan dari form yg methodny POST
          $unit_kerja                   = $this->input->POST('unit_kerja');     // inget POST('berdasarkan name di tag input')
          $kode_klasifikasi             = $this->input->POST('kode_klasifikasi');
          $tanggal                      = $this->input->POST('tanggal');
          $isi_informasi                = $this->input->POST('isi_informasi');       //[name]
          
          $masalah                      = $this->input->POST('masalah');
          $retensi_aktif                = $this->input->POST('retensi_aktif');
          $retensi_inaktif              = $this->input->POST('retensi_inaktif');
          $file_url                     = $_FILES['file_url'];
          

          if ($file_url= ''){}else{
               $config['upload_path']        ='./assets/arsip';
               $config['allowed_types'] ='pdf';

               $this->load->library('upload', $config);
               if(!$this->upload->do_upload('file_url')){                  // nek gagal ada notifnya // do upload (name)
                    echo "upload gagal"; die();
               }else {
                    $file_url = $this->upload->data('file_name');          // berhasil, akan masuk ke db dengan file namenya
                    
               }
               $aksi=$this->input->post('aksi');
               $this->load->view('tambah',$aksi);
          }

          

          // setelah data dari form ditangkap, datanya akan diubah jadi array
          $data = array (
               'unit_kerja'             =>$unit_kerja,
               'kode_klasifikasi'       =>$kode_klasifikasi,
               'tanggal'                =>$tanggal,
               'isi_informasi'               =>$isi_informasi,
               
               'masalah'                =>$masalah,
               'retensi_aktif'               =>$retensi_aktif,
               'retensi_inaktif'        =>$retensi_inaktif,
               'file_url'                    =>$file_url,
               
          );


          // biar $data masukk ke database tb_administrator
          $this->M_arsip_tekstual->input_data($data,'tb_arsip_tekstual');
          // $aksi=$this->input->post('aksi');
          // $this->load->view('tambah',$aksi);
          //redirect ('arsip_tekstual/index');
     
     } 
}