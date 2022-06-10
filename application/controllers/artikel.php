<?php 
class Artikel extends Ci_Controller{
	public function __construct()
     {
          parent::__construct();
          
          $this->simple_login_admin->cek_login();
          

     }
	public function index()
	{	$this->data['title'] = 'Artikel';


		$config['base_url'] 	= site_url('artikel/index');
		$config['total_rows']	= $this->db->count_all('tb_artikel');
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
		$data['artikel']	= $this->M_artikel->get_data($config['per_page'], $data['page']) -> result();

		// bikin link
		$data['pagination']	= $this->pagination->create_links();


		
		//$data['artikel'] = $this->M_artikel->tampil_data()->result();	// menampilkan ke model artikel di method tampil_data()
		// meload view
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('artikel', $data);
		$this->load->view('templates/footer');
	}

	public function tambah_aksi()
	{
	// menampilkan ke model artikel di method tampil_data()

		//menangkap inputan dari form yg methodny POST
		$gambar					=  $_FILES['gambar'];
		//$gambar 					= $this->input->POST('gambar');
		$jenis_artikel				= $this->input->POST('jenis_artikel');	// inget POST('berdasarkan name di tag input')
		$tgl_publikasi_artikel		= $this->input->POST('tgl_publikasi_artikel');
		$judul_artikel 				= $this->input->POST('judul_artikel');
		$author 					= $this->input->POST('author');
		$isi 						= $this->input->POST('isi');
		//$url_artikel 				= $this->input->POST('url_artikel');

		if ($gambar= ''){}else{
			$config['upload_path']		='./assets/gambar_artikel';
			$config['allowed_types']	='jpg|png|gif|jpeg';

			$this->load->library('upload', $config);
			if(!$this->upload->do_upload('gambar')){				// nek gagal ada notifnya
				echo "upload gagal"; die();
			}else {
				$gambar = $this->upload->data('file_name');		// berhasil, akan masuk ke db dengan file namenya
				
			}
		} 

		// setelah data dari form ditangkap, datanya akan diubah jadi array
		$data = array (
			'gambar'						=>$gambar,
			'jenis_artikel'					=>$jenis_artikel,
			'tgl_publikasi_artikel'			=>$tgl_publikasi_artikel,
			'judul_artikel'					=>$judul_artikel,
			'author'						=>$author,
			'isi'							=>$isi,
			//'url_artikel'					=>$url_artikel,
		);

		// biar $data masukk ke database tb_administrator
		$this->M_artikel->input_data($data,'tb_artikel');
		redirect ('artikel/index');
	}
	public function baru(){
		$this->data['title'] = 'Artikel';
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('newartikel');	// 
		$this->load->view('templates/footer');
	}
	public function hapus ($id_artikel)
	{	
		$where = array ('id_artikel'=>$id_artikel);
		$this->M_artikel->hapus_data($where, 'tb_artikel');
		redirect ('artikel/index');
	}

	public function edit ($id_artikel)
	{	$this->data['title'] = 'Artikel';
		$where = array ('id_artikel'=>$id_artikel);			// id yang ada di tb_administrator akan disimpan ke $array where.
		// buat fungsi yang akan dipake di M_administrator
		$data ['artikel'] = $this->M_artikel->edit_data($where,'tb_artikel')->result();
		// result() untuk mengenerate hasil query menjadi array.
		// meload view
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('editartikel', $data);	// 
		$this->load->view('templates/footer');

	}

	// bikin controller update
	public function update()
	{	$this->data['title'] = 'Artikel';
		$id_artikel 			= $this->input->post('id_artikel');
		$gambar					= $_FILES['gambar'];
		$jenis_artikel			= $this->input->post('jenis_artikel');
		$tgl_publikasi_artikel 	= $this->input->post('tgl_publikasi_artikel');
		$judul_artikel 			= $this->input->post('judul_artikel');
		$author 				= $this->input->post('author');
		$isi 					= $this->input->post('isi');
		//$url_artikel = $this->input->post('url_artikel');

		//if ($gambar= ''){}else{
		$config['upload_path']		='./assets/gambar_artikel';
		$config['allowed_types']	='jpg|png|gif|jpeg';

		$this->load->library('upload', $config);
			if(!$this->upload->do_upload('gambar')){				// nek gagal ada notifnya
				
				$data = array (
			//'gambar'						=>$gambar,
					'jenis_artikel'					=>$jenis_artikel,
					'tgl_publikasi_artikel'			=>$tgl_publikasi_artikel,
					'judul_artikel'					=>$judul_artikel,
					'author'						=>$author,
					'isi'							=>$isi,

				);
			}
			else{
				$nama_gambar = $this->upload->data('file_name'); 	// dari array files yang dimasukin ke db harus string(spesifik). yang ini yg diasukin data file namenya.
				$data = array (
					'gambar'						=>$nama_gambar,
					'jenis_artikel'					=>$jenis_artikel,
					'tgl_publikasi_artikel'			=>$tgl_publikasi_artikel,
					'judul_artikel'					=>$judul_artikel,
					'author'						=>$author,
					'isi'							=>$isi,);

				}

				//$gambar = $this->upload->data('file_name');		// berhasil, akan masuk ke db dengan file namenya
				$where = array (
					'id_artikel' => $id_artikel
				);
		// manggil method update data dari m

				$this->M_artikel->update_data($where, $data, 'tb_artikel');
		// kalo udah akan diredirect ke
				redirect('artikel/index');

		}//end update

	// public function search(){
	// 	$keyword = $this->input->post('keyword');
	// 	$data['artikel'] = $this->M_artikel->get_keyword($keyword);

	// 	$config['base_url'] 	= site_url('artikel/search/'.$keyword);
	// 	$config['total_rows']	= $this->M_artikel->count_get_keyword($keyword);
	// 	$config['per_page']		= 1;			// tiap halaman mau nampilin berapa jumlah data.
	// 	$config['uri_segment']	= 4;			// untuk uri segmen
	// 	$choice					= $config["total_rows"]/$config['per_page'];
	// 	$config["num_links"]		= floor($choice);

	// 	// inisalisasi pagination 
	// 	$this->pagination->initialize($config);
	// 	$data['page']	= ($this->uri->segment(4))? $this->uri->segment(4) :0;
	// 	$data['artikel']	= $this->M_artikel->get_data_search($keyword, $config['per_page'], $data['page']) -> result();

	// 	// bikin link
	// 	$data['pagination']	= $this->pagination->create_links();


	// 	$this->load->view('templates/header');
	// 	$this->load->view('templates/sidebar');
	// 	$this->load->view('artikel', $data);	//  view ke artikel
	// 	$this->load->view('templates/footer');

	// }

	public function search(){
		$this->data['title'] = 'Artikel';
		$keyword = ($this->input->post('keyword'))? $this->input->post('keyword'):'';
     	//jika uri segmen 3 ada, maka nilai variabel $search akan diganti dengan nilai uri segmen 3
		$keyword = ($this->uri->segment(3)) ? $this->uri->segment(3) : $keyword;
		//$keyword = $this->input->post('keyword');

		$config['base_url'] 	= site_url('artikel/search/'.$keyword);
		$config['total_rows']	= $this->M_artikel->count_get_keyword($keyword);
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
		$data['artikel']	= $this->M_artikel->get_data_search($keyword, $config['per_page'], $data['page']) -> result();

		// bikin link
		$data['pagination']	= $this->pagination->create_links();


		//$keyword = $this->input->post('keyword');
		//$data['artikel'] = $this->M_artikel->get_keyword($keyword);			
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('artikel', $data);	//  view ke artikel
		$this->load->view('templates/footer');

	}// end search







}	// end class
?>