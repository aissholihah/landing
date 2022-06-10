<?php

class Grup_album extends Ci_Controller{
	public function __construct()
     {
          parent::__construct();
          
          $this->simple_login_admin->cek_login();
          

     }

	public function index()
	{	$this->data['title'] = 'Grup Album';
		$this->load->model("M_grup_album");
		$config['base_url'] 	= site_url('grup_album/index');
		$config['total_rows']	= $this->db->count_all('tb_grup_album');
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
		$data['grup_album']	= $this->M_grup_album->get_data($config['per_page'], $data['page']) -> result();

		// bikin link
		$data['pagination']	= $this->pagination->create_links();


		//$data['grup_album'] = $this->M_grup_album->tampil_data()->result();	// menampilkan ke model grup_album di method tampil_data()
		// meload view
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('grup_album', $data);
		$this->load->view('templates/footer');
	}

	public function tambah_aksi()
	{
		//menangkap inputan dari form yg methodny POST
		$nama_grup_album		= $this->input->POST('nama_grup_album');	// inget POST('berdasarkan name di tag input')
		$tahun_grup_album		= $this->input->POST('tahun_grup_album');
		// $email_grup_album 			= $this->input->POST('email_grup_album');

		// setelah data dari form ditangkap, datanya akan diubah jadi array
		$data = array (
			'nama_grup_album'			=>$nama_grup_album,
			'tahun_grup_album'			=>$tahun_grup_album,
			// 'email_grup_album'			=>$email_grup_album,
		);

		// biar $data masukk ke database tb_grup_album
		$this->M_grup_album->input_data($data,'tb_grup_album');
		redirect ('grup_album/index');

	}

	public function hapus ($id_grup_album)
	{
		$where = array ('id_grup_album'=>$id_grup_album);
		$this->M_grup_album->hapus_data($where, 'tb_grup_album');
		redirect ('grup_album/index');
	}


	public function edit ($id_grup_album)
	{	$this->data['title'] = 'Grup Album';
		$where = array ('id_grup_album'=>$id_grup_album);			// id yang ada di tb_grup_album akan disimpan ke $array where.
		// buat fungsi yang akan dipake di M_grup_album
		$data ['grup_album'] = $this->M_grup_album->edit_data($where,'tb_grup_album')->result();
		// meload view
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('editgrupalbum', $data);
		$this->load->view('templates/footer');

	}

	// bikin controller update
	public function update()
	{	$this->data['title'] = 'Grup Album';

		
		$id_grup_album = $this->input->post('id_grup_album');
		$nama_grup_album = $this->input->post('nama_grup_album');
		$tahun_grup_album = $this->input->post('tahun_grup_album');
		
		// masukkan datanya ke dlam array
		$data= array (
			'nama_grup_album'					=>$nama_grup_album,
			// 'id_grup_album'					=>$id_grup_album,
			'tahun_grup_album'				=>$tahun_grup_album
		);

		$where = array (
			'id_grup_album' => $id_grup_album
			);
		// manggil method update datda dari m

		$this->M_grup_album->update_data($where, $data, 'tb_grup_album');
		// kalo udah akan diredirect ke
		redirect('grup_album/index');
		

	}// end update


	public function search(){
		$this->data['title'] = 'Grup Album';
		$keyword = ($this->input->post('keyword'))? $this->input->post('keyword'):'';
     	//jika uri segmen 3 ada, maka nilai variabel $search akan diganti dengan nilai uri segmen 3
     	$keyword = ($this->uri->segment(3)) ? $this->uri->segment(3) : $keyword;
		//$keyword = $this->input->post('keyword');

		$config['base_url'] 	= site_url('grup_album/search/'.$keyword);
		$config['total_rows']	= $this->M_grup_album->count_get_keyword($keyword);
		$config['per_page']		= 10;			// tiap halaman mau nampilin berapa jumlah data.
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
		$data['grup_album']	= $this->M_grup_album->get_data_search($keyword, $config['per_page'], $data['page']) -> result();

		// bikin link
		$data['pagination']	= $this->pagination->create_links();


		//$keyword = $this->input->post('keyword');
		//$data['grup_album'] = $this->M_grup_album->get_keyword($keyword);			
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('grup_album', $data);	//  view ke artikel
		$this->load->view('templates/footer');

	}// end search





 }	// end class
 



?>


