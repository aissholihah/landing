<?php 
class Regulasi extends Ci_Controller{
	public function index()
	{
		//$this->load->model("M_user");
		$config['base_url'] 	= site_url('regulasi/index');
		$config['total_rows']	= $this->db->count_all('tb_regulasi');
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
		$config['next_tagl_close']	='<span aria-hedden="true">& raquo</span></span></li>';
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
		$data['regulasi']	= $this->M_regulasi->get_data($config['per_page'], $data['page']) -> result();

		// bikin link
		$data['pagination']	= $this->pagination->create_links();

		//$this->load->model("M_regulasi");
		//$data['regulasi'] = $this->M_regulasi->tampil_data()->result();	// menampilkan ke model regulasi di method tampil_data()
		// jadi maksud ['regulasi'] adalah: kan pas yg di foreach tadi $... as $... . jadi dia itu var pertamanya.
		// meload view
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('regulasi', $data);
		//$this->load->view('editregulasi', $data);
		$this->load->view('templates/footer');
	}

	public function tambah_aksi()
	{
		//menangkap inputan dari form yg methodny POST
		$judul_regulasi			= $this->input->POST('judul_regulasi');	// inget POST('berdasarkan name di tag input')
		
		$file_regulasi 			= $_FILES['file_regulasi'];		//[name]

		if ($file_regulasi= ''){}else{
			$config['upload_path']		='./assets/regulasi';
			$config['allowed_types']	='pdf';

			$this->load->library('upload', $config);
			if(!$this->upload->do_upload('file_regulasi')){				// nek gagal ada notifnya // do upload (name)
				echo "upload gagal"; die();
			}else {
				$file_regulasi = $this->upload->data('file_name');		// berhasil, akan masuk ke db dengan file namenya
				
			}
		}

		// setelah data dari form ditangkap, datanya akan diubah jadi array
		$data = array (
			'judul_regulasi'					=>$judul_regulasi,
			
			'file_regulasi'						=>$file_regulasi,
		);


		// biar $data masukk ke database tb_administrator
		$this->M_regulasi->input_data($data,'tb_regulasi');
		redirect ('regulasi/index');
	
	}

	public function hapus ($id_regulasi)
	{
		$where = array ('id_regulasi'=>$id_regulasi);
		$this->M_regulasi->hapus_data($where, 'tb_regulasi');
		redirect ('regulasi/index');
	}

	public function edit ($id_regulasi)
	{
		$where = array ('id_regulasi'=>$id_regulasi);			// id_regulasi yang ada di tb_administrator akan disimpan ke $array where.
		// buat fungsi yang akan dipake di M_administrator
		$data ['regulasi'] = $this->M_regulasi->edit_data($where,'tb_regulasi')->result();
		// result() untuk mengenerate hasil query menjadi array.
		// meload view
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('editregulasi', $data);	// 
		$this->load->view('templates/footer');

	}

	// bikin controller update
	public function update()
	{
		// $id_regulasi = $this->input->post('id_regulasi');
		// $judul_regulasi = $this->input->post('judul_regulasi');
		// $tglasi_regulasi = $this->input->post('tglasi_regulasi');
		// $unit_kerja = $this->input->post('unit_kerja');

		// // masukkan datanya ke dlam array
		// $data= array (
		// 	'judul_regulasi'			=>$judul_regulasi,
		// 	'tglasi_regulasi'			=>$tglasi_regulasi,
		// 	'unit_kerja'				=>$unit_kerja,
		// 	'file_regulasi'					=>$file_regulasi,
		// );

		// $where = array (
		// 	'id_regulasi' => $id_regulasi
		// 	);
		// // manggil method update datda dari m

		// $this->M_administrator->update_data($where
		// 	, $data, 'tb_regulasi');
		// // kalo udah akan diredirect ke
		// redirect('regulasi/index');
		$id_regulasi = $this->input->post('id');
		$judul_regulasi = $this->input->post('judul_regulasi');
		
		$file_regulasi 			= $_FILES['file_regulasi'];

		// if foto udah keisi. kalo ngga ada file yg diaplod maka ngga terjadi apapun. kalo fotonya ada akan dilakukan konfigurasi. yg 1st konfigurasi tempat penyimpanan/direktori penyimpanan. misal disimpan di folder asset.trus tar kitabuat folder foto. 
		//2nd. atur jenis file apa yang boleh di upload
		$config['upload_path']		='./assets/regulasi';
		$config['allowed_types']	='pdf';

		$this->load->library('upload', $config);
		if(!$this->upload->do_upload('file_regulasi')){
		//if ($file_regulasi= ''){
			$data = array (
				
				'judul_regulasi'				=>$judul_regulasi,
				
			);
		}else{						
			
			$file_regulasi = $this->upload->data('file_name');		// berhasil, akan masuk ke db dengan file namenya
			$data = array (
			'judul_regulasi'					=>$judul_regulasi,
			
			'file_regulasi'					=>$file_regulasi
			);
		}
			$where = array (
			'id_regulasi' => $id_regulasi
			);
		// manggil method update datda dari m

		$this->M_regulasi->update_data($where, $data, 'tb_regulasi');
		// kalo udah akan diredirect ke
		redirect('regulasi/index');	
		}// end update

			

		public function search(){
		$keyword = ($this->input->post('keyword'))? $this->input->post('keyword'):'';
     	//jika uri segmen 3 ada, maka nilai variabel $search akan diganti dengan nilai uri segmen 3
     	$keyword = ($this->uri->segment(3)) ? $this->uri->segment(3) : $keyword;
		//$keyword = $this->input->post('keyword');

		$config['base_url'] 	= site_url('regulasi/search/'.$keyword);
		$config['total_rows']	= $this->M_regulasi->count_get_keyword($keyword);
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
		$config['next_tagl_close']	='<span aria-hedden="true">& raquo</span></span></li>';
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
		$data['regulasi']	= $this->M_regulasi->get_data_search($keyword, $config['per_page'], $data['page']) -> result();

		// bikin link
		$data['pagination']	= $this->pagination->create_links();


		//$keyword = $this->input->post('keyword');
		//$data['user'] = $this->M_user->get_keyword($keyword);			
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('regulasi', $data);	//  view ke artikel
		$this->load->view('templates/footer');

	}// end search




	}// end class
?>