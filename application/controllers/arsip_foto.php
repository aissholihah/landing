<?php 
class Arsip_foto extends Ci_Controller{
	public function __construct()
	{
		parent::__construct();

		// $this->simple_login_admin->cek_login();
		// $this->load->library('image_lib');


	}

	private function handle_success($succ) {
        $this->success .= nl2br($succ . "\n");
    }
	public function index()
	{	$this->data['title'] = 'Arsip Foto';

	$config['base_url'] 	= site_url('arsip_foto/index');
	$config['total_rows']	= $this->db->count_all('tb_arsip_foto');
		$config['per_page']		= 10;			// tiap halaman mau nampilin berapa jumlah data.
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
		$data['arsip_foto']	= $this->M_arsip_foto->get_data($config['per_page'], $data['page']) -> result();
		$data['gruparsipfoto'] = $this->M_grup_arsip_foto->tampil_data()->result();
		
		// bikin link
		$data['pagination']	= $this->pagination->create_links();


		
		//$this->load->model("M_arsip_foto");
		//$data['arsip_foto'] = $this->M_arsip_foto->tampil_data()->result();	// menampilkan ke model album di method tampil_data()
		// meload view
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('arsip_foto', $data);
		$this->load->view('templates/footer');
		
	}

	public function tambah_aksi()
	 {
	 	// $source_image=$this->M_arsip_foto->get_nama_file();
	// 	$wm_image=$this->M_arsip_foto->get_nama_file();
		//menangkap inputan dari form yg methodny POST
		$judul			= $this->input->POST('judul');	// inget POST('berdasarkan name di tag input')
		$foto			= $_FILES['foto'];			// $files('name')
		$narasi 			= $this->input->POST('narasi');
		$grup 			= $this->input->POST('grup');
		


		// if foto udah keisi. kalo ngga ada file yg diaplod maka ngga terjadi apapun. kalo fotonya ada akan dilakukan konfigurasi. yg 1st konfigurasi tempat penyimpanan/direktori penyimpanan. misal disimpan di folder asset.trus tar kitabuat folder foto. 
		//2nd. atur jenis file apa yang boleh di upload
		if ($foto= ''){}else{
			$upload_path = './assets/arsip_foto/';
			$watermark_image = './assets/arsip_foto/watermarked';
			$config['upload_path']		=$upload_path;
			$config['allowed_types']	='jpg|png|gif|jpeg';
			// $config['source_image'] = './assets/arsip_foto/l.jpg';
			// $config['new_image'] = './assets/arsip_foto/watermarked/wml.jpg';
			// $config['wm_text'] = 'KHASANAH ARSIP UPT KEARSIPAN UNS';
			// $config['wm_type'] = 'text';
			// $config['wm_font_size'] = '32';
			// $config['wm_font_color'] = 'ffffff';
			// $config['wm_vrt_alignment'] = 'middle';
			// $config['wm_hor_alignment'] = 'center';
			// $config['wm_opacity'] = '10';

			// $this->load->library('image_lib');
			// // Set your config up
			// $this->image_lib->initialize($config);
			// // Do your manipulation
			// $this->image_lib->clear();

			

			$this->load->library('upload', $config);
			if(!$this->upload->do_upload('foto')){				// nek gagal ada notifnya
				echo "upload gagal"; die();
			}else {
				$foto = $this->upload->data('file_name');
				$tinggi = $this->upload->data('image_width');		// berhasil, akan masuk ke db dengan file namenya
			// 	$config['source_image'] = './assets/arsip_foto/l.jpg';
			// $config['new_image'] = './assets/arsip_foto/watermarked/wml.jpg';
			// $config['wm_text'] = 'KHASANAH ARSIP UPT KEARSIPAN UNS';
			// $config['wm_type'] = 'text';
			// $config['wm_font_size'] = '32';
			// $config['wm_font_color'] = 'ffffff';
			// $config['wm_vrt_alignment'] = 'middle';
			// $config['wm_hor_alignment'] = 'center';
			// $config['wm_opacity'] = '10';

			// $this->load->library('image_lib');
			// // Set your config up
			// $this->image_lib->initialize($config);
			// // Do your manipulation
			// $this->image_lib->clear();

			// $image_data = $this->upload->data();
				 $this->load->library('image_lib');
 				$config['image_library'] = 'gd2';
                    //$config['image_library'] = 'gd2'; //default value
                    $config['source_image'] = $upload_path.$foto; //get original image
                    $config['new_image'] = $upload_path."watermarked/".$foto;
                    $config['wm_text'] = 'KHASANAH ARSIP UPT KEARSIPAN UNS';
                    $config['wm_type'] = 'text';
                    // $config['wm_font_path'] = './system/fonts/texb.ttf';
                    $config['wm_font_path'] = 'C:\x7\htdocs\ci-view1\system\fonts\texb.ttf';
                    $config['wm_font_size'] = ceil($tinggi/80); // biar font dinamis ngikutin ukuran file.
                    $config['wm_font_color'] = 'bde0fe';
                    // $config['wm_opacity'] = 50;
                    $config['wm_vrt_alignment'] = 'middle';
                    $config['wm_hor_alignment'] = 'right';
                    // $config['wm_hor_offset']='rig';
                    $config['wm_padding'] = '-20';
                    // $config['wm_margin'] = '100';
                    //$this->load->library('image_lib', $config);

				/*$data['watermark_img'] = $upload_path . $foto['file_name'];
                	$this->handle_success('Image was successfully uploaded to direcory <strong>' . $upload_path . '</strong> and watermarked.');*/
				 //$this->load->library('image_lib', $config);
			      $this->image_lib->initialize($config);

			      $this->image_lib->watermark();  
			}
		} 

		// setelah data dari form ditangkap, datanya akan diubah jadi array
		$data = array (
			'judul'				=>$judul,
			'foto'				=>$foto,
			'narasi'			=>$narasi,
			'grup'				=>$grup,
		);

		// biar $data masukk ke database tb_arsip_foto
		$this->M_arsip_foto->input_data($data,'tb_arsip_foto');
		//$this->db->insert('tb_arsip_foto',$data);
		redirect ('arsip_foto/index');

	}

	public function hapus ($id_arsip_foto)
	{
		$where = array ('id_arsip_foto'=>$id_arsip_foto);
		$this->M_arsip_foto->hapus_data($where, 'tb_arsip_foto');
		redirect ('arsip_foto/index');
	}


	public function edit ($id_arsip_foto)
	{	$this->data['title'] = 'Arsip Foto';
		$where = array ('id_arsip_foto'=>$id_arsip_foto);			// id_arsip_foto yang ada di tb_arsip_foto akan disimpan ke $array where.
		// buat fungsi yang akan dipake di M_arsip_foto
		$data['gruparsipfoto'] = $this->M_grup_arsip_foto->tampil_data()->result();
		$data ['arsip_foto'] = $this->M_arsip_foto->edit_data($where,'tb_arsip_foto')->result();
		// meload view
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('edit_arsip_foto', $data);
		$this->load->view('templates/footer');

	}

	// bikin controller update
	public function update()
	{
		/*$id_arsip_foto 				= $this->input->post('id_arsip_foto');
		$judul 			= $this->input->post('judul');
		$foto 					= $this->input->file('foto');
		$narasi 			= $this->input->post('narasi');

		// masukkan datanya ke dlam array
		$data= array (
			'judul'				=>$judul,
			'foto'						=>$foto,
			'narasi'				=>$narasi
		);

		$where = array (
			'id_arsip_foto' => $id_arsip_foto
			);
		// manggil method update datda dari m

		$this->M_arsip_foto->update_data($where
			, $data, 'tb_arsip_foto');
		// kalo udah akan diredirect ke
			redirect('arsip_foto/index');*/
//menangkap inputan dari form yg methodny POST
			$id_arsip_foto 				= $this->input->post('id_arsip_foto');
		$judul						= $this->input->POST('judul');	// inget POST('berdasarkan name di tag input')
		$foto						= $_FILES['foto'];			// $files('name')
		$narasi 					= $this->input->POST('narasi');
		$grup 						= $this->input->POST('grup');

		// if foto udah keisi. kalo ngga ada file yg diaplod maka ngga terjadi apapun. kalo fotonya ada akan dilakukan konfigurasi. yg 1st konfigurasi tempat penyimpanan/direktori penyimpanan. misal disimpan di folder asset.trus tar kitabuat folder foto. 
		//2nd. atur jenis file apa yang boleh di upload
		$config['upload_path']		='./assets/arsip_foto';
		$config['allowed_types']	='jpg|png|gif|jpeg';

		$this->load->library('upload', $config);
		if(!$this->upload->do_upload('foto')){	
		//if ($foto= ''){
			$data = array (
				'judul'				=>$judul,
				'narasi'			=>$narasi,
				'grup'				=>$grup,
			);
		}else{						// nek gagal ada notifnya
			
			$foto = $this->upload->data('file_name');		// berhasil, akan masuk ke db dengan file namenya
			$data = array (
				'judul'				=>$judul,
				'foto'				=>$foto,
				'narasi'			=>$narasi,
				'grup'				=>$grup,
			);
		} 

		// setelah data dari form ditangkap, datanya akan diubah jadi array

		$where = array (
			'id_arsip_foto' => $id_arsip_foto
		);
		// manggil method update datda dari m

		$this->M_arsip_foto->update_data($where, $data, 'tb_arsip_foto');
		// kalo udah akan diredirect ke
		redirect('arsip_foto/index');		

	}// end update

	public function search(){
		$this->data['title'] = 'Arsip Foto';

		$keyword = ($this->input->post('keyword'))? $this->input->post('keyword'):'';
     	//jika uri segmen 3 ada, maka nilai variabel $search akan diganti dengan nilai uri segmen 3
		$keyword = ($this->uri->segment(3)) ? $this->uri->segment(3) : $keyword;
		//$keyword = $this->input->post('keyword');

		$config['base_url'] 	= site_url('arsip_foto/search/'.$keyword);
		$config['total_rows']	= $this->M_arsip_foto->count_get_keyword($keyword);
		$config['per_page']		= 5;			// tiap halaman mau nampilin berapa jumlah data.
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
		$data['arsip_foto']	= $this->M_arsip_foto->get_data_search($keyword, $config['per_page'], $data['page']) -> result();
		//$data['grupalbum'] = $this->M_grup_arsip_foto->get_keyword($keyword)->result();
		//$data['grupalbum'] = $this->M_grup_arsip_foto->tampil_data()->result();	//bingung ini buat apa? perlu di set di search nya grup album ndak?
		// bikin link
		$data['pagination']	= $this->pagination->create_links();

		// $keyword = $this->input->post('keyword');
		// $data['arsip_foto'] = $this->M_arsip_foto->get_keyword($keyword);			
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('arsip_foto', $data);	//  view ke album
		$this->load->view('templates/footer');

	}// end search


	public function air()
	{	$id=$this->uri->segment(3);
		$source_image=$this->M_arsip_foto->get_nama_file($id);
		$wm_image=$this->M_arsip_foto->get_nama_file($id);


		// $config['source_image'] = './assets/arsip_foto/'.$source_image.'';
		// $config['new_image'] = './assets/arsip_foto/watermarked/'.$wm_image.'';
		$config['source_image'] = './assets/arsip_foto/'.$source_image.'';
		$config['new_image'] = './assets/arsip_foto/watermarked/'.$source_image.'';
		$config['wm_text'] = 'KHASANAH ARSIP UPT KEARSIPAN UNS';
		$config['wm_type'] = 'text';
		$config['wm_font_size'] = '16';
		$config['wm_font_color'] = 'D1193E';
		$config['wm_vrt_alignment'] = 'middle';
		$config['wm_hor_alignment'] = 'center';
		$config['wm_opacity'] = '10';

		// $this->load->library('image_lib', $config);
		// $this->image_lib->initialize($config);
		$this->load->library('image_lib');
		// Set your config up
		$this->image_lib->initialize($config);
		// Do your manipulation
		$this->image_lib->clear();

		// $this->image_lib->watermark(); 


		// echo "<title> Tutorial and Example </title>";
		// $this->load->library('image_lib'); 
		// $config['image_library'] = 'gd/gd2';
 	// 	$config['source_image'] = './assets/arsip_foto/1.jpg'; // It is the name of the source image
 	// 	$config['wm_text'] = 'Tutorial and Example.com';
 	// 	$config['wm_type'] = 'overlay'; // It shows the type of watermark()
 	// 	$config['wm_overlay_path'] = './assets/arsip_foto/watermarked/air.jpg'; // it is the name of the other image
 	// 	$config['wm_font_path'] = './system/fonts/texb.ttf';
 	// 	$config['wm_font_size'] = '20';
 	// 	$config['wm_font_color'] = '#4f1a10';
 	// 	$config['wm_vrt_alignment'] = 'middle';
 	// 	$config['wm_hor_alignment'] = 'center';
 	// 	$this->image_lib->initialize($config);
}
public function water_text()
		 { 
		 echo "<title> Tutorial and Example </title>";
		 $this->load->library('image_lib');
		 $config['image_library'] = 'gd2';
		 $config['source_image'] = './assets/arsip_foto/w.jpg';
		 $config['wm_text'] = 'KHASANAH ARSIP UPT KEARSIPAN UNS';
        $config['wm_type'] = 'text';
        // $config['wm_font_path'] = './system/fonts/texb.ttf';
        $config['wm_font_path'] = 'C:\x7\htdocs\ci-view1\system\fonts\texb.ttf';
        $config['wm_font_size'] = '32';
        $config['wm_font_color'] = 'D1193E';
        $config['wm_vrt_alignment'] = 'bottom';
        $config['wm_hor_alignment'] = 'right';
        // $config['wm_hor_offset']='rig';
        $config['wm_padding'] = '-150';
        $config['wm_margin'] = '100';
		 $this->image_lib->initialize($config); 
		 if ( ! $this->image_lib->watermark())
		 {
		         echo $this->image_lib->display_errors();
		 }else{
		 echo "Your image has been successfully watermarked with text";
		             }
		 }



 }	// end class
 ?>
