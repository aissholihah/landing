<?php 
class Arsip_tekstual extends Ci_Controller{



	public function __construct()
     {
          parent::__construct();
          //$this->load->model('M_arsipTekstual');
          $this->simple_login_admin->cek_login();
          $this->load->model('m_arsip_tekstual','tb_arsip_tekstual');
          header('Access-Control-Allow-Origin: *');
          header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
          header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE");

     }



	public function index()
	{	$this->data['title'] = 'Arsip Tekstual';
		//$this->load->model("M_user");
		$config['base_url'] 	= site_url('arsip_tekstual/index');
		$config['total_rows']	= $this->db->count_all('tb_arsip_tekstual');
		$config['per_page']		= 100;			// tiap halaman mau nampilin berapa jumlah data.
		$config['uri_segment']	= 3;			// untuk uri segmen
		$choice					= $config["total_rows"]/$config['per_page'];
		$config["num_links"]		= floor($choice);

		// bikin pagination pake bootstrap
		$config["num_links"]	= floor($choice);
		$config["first_link"]	= 'First';
		$config["last_link"]	= 'Last';
		$config["next_link"]	= 'Next';
		$config["prev_link"]	= 'Prev';
		// konfigurasi posisi pagination
		$config['full_tag_open']	= '<div class="pagging text-center"><nav><ul class="pagination justify-content-center">';
		$config ['full_tag_close']	= '</ul></nav></div>';

		// bikin num tag open dan num tag close
		$config['num_tag_open']	='<li class="page-item">
								<span class="page-link">';
		//tutup num-tag
		$config['num_tag_close']	='</span></li>';

		// membuat current tag open
		$config['cur_tag_open']	='<li class="page-item active">
								<span class="page-link">';						
		$config['cur_tag_close']	='</span></li>';

		// bikin next text open dan next tag close
		$config['next_tag_open']	='<li class="page-item">
								<span class="page-link">';						
		$config['next_tagl_close']	='<span aria-hidden="true">& raquo</span></span></li>';
		// bikin prev text open dan close nay
		$config['prev_tag_open']	='<li class="page-item">
								<span class="page-link">';						
		$config['prev_tagl_close']	='</span>Next</li>';

		// bikin first and last tag open & first tag close
		$config['first_tag_open']	='<li class="page-item">
								<span class="page-link">';						
		$config['first_tagl_close']	='</span></li>';

		$config['last_tag_open']	='<li class="page-item">
								<span class="page-link">';						
		$config['last_tagl_close']	='</span>Next</li>';



		// inisalisasi pagination 
		$this->pagination->initialize($config);
		$data['page']	= ($this->uri->segment(3))? $this->uri->segment(3) :0;
		$data['arsip']	= $this->M_arsip_tekstual->get_data($config['per_page'], $data['page']) -> result();

		// bikin link
		$data['pagination']	= $this->pagination->create_links();

		//$this->load->model("M_arsip_tekstual");
		//$data['arsip'] = $this->M_arsip_tekstual->tampil_data()->result();	// menampilkan ke model arsip_tekstual di method tampil_data()
		// jadi maksud ['arsip'] adalah: kan pas yg di foreach tadi $... as $... . jadi dia itu var pertamanya.
		// meload view
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('arsip_tekstual', $data);
		//$this->load->view('editarsip', $data);
		$this->load->view('templates/footer');
	}

	public function tambah()
	{	
		//menangkap inputan dari form yg methodny POST
		$unit_kerja				= $this->input->POST('unit_kerja');	// inget POST('berdasarkan name di tag input')
		$kode_klasifikasi			= $this->input->POST('kode_klasifikasi');
		$tanggal 					= $this->input->POST('tanggal');
		$isi_informasi 			= $this->input->POST('isi_informasi');		//[name]
		
		$masalah 					= $this->input->POST('masalah');
		$retensi_aktif 			= $this->input->POST('retensi_aktif');
		$retensi_inaktif 			= $this->input->POST('retensi_inaktif');
		$file_url 				= $_FILES['file_url'];
		$watermark 						= $this->input->POST('watermark');

		if ($file_url= ''){}else{
			$config['upload_path']		='./assets/arsip';
			$config['allowed_types']	='pdf';

			$this->load->library('upload', $config);
			if(!$this->upload->do_upload('file_url')){				// nek gagal ada notifnya // do upload (name)
				echo "upload gagal"; die();
			}else {
				$file_url = $this->upload->data('file_name');		// berhasil, akan masuk ke db dengan file namenya
				
			}
			// $aksi=$this->input->post('aksi');
   //      		$this->load->view('tambah',$aksi);
		}

		

		// setelah data dari form ditangkap, datanya akan diubah jadi array
		$data = array (
			'unit_kerja'			=>$unit_kerja,
			'kode_klasifikasi'		=>$kode_klasifikasi,
			'tanggal'				=>$tanggal,
			'isi_informasi'			=>$isi_informasi,
			
			'masalah'				=>$masalah,
			'retensi_aktif'			=>$retensi_aktif,
			'retensi_inaktif'		=>$retensi_inaktif,
			'file_url'				=>$file_url,
			'watermark'				=>$watermark,
			
		);


		// biar $data masukk ke database tb_administrator
		$this->M_arsip_tekstual->input_data($data,'tb_arsip_tekstual');
		$aksi=$this->input->post('aksi');
        	//$this->load->view('tambah',$aksi);
		redirect ('arsip_tekstual/index');
	
	} 

	public function hapus ($id)
	{
		$where = array ('id_arsip_tekstual'=>$id);
		$this->M_arsip_tekstual->hapus_data($where, 'tb_arsip_tekstual');
		redirect ('arsip_tekstual/index');
	}

	public function edit ($id)
	{	$this->data['title'] = 'Arsip Tekstual';

		$where = array ('id_arsip_tekstual'=>$id);			// id yang ada di tb_administrator akan disimpan ke $array where.
		// buat fungsi yang akan dipake di M_administrator
		$data ['arsip'] = $this->M_arsip_tekstual->edit_data($where,'tb_arsip_tekstual')->result();
		// result() untuk mengenerate hasil query menjadi array.
		// meload view
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('editarsip', $data);	// 
		$this->load->view('templates/footer');

	}

	// bikin controller update
	public function update()
	{	
		//$this->data['title'] = 'Arsip Tekstual';
		

		//$where = array ('id_arsip_tekstual'=> $id);			// id yang ada di tb_administrator akan disimpan ke $array where.
		// buat fungsi yang akan dipake di M_administrator
		//$data ['arsip'] = $this->M_arsip_tekstual->edit_data($where,'tb_arsip_tekstual')->result();

		
		$id							= $this->input->post('id_arsip_tekstual');
		$unit_kerja					= $this->input->POST('unit_kerja');	// inget POST('berdasarkan name di tag input')
		$kode_klasifikasi				= $this->input->POST('kode_klasifikasi');
		$tanggal 						= $this->input->POST('tanggal');
		$isi_informasi 				= $this->input->POST('isi_informasi');		//[name]
		
		$masalah 						= $this->input->POST('masalah');
		$retensi_aktif 				= $this->input->POST('retensi_aktif');
		$retensi_inaktif 				= $this->input->POST('retensi_inaktif');
		$file_url 					= $_FILES['file_url'];
		$watermark 					= $this->input->POST('watermark');


		// if foto udah keisi. kalo ngga ada file yg diaplod maka ngga terjadi apapun. kalo fotonya ada akan dilakukan konfigurasi. yg 1st konfigurasi tempat penyimpanan/direktori penyimpanan. misal disimpan di folder asset.trus tar kitabuat folder foto. 
		//2nd. atur jenis file apa yang boleh di upload
		$config['upload_path']		='./assets/arsip';
		$config['allowed_types']		='pdf';

		$this->load->library('upload', $config);
		if(!$this->upload->do_upload('file_url')){
		//if ($file_url= ''){
			$data = array (
				
			'unit_kerja'			=>$unit_kerja,
			'kode_klasifikasi'		=>$kode_klasifikasi,
			'tanggal'				=>$tanggal,
			'isi_informasi'		=>$isi_informasi,
			
			'masalah'				=>$masalah,
			'retensi_aktif'		=>$retensi_aktif,
			'retensi_inaktif'		=>$retensi_inaktif,
			);
			//echo "tidak ada file";
		}else{						
			
			$file_url = $this->upload->data('file_name');		// berhasil, akan masuk ke db dengan file namenya
			$data = array (
			'unit_kerja'			=>$unit_kerja,
			'kode_klasifikasi'		=>$kode_klasifikasi,
			'tanggal'				=>$tanggal,
			'isi_informasi'		=>$isi_informasi,
			
			'masalah'				=>$masalah,
			'retensi_aktif'		=>$retensi_aktif,
			'retensi_inaktif'		=>$retensi_inaktif,
			'file_url'			=>$file_url,
			);
			//echo "file ada :".$file_url;
		}
			$where = array (
			'id_arsip_tekstual' => $id
			);
		// manggil method update datda dari m

		$this->M_arsip_tekstual->update_data($where, $data, 'tb_arsip_tekstual');
		// kalo udah akan diredirect ke
		redirect('arsip_tekstual/index');	
		}// end update

			

		public function search(){
		$this->data['title'] = 'Arsip Tekstual';

		$keyword = ($this->input->post('keyword'))? $this->input->post('keyword'):'';
     	//jika uri segmen 3 ada, maka nilai variabel $search akan diganti dengan nilai uri segmen 3
     	$keyword = ($this->uri->segment(3)) ? $this->uri->segment(3) : $keyword;
		//$keyword = $this->input->post('keyword');

		$config['base_url'] 	= site_url('arsip_tekstual/search/'.$keyword);
		$config['total_rows']	= $this->M_arsip_tekstual->count_get_keyword($keyword);
		$config['per_page']		= 1;			// tiap halaman mau nampilin berapa jumlah data.
		$config['uri_segment']	= 4;			// untuk uri segmen
		$choice					= $config["total_rows"]/$config['per_page'];
		$config["num_links"]		= floor($choice);


		// bikin pagination pake bootstrap
		$config["num_links"]	= floor($choice);
		$config["first_link"]	= 'First';
		$config["last_link"]	= 'Last';
		$config["next_link"]	= 'Next';
		$config["prev_link"]	= 'Prev';
		// konfigurasi posisi pagination
		$config['full_tag_open']	= '<div class="pagging text-center"><nav><ul class="pagination justify-content-center">';
		$config ['full_tag_close']	= '</ul></nav></div>';

		// bikin num tag open dan num tag close
		$config['num_tag_open']	='<li class="page-item">
								<span class="page-link">';
		//tutup num-tag
		$config['num_tag_close']	='</span></li>';

		// membuat current tag open
		$config['cur_tag_open']	='<li class="page-item active">
								<span class="page-link">';						
		$config['cur_tag_close']	='</span></li>';

		// bikin next text open dan next tag close
		$config['next_tag_open']	='<li class="page-item">
								<span class="page-link">';						
		$config['next_tagl_close']	='<span aria-hidden="true">& raquo</span></span></li>';
		// bikin prev text open dan close nay
		$config['prev_tag_open']	='<li class="page-item">
								<span class="page-link">';						
		$config['prev_tagl_close']	='</span>Next</li>';

		// bikin first and last tag open & first tag close
		$config['first_tag_open']	='<li class="page-item">
								<span class="page-link">';						
		$config['first_tagl_close']	='</span></li>';

		$config['last_tag_open']	='<li class="page-item">
								<span class="page-link">';						
		$config['last_tagl_close']	='</span>Next</li>';


		
		// inisalisasi pagination 
		$this->pagination->initialize($config);
		$data['page']	= ($this->uri->segment(4))? $this->uri->segment(4) :0;
		$data['arsip']	= $this->M_arsip_tekstual->get_data_search($keyword, $config['per_page'], $data['page']) -> result();

		// bikin link
		$data['pagination']	= $this->pagination->create_links();


		//$keyword = $this->input->post('keyword');
		//$data['user'] = $this->M_user->get_keyword($keyword);			
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('arsip_tekstual', $data);	//  view ke artikel
		//$this->load->view('templates/footer');

	}// end search

	public function ajax_list()
     {
          $list = $this->tb_arsip_tekstual->get_datatables();
          $data = array();
          $no = $_POST['start'];
          // $a['alamat_file'] = site_url('arsip_tekstual/watermark');
          foreach ($list as $a) {
               $no++;
               $row = array();
               $row[] = $no;
               $row[] = $a->unit_kerja;
               $row[] = $a->kode_klasifikasi;
               $row[] = $a->tanggal;
               $row[] = $a->isi_informasi;
               $row[] = $a->masalah;
               $row[] = $a->retensi_aktif;
               $row[] = $a->retensi_inaktif;
               if($a->watermark=='1'){
               	$row[] = '<button id="'.$a->id_arsip_tekstual.'" onclick="window.open(\'arsip_tekstual/watermark/'.$a->id_arsip_tekstual.'\',\'_blank\');">'.$a->file_url.'</button>'; }
               	else{
                  		$row[] = '<button id="'.$a->id_arsip_tekstual.'" onclick="window.open(\''.base_url('assets/arsip/'.$a->file_url).'\',\'_blank\');">'.$a->file_url.'</button>';
               	}
               // $row[] = '<a href="'.base_url('assets/arsip/'.$a->file_url).'" target="_blank">'.$a->file_url.'</a>';

               // $row[] = '<button id="'.$a->id_arsip_tekstual.'" onclick="linkfile('.base_url('assets/arsip/'.$a->file_url).');">link</button>';
               


               //$row[] = '<a href="'.base_url('assets/arsip/'.$a->file_url).'" class="btn btn-primary btn-md" tabindex="-1" role="button" aria-disabled="true" download >Download</a>';
               

               
               // <a data-toggle="modal" data-target="#modal-edit' .$a->id_arsip_tekstual . '"><i class="icon feather icon-edit f-w-600 f-16 m-r-15 text-c-green"></i></a>
               // <a data-toggle="modal" data-target="#modal-hapus' .$a->id_arsip_tekstual . '"><i class="feather icon-trash-2 f-w-600 f-16 text-c-red"></i></a>';

            
               
               //$row[] = '<a href="'.base_url('assets/arsip/'.$a->file_url).'" class="btn btn-primary btn-md" tabindex="-1" role="button" aria-disabled="true">Edit</a>';
               // $row[] = '<a href="'.base_url('arsip_tekstual/hapus'.$a->id_arsip_tekstual).'" class="btn btn-primary btn-md" tabindex="-1" role="button" aria-disabled="true">Hapus</a>';
               // $row[] = '<a href="'.base_url('arsip_tekstual/edit'.$a->id_arsip_tekstual).'" class="btn btn-primary btn-md" tabindex="-1" role="button" aria-disabled="true">edit</a>';
               //$row[] = '<button id="'.$a->id_arsip_tekstual.'" onclick="linkfile('.$a->id_arsip_tekstual.')">'.$a->file_url.'</button>';
               // $row[] = '<button id="'.$a->id_arsip_tekstual.'" onclick="window.open(\'arsip_tekstual/watermark/'.$a->id_arsip_tekstual.'\',\'_blank\');">'.$a->file_url.'</button>'; //wajib pake back slice kalo window open.
               $row[] = '<button id="'.$a->id_arsip_tekstual.'" onclick="hapusrow('.$a->id_arsip_tekstual.');">Hapus</button>';
               $row[] = '<button id="'.$a->id_arsip_tekstual.'" onclick="editrow('.$a->id_arsip_tekstual.')">Edit</button>';

               

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




	}// end class
?>