<?php 
class Arsip_publikasi extends Ci_Controller{
	public function __construct()
     {
          parent::__construct();
          
          $this->simple_login_admin->cek_login();
          

     }
	public function index()
	{
		//$this->load->model("M_user");
		$config['base_url'] 	= site_url('arsip_publikasi/index');
		$config['total_rows']	= $this->db->count_all('tb_arsip_publik');
		$config['per_page']		= 5;			// tiap halaman mau nampilin berapa jumlah data.
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
		$data['arsip']	= $this->M_arsip_publikasi->get_data($config['per_page'], $data['page']) -> result();

		// bikin link
		$data['pagination']	= $this->pagination->create_links();

		//$this->load->model("M_arsip_publikasi");
		//$data['arsip'] = $this->M_arsip_publikasi->tampil_data()->result();	// menampilkan ke model arsip_publikasi di method tampil_data()
		// jadi maksud ['arsip'] adalah: kan pas yg di foreach tadi $... as $... . jadi dia itu var pertamanya.
		// meload view
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('arsip_publikasi', $data);
		//$this->load->view('editarsip', $data);
		$this->load->view('templates/footer');
	}

	public function tambah_aksi()
	{
		//menangkap inputan dari form yg methodny POST
		$judul_arsip			= $this->input->POST('judul_arsip');	// inget POST('berdasarkan name di tag input')
		$tgl_publikasi_arsip	= $this->input->POST('tgl_publikasi_arsip');
		$unit_kerja 			= $this->input->POST('unit_kerja');
		$file_arsip 			= $_FILES['file_arsip'];		//[name]

		if ($file_arsip= ''){}else{
			$config['upload_path']		='./assets/arsip';
			$config['allowed_types']	='pdf';

			$this->load->library('upload', $config);
			if(!$this->upload->do_upload('file_arsip')){				// nek gagal ada notifnya // do upload (name)
				echo "upload gagal"; die();
			}else {
				$file_arsip = $this->upload->data('file_name');		// berhasil, akan masuk ke db dengan file namenya
				
			}
		}

		// setelah data dari form ditangkap, datanya akan diubah jadi array
		$data = array (
			'judul_arsip'					=>$judul_arsip,
			'tgl_publikasi_arsip'			=>$tgl_publikasi_arsip,
			'unit_kerja'					=>$unit_kerja,
			'file_arsip'					=>$file_arsip,
		);


		// biar $data masukk ke database tb_administrator
		$this->M_arsip_publikasi->input_data($data,'tb_arsip_publik');
		redirect ('arsip_publikasi/index');
	
	}

	public function hapus ($id)
	{
		$where = array ('id'=>$id);
		$this->M_arsip_publikasi->hapus_data($where, 'tb_arsip_publik');
		redirect ('arsip_publikasi/index');
	}

	public function edit ($id)
	{
		$where = array ('id'=>$id);			// id yang ada di tb_administrator akan disimpan ke $array where.
		// buat fungsi yang akan dipake di M_administrator
		$data ['arsip'] = $this->M_arsip_publikasi->edit_data($where,'tb_arsip_publik')->result();
		// result() untuk mengenerate hasil query menjadi array.
		// meload view
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('editarsip', $data);	// 
		$this->load->view('templates/footer');

	}

	// bikin controller update
	public function update()
	{
		// $id = $this->input->post('id');
		// $judul_arsip = $this->input->post('judul_arsip');
		// $tgl_publikasi_arsip = $this->input->post('tgl_publikasi_arsip');
		// $unit_kerja = $this->input->post('unit_kerja');

		// // masukkan datanya ke dlam array
		// $data= array (
		// 	'judul_arsip'			=>$judul_arsip,
		// 	'tgl_publikasi_arsip'			=>$tgl_publikasi_arsip,
		// 	'unit_kerja'				=>$unit_kerja,
		// 	'file_arsip'					=>$file_arsip,
		// );

		// $where = array (
		// 	'id' => $id
		// 	);
		// // manggil method update datda dari m

		// $this->M_administrator->update_data($where
		// 	, $data, 'tb_arsip_publik');
		// // kalo udah akan diredirect ke
		// redirect('arsip_publikasi/index');
		$id = $this->input->post('id');
		$judul_arsip = $this->input->post('judul_arsip');
		$tgl_publikasi_arsip = $this->input->post('tgl_publikasi_arsip');
		$unit_kerja = $this->input->post('unit_kerja');
		$file_arsip 			= $_FILES['file_arsip'];

		// if foto udah keisi. kalo ngga ada file yg diaplod maka ngga terjadi apapun. kalo fotonya ada akan dilakukan konfigurasi. yg 1st konfigurasi tempat penyimpanan/direktori penyimpanan. misal disimpan di folder asset.trus tar kitabuat folder foto. 
		//2nd. atur jenis file apa yang boleh di upload
		$config['upload_path']		='./assets/arsip';
		$config['allowed_types']	='pdf';

		$this->load->library('upload', $config);
		if(!$this->upload->do_upload('file_arsip')){
		//if ($file_arsip= ''){
			$data = array (
				
				'judul_arsip'				=>$judul_arsip,
				'tgl_publikasi_arsip'		=>$tgl_publikasi_arsip,
				'unit_kerja'				=>$unit_kerja,
			);
		}else{						
			
			$file_arsip = $this->upload->data('file_name');		// berhasil, akan masuk ke db dengan file namenya
			$data = array (
			'judul_arsip'					=>$judul_arsip,
			'tgl_publikasi_arsip'			=>$tgl_publikasi_arsip,
			'unit_kerja'					=>$unit_kerja,
			'file_arsip'					=>$file_arsip
			);
		}
			$where = array (
			'id' => $id
			);
		// manggil method update datda dari m

		$this->M_arsip_publikasi->update_data($where, $data, 'tb_arsip_publik');
		// kalo udah akan diredirect ke
		redirect('arsip_publikasi/index');	
		}// end update

			

		public function search(){
		$keyword = ($this->input->post('keyword'))? $this->input->post('keyword'):'';
     	//jika uri segmen 3 ada, maka nilai variabel $search akan diganti dengan nilai uri segmen 3
     	$keyword = ($this->uri->segment(3)) ? $this->uri->segment(3) : $keyword;
		//$keyword = $this->input->post('keyword');

		$config['base_url'] 	= site_url('arsip_publikasi/search/'.$keyword);
		$config['total_rows']	= $this->M_arsip_publikasi->count_get_keyword($keyword);
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
		$data['arsip']	= $this->M_arsip_publikasi->get_data_search($keyword, $config['per_page'], $data['page']) -> result();

		// bikin link
		$data['pagination']	= $this->pagination->create_links();


		//$keyword = $this->input->post('keyword');
		//$data['user'] = $this->M_user->get_keyword($keyword);			
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('arsip_publikasi', $data);	//  view ke artikel
		$this->load->view('templates/footer');

	}// end search


	public function watermark(){
		use setasign\Fpdi\Fpdi; 
		require_once('vendor/autoload.php');


		// Source file and watermark config 
		$file = 'Unduhan/tes.pdf'; 
		$text = 'semangat \^O^/'; 

		// Text font settings 
		$name = uniqid(); 
		$font_size = 5; 
		$opacity = 100; 
		$ts = explode("\n", $text); 
		$width = 0; 
		foreach($ts as $k=>$string){ 
			$width = max($width, strlen($string)); 
		} 
		$width  = imagefontwidth($font_size)*$width; 
		$height = imagefontheight($font_size)*count($ts); 
		$el = imagefontheight($font_size); 
		$em = imagefontwidth($font_size); 
		$img = imagecreatetruecolor($width, $height); 

		// Background color 
		$bg = imagecolorallocate($img, 255, 255, 255); 
		imagefilledrectangle($img, 0, 0, $width, $height, $bg); 

		// Font color settings 
		$color = imagecolorallocate($img, 0, 0, 0); 
		foreach($ts as $k=>$string){ 
			$len = strlen($string); 
			$ypos = 0; 
			for($i=0;$i<$len;$i++){ 
				$xpos = $i * $em; 
				$ypos = $k * $el; 
				imagechar($img, $font_size, $xpos, $ypos, $string, $color); 
				$string = substr($string, 1);       
			} 
		} 
		imagecolortransparent($img, $bg); 
		$blank = imagecreatetruecolor($width, $height); 
		$tbg = imagecolorallocate($blank, 255, 255, 255); 
		imagefilledrectangle($blank, 0, 0, $width, $height, $tbg); 
		imagecolortransparent($blank, $tbg); 
		$op = !empty($opacity)?$opacity:100; 
		if ( ($op < 0) OR ($op >100) ){ 
			$op = 100; 
		} 

		// Create watermark image 
		imagecopymerge($blank, $img, 0, 0, 0, 0, $width, $height, $op); 
		imagepng($blank, $name.".png"); 

		// Set source PDF file 
		$pdf = new Fpdi(); 
		if(file_exists("./".$file)){ 
			$pagecount = $pdf->setSourceFile($file); 
		}else{ 
			die('Source PDF not found!'); 
		} 

		// Add watermark to PDF pages 
		for($i=1;$i<=$pagecount;$i++){ 
			$tpl = $pdf->importPage($i); 
			$size = $pdf->getTemplateSize($tpl); 
			$pdf->addPage(); 
			$pdf->useTemplate($tpl, 1, 1, $size['width'], $size['height'], TRUE); 

    		//Put the watermark 
			$xxx_final = ($size['width']-50); 
			$yyy_final = ($size['height']-25); 
			$pdf->Image($name.'.png', $xxx_final, $yyy_final, 0, 0, 'png'); 
		} 
		@unlink($name.'.png'); 

	// Output PDF with watermark 
		$pdf->Output();
	} //end watermark




	}// end class
?>