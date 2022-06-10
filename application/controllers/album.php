<?php 
class album extends Ci_Controller{
	public function __construct()
     {
          parent::__construct();
          
          $this->simple_login_admin->cek_login();
          

     }
	public function index()
	{	$this->data['title'] = 'Album';
		
		$config['base_url'] 	= site_url('album/index');
		$config['total_rows']	= $this->db->count_all('tb_album');
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
		$data['album']	= $this->M_album->get_data($config['per_page'], $data['page']) -> result();
		$data['grupalbum'] = $this->M_grup_album->tampil_data()->result();
		$data['tahungrup']= $this->M_grup_album->tampil_data()->result();
		// bikin link
		$data['pagination']	= $this->pagination->create_links();


		
		//$this->load->model("M_album");
		//$data['album'] = $this->M_album->tampil_data()->result();	// menampilkan ke model album di method tampil_data()
		// meload view
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('album', $data);
		$this->load->view('templates/footer');
		
	}

	public function tambah_aksi()
	{
		//menangkap inputan dari form yg methodny POST
		$judul_album			= $this->input->POST('judul_album');	// inget POST('berdasarkan name di tag input')
		$foto					= $_FILES['foto'];			// $files('name')
		$narasi_album 			= $this->input->POST('narasi_album');
		// $tahun 			= $this->input->POST('tahun');
		$grup 					= $this->input->POST('grup');
		


		// if foto udah keisi. kalo ngga ada file yg diaplod maka ngga terjadi apapun. kalo fotonya ada akan dilakukan konfigurasi. yg 1st konfigurasi tempat penyimpanan/direktori penyimpanan. misal disimpan di folder asset.trus tar kitabuat folder foto. 
		//2nd. atur jenis file apa yang boleh di upload
		if ($foto= ''){}else{
			$config['upload_path']		='./assets/foto';
			$config['allowed_types']	='jpg|png|gif|jpeg';

			$this->load->library('upload', $config);
			if(!$this->upload->do_upload('foto')){				// nek gagal ada notifnya
				echo "upload gagal"; die();
			}else {
				$foto = $this->upload->data('file_name');		// berhasil, akan masuk ke db dengan file namenya
				
			}
		} 

		// setelah data dari form ditangkap, datanya akan diubah jadi array
		$data = array (
			'judul_album'				=>$judul_album,
			'foto'						=>$foto,
			'narasi_album'				=>$narasi_album,
			// 'tahun'					=>$tahun,
			'grup'						=>$grup,
		);

		// biar $data masukk ke database tb_album
		$this->M_album->input_data($data,'tb_album');
		//$this->db->insert('tb_album',$data);
		redirect ('album/index');

	}

	public function hapus ($id_album)
	{
		$where = array ('id_album'=>$id_album);
		$this->M_album->hapus_data($where, 'tb_album');
		redirect ('album/index');
	}


	public function edit ($id_album)
	{	$this->data['title'] = 'Album';
		$where = array ('id_album'=>$id_album);			// id_album yang ada di tb_album akan disimpan ke $array where.
		// buat fungsi yang akan dipake di M_album
		$data['grupalbum'] = $this->M_grup_album->tampil_data()->result();
		$data ['album'] = $this->M_album->edit_data($where,'tb_album')->result();
		// meload view
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('editalbum', $data);
		$this->load->view('templates/footer');

	}

	// bikin controller update
	public function update()
	{	$this->data['title'] = 'Album';
		
//menangkap inputan dari form yg methodny POST
		$id_album 				= $this->input->post('id_album');
		$judul_album				= $this->input->POST('judul_album');	// inget POST('berdasarkan name di tag input')
		$foto					= $_FILES['foto'];			// $files('name')
		$narasi_album 				= $this->input->POST('narasi_album');
		$grup				= $this->input->POST('grup');

		// if foto udah keisi. kalo ngga ada file yg diaplod maka ngga terjadi apapun. kalo fotonya ada akan dilakukan konfigurasi. yg 1st konfigurasi tempat penyimpanan/direktori penyimpanan. misal disimpan di folder asset.trus tar kitabuat folder foto. 
		//2nd. atur jenis file apa yang boleh di upload
		$config['upload_path']		='./assets/foto';
		$config['allowed_types']	='jpg|png|gif|jpeg';

		$this->load->library('upload', $config);
		if(!$this->upload->do_upload('foto')){	
		//if ($foto= ''){
			$data = array (
				'judul_album'				=>$judul_album,
				'narasi_album'				=>$narasi_album,
				'grup'					=>$grup,
			);
		}else{						// nek gagal ada notifnya
			
			$foto = $this->upload->data('file_name');		// berhasil, akan masuk ke db dengan file namenya
			$data = array (
				'judul_album'					=>$judul_album,
				'foto'						=>$foto,
				'narasi_album'					=>$narasi_album,
				'grup'						=>$grup,
			);
		} 

		// setelah data dari form ditangkap, datanya akan diubah jadi array

		$where = array (
			'id_album' => $id_album
			);
		// manggil method update datda dari m

		$this->M_album->update_data($where, $data, 'tb_album');
		// kalo udah akan diredirect ke
		redirect('album/index');		

	}// end update

	public function search(){
		$this->data['title'] = 'Album';
		$keyword = ($this->input->post('keyword'))? $this->input->post('keyword'):'';
     	//jika uri segmen 3 ada, maka nilai variabel $search akan diganti dengan nilai uri segmen 3
     	$keyword = ($this->uri->segment(3)) ? $this->uri->segment(3) : $keyword;
		//$keyword = $this->input->post('keyword');

		$config['base_url'] 	= site_url('album/search/'.$keyword);
		$config['total_rows']	= $this->M_album->count_get_keyword($keyword);
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
		$data['album']	= $this->M_album->get_data_search($keyword, $config['per_page'], $data['page']) -> result();
		//$data['grupalbum'] = $this->M_grup_album->get_keyword($keyword)->result();
		//$data['grupalbum'] = $this->M_grup_album->tampil_data()->result();	//bingung ini buat apa? perlu di set di search nya grup album ndak?
		// bikin link
		$data['pagination']	= $this->pagination->create_links();

		// $keyword = $this->input->post('keyword');
		// $data['album'] = $this->M_album->get_keyword($keyword);			
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('album', $data);	//  view ke album
		$this->load->view('templates/footer');

	}// end search



 }	// end class
 ?>
