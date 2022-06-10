<?php 
class Arsip_video extends Ci_Controller{
	public function __construct()
     {
          parent::__construct();
          
          $this->simple_login_admin->cek_login();
          

     }
	public function index()
	{	$this->data['title'] = 'Arsip Video';
		
		$config['base_url'] 	= site_url('arsip_video/index');
		$config['total_rows']	= $this->db->count_all('tb_arsip_video');
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
		$data['arsip_video']	= $this->M_arsip_video->get_data($config['per_page'], $data['page']) -> result();
		$data['gruparsipvideo'] = $this->M_grup_arsip_video->tampil_data()->result();
		// bikin link
		$data['pagination']	= $this->pagination->create_links();


		
		//$this->load->model("M_arsip_video");
		//$data['arsip_video'] = $this->M_arsip_video->tampil_data()->result();	// menampilkan ke model album di method tampil_data()
		// meload view
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('arsip_video', $data);
		$this->load->view('templates/footer');
		
	}

	public function tambah_aksi()
	{
		//menangkap inputan dari form yg methodny POST
		$judul			= $this->input->POST('judul');	// inget POST('berdasarkan name di tag input')
		$video			= $_FILES['video'];			// $files('name')
		$narasi 		= $this->input->POST('narasi');
		$grup 			= $this->input->POST('grup');
		


		// if video udah keisi. kalo ngga ada file yg diaplod maka ngga terjadi apapun. kalo videonya ada akan dilakukan konfigurasi. yg 1st konfigurasi tempat penyimpanan/direktori penyimpanan. misal disimpan di folder asset.trus tar kitabuat folder video. 
		//2nd. atur jenis file apa yang boleh di upload
		if ($video= ''){}else{
			$config['upload_path']		='./assets/arsip_video';
			$config['allowed_types']	='mp4';
			$config['max_size'] = '100000';
			$config['max_width'] = '10240';
			$config['max_height'] ='7680';

			$this->load->library('upload', $config);
			if(!$this->upload->do_upload('video')){				// nek gagal ada notifnya
				echo "upload gagal"; die();
			}else {
				$video = $this->upload->data('file_name');		// berhasil, akan masuk ke db dengan file namenya
				
			}
		} 

		// setelah data dari form ditangkap, datanya akan diubah jadi array
		$data = array (
			'judul'				=>$judul,
			'video'				=>$video,
			'narasi'				=>$narasi,
			'grup'				=>$grup,
		);

		// biar $data masukk ke database tb_arsip_video
		$this->M_arsip_video->input_data($data,'tb_arsip_video');
		//$this->db->insert('tb_arsip_video',$data);
		redirect ('arsip_video/index');

	}

	public function hapus ($id_arsip_video)
	{
		$where = array ('id_arsip_video'=>$id_arsip_video);
		$this->M_arsip_video->hapus_data($where, 'tb_arsip_video');
		redirect ('arsip_video/index');
	}


	public function edit ($id_arsip_video)
	{	$this->data['title'] = 'Arsip Video';
		$where = array ('id_arsip_video'=>$id_arsip_video);			// id_arsip_video yang ada di tb_arsip_video akan disimpan ke $array where.
		// buat fungsi yang akan dipake di M_arsip_video
		$data['gruparsipvideo'] = $this->M_grup_arsip_video->tampil_data()->result();
		// $data['arsip_video'] = $this->M_arsip_video->tampil_data()->result();
		$data ['arsip_video'] = $this->M_arsip_video->edit_data($where,'tb_arsip_video')->result();
		// meload view
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('edit_arsip_video', $data);
		$this->load->view('templates/footer');

	}

	// bikin controller update
	public function update()
	{
		/*$id_arsip_video 				= $this->input->post('id_arsip_video');
		$judul 			= $this->input->post('judul');
		$video 					= $this->input->file('video');
		$narasi 			= $this->input->post('narasi');

		// masukkan datanya ke dlam array
		$data= array (
			'judul'				=>$judul,
			'video'						=>$video,
			'narasi'				=>$narasi
		);

		$where = array (
			'id_arsip_video' => $id_arsip_video
			);
		// manggil method update datda dari m

		$this->M_arsip_video->update_data($where
			, $data, 'tb_arsip_video');
		// kalo udah akan diredirect ke
		redirect('arsip_video/index');*/
//menangkap inputan dari form yg methodny POST
		$id_arsip_video 				= $this->input->post('id_arsip_video');
		$judul						= $this->input->POST('judul');	// inget POST('berdasarkan name di tag input')
		$video						= $_FILES['video'];			// $files('name')
		$narasi 					= $this->input->POST('narasi');
		$grup 						= $this->input->POST('grup');

		// if video udah keisi. kalo ngga ada file yg diaplod maka ngga terjadi apapun. kalo videonya ada akan dilakukan konfigurasi. yg 1st konfigurasi tempat penyimpanan/direktori penyimpanan. misal disimpan di folder asset.trus tar kitabuat folder video. 
		//2nd. atur jenis file apa yang boleh di upload
		$config['upload_path']		='./assets/arsip_video';
		$config['allowed_types']	='mp4';
		$config['max_size'] = '10000';
		$config['max_width'] = '10240';
		$config['max_height'] ='7680';

		$this->load->library('upload', $config);
		if(!$this->upload->do_upload('video')){	
		//if ($video= ''){
			$data = array (
				'judul'				=>$judul,
				'narasi'				=>$narasi,
				'grup'				=>$grup,
			);
		}else{						// nek gagal ada notifnya
			
			$video = $this->upload->data('file_name');		// berhasil, akan masuk ke db dengan file namenya
			$data = array (
				'judul'				=>$judul,
				'video'				=>$video,
				'narasi'				=>$narasi,
				'grup'				=>$grup,
			);
		} 

		// setelah data dari form ditangkap, datanya akan diubah jadi array

		$where = array (
			'id_arsip_video' => $id_arsip_video
			);
		// manggil method update datda dari m

		$this->M_arsip_video->update_data($where, $data, 'tb_arsip_video');
		// kalo udah akan diredirect ke
		redirect('arsip_video/index');		

	}// end update

	public function search(){
		$this->data['title'] = 'Arsip Video';

		$keyword = ($this->input->post('keyword'))? $this->input->post('keyword'):'';
     	//jika uri segmen 3 ada, maka nilai variabel $search akan diganti dengan nilai uri segmen 3
     	$keyword = ($this->uri->segment(3)) ? $this->uri->segment(3) : $keyword;
		//$keyword = $this->input->post('keyword');

		$config['base_url'] 	= site_url('arsip_video/search/'.$keyword);
		$config['total_rows']	= $this->M_arsip_video->count_get_keyword($keyword);
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
		$data['arsip_video']	= $this->M_arsip_video->get_data_search($keyword, $config['per_page'], $data['page']) -> result();
		//$data['grupalbum'] = $this->M_grup_arsip_video->get_keyword($keyword)->result();
		//$data['grupalbum'] = $this->M_grup_arsip_video->tampil_data()->result();	//bingung ini buat apa? perlu di set di search nya grup album ndak?
		// bikin link
		$data['pagination']	= $this->pagination->create_links();

		// $keyword = $this->input->post('keyword');
		// $data['arsip_video'] = $this->M_arsip_video->get_keyword($keyword);			
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('arsip_video', $data);	//  view ke album
		$this->load->view('templates/footer');

	}// end search



 }	// end class
 ?>
