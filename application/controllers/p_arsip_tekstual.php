<?php 
defined('BASEPATH') OR exit('no direct script access allowed'); 

class P_arsip_tekstual extends CI_Controller 
{

     public function __construct()
     {
          parent::__construct();
          //$this->load->model('M_p_arsip_tekstual');
          //$this->simple_login->cek_login();
          //$this->masuk->cek_login();
          //$this->load->library('session');
          // $this->cek_login();
          //$this->get_required_files('masuk');
          // if($this->session->userdata('username') !== '') {
          //      //muter terus disini
          //      // berarti manggil fungsi index langsung ajaa
          //      redirect(site_url('masuk')); 
                             
               
          // }
          //      $this->index();
               
               
          // }



          $this->load->model('M_p_arsip_tekstual','tb_arsip_tekstual');
          header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
          header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE");

     }

     function index(){
           // $hasil = $this->session->userdata('user_data');
          
          
          // $this->load->model('M_p_arsip_tekstual','tb_arsip_tekstual');
          // $data['title'] = 'Arsip Tekstual';
          
          // $data['hasil'] = $this->session->userdata('user_data');
          
          // $data['username']= $hasil->givenName;
          // $data['email']= $hasil->email;
          // $data['pp'] = $hasil->picture;
          // $this->load->view('p_arsip_header', $data);
          // $this->load->view('p_arsip_tekstual');



          $this->load->model('M_p_arsip_tekstual','tb_arsip_tekstual');
          $data['title'] = 'Arsip Tekstual';
          $hasil = $this->session->userdata('user_data');
          //$data['pp'] = $hasil->picture;
          $this->load->view('p_arsip_header', $data);
          $this->load->view('p_arsip_tekstual');
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
               if($a->watermark=='1'){
                    $row[] = '<button id="'.$a->id_arsip_tekstual.'"  class="btn btn-primary btn-md" tabindex="-1" onclick="window.open(\'p_arsip_tekstual/watermark/'.$a->id_arsip_tekstual.'\',\'_blank\');">Download</button>'; }
                    else{
                         $row[] = '<button id="'.$a->id_arsip_tekstual.'"  class="btn btn-primary btn-md" tabindex="-1" onclick="window.open(\''.base_url('assets/arsip/'.$a->file_url).'\',\'_blank\');">Download</button>';
                    }
               
               // $row[] = '<a href="'.base_url('assets/arsip/'.$a->file_url).'" class="btn btn-primary btn-md" tabindex="-1" role="button" aria-disabled="true" download >Download</a>';
               $row[] = '<button id="'.$a->id_arsip_tekstual.'" onclick="window.open(\'p_arsip_tekstual/watermark/'.$a->id_arsip_tekstual.'\',\'_blank\');" class="btn btn-primary btn-md" tabindex="-1" download>Download</button>'; //wajib pake back slice kalo window open.
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

      public function watermark(){

          $id=$this->uri->segment(3);
          // $where = array ('id_arsip_tekstual'=>$id);
          $sumber=$this->M_arsip_tekstual->get_nama_file($id);
          
          //use setasign\Fpdi\Fpdi; 
          //require_once('vendor/autoload.php');

          // Source file and watermark config 
          // $sf = 
          //$file = 'tes.pdf';
          //$file = 'tes.pdf';
          //$namaf=$id=$this->uri->segment(3);
          $file = 'assets/arsip/'.$sumber->file_url;
          
          // $file = ('assets/arsip/').'ais.pdf';
          // $file = file_get_contents('http://localhost:8080/ci-view1/assets/arsip/ais.pdf');
          // echo $file;
          // $file=base_url('assets/arsip/'.$id);

           //echo $file; 
          $text_image = base_url().'1.png'; 

          // Set source PDF file 
          $pdf = new setasign\Fpdi\Fpdi(); 
          if(file_exists($file)){ 
              $pagecount = $pdf->setSourceFile($file); 
          }else{ 
              die('Source PDF not found!');
          } 
           
          // Add watermark image to PDF pages 
          for($i=1;$i<=$pagecount;$i++){ 
              $tpl = $pdf->importPage($i); 
              $size = $pdf->getTemplateSize($tpl); 
              $pdf->addPage(); 
              $pdf->useTemplate($tpl, 1, 1, $size['width'], $size['height'], TRUE);

              $imgd = imagecreatefrompng("1.png");
              //$bg = imagecolorallocate($img, 255, 255, 255);
              list($width, $height) = getimagesize("1.png"); 
              //imagefilledrectangle($img, 0, 0, $width, $height, $bg);
              //imagecolortransparent($img, $bg); 
              //$blank = imagecreatetruecolor($size['width'], $size['height']);
              //imagesavealpha($blank, true);
              //imagecopyresized($blank, $img, 0, 0, 0, 0, $size['width'], $size['height'], $width, $height); 
              //imagepng($blank, "aaaa.png");
              $img = imagecreatetruecolor($size['width']*3.779528, $size['height']*3.779528);
              imagesavealpha($img, true);
              $color = imagecolorallocatealpha($img, 0, 0, 0, 127);
              imagefill($img, 0, 0, $color);
              //imagecopyresized($img, $imgd, 0, 0, 0, 0, $size['width']*3.779528, $size['height']*3.779528, $width, $height);
              imagecopyresized($img, $imgd, 0, 0, 0, 0, $size['width']*3.779528, $size['height']*3.779528, $width, $height);
              imagepng($img, 'WM.png'); 
              //Put the watermark 
              $xxx_final = ($size['width']-$size['width']); 
              $yyy_final = ($size['height']-$size['height']); 
              $pdf->Image("WM.png", $xxx_final, $yyy_final, 0, 0, 'png');
              /*$height=10;
              $width=10;
              while($height<$size['height']){
                  $xxx_final = ($size['width']-$width); 
                  $yyy_final = ($size['height']-$height); 
                  $pdf->Image($text_image, $xxx_final, $yyy_final, 0, 0, 'png'); 
                  $pdf->Image($text_image, $xxx_final+150, $yyy_final, 0, 0, 'png');
                  $pdf->Image($text_image, $xxx_final-150, $yyy_final, 0, 0, 'png');  
                  $height=$height+20;
                  $width=$width+20;
              }*/ 
          } 
           
          // Output PDF with watermark 
          $pdf->Output();
          
     }//end watermark

     public function donlot()
     {
          $data['files'] = directory_map('./assets/arsip/');
          $this->load->helper('download');
          force_download('./assets/arsip/CV.pdf', NULL);
     }//end donlot

     public function cek_login()
     {    
          

          $hasil = $this->session->userdata('username');
          //echo json_encode($hasil);
          
          if($hasil==''){
          redirect(site_url('masuk'));
          }     
     }//end cek_login

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
}//end class