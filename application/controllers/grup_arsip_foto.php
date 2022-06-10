<?php

class Grup_arsip_foto extends Ci_Controller{
	public function __construct()
     {
          parent::__construct();
          
          $this->simple_login_admin->cek_login();
          

     }

	public function index()
	{	$this->data['title'] = 'Grup Arsip Foto';
		$this->load->model("M_grup_arsip_foto");
		$config['base_url'] 	= site_url('grup_arsip_foto/index');
		$config['total_rows']	= $this->db->count_all('tb_grup_arsip_foto');
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
		$data['grup_arsip_foto']	= $this->M_grup_arsip_foto->get_data($config['per_page'], $data['page']) -> result();

		// bikin link
		$data['pagination']	= $this->pagination->create_links();


		//$data['grup_arsip_foto'] = $this->M_grup_arsip_foto->tampil_data()->result();	// menampilkan ke model grup_arsip_foto di method tampil_data()
		// meload view
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('grup_arsip_foto', $data);
		$this->load->view('templates/footer');
	}

	public function tambah_aksi()
	{
		//menangkap inputan dari form yg methodny POST
		$nama_grup_arsip_foto		= $this->input->POST('nama_grup_arsip_foto');	// inget POST('berdasarkan name di tag input')
		 //$id_grup_arsip_foto		= $this->input->POST('id_grup_arsip_foto');
		// $email_grup_arsip_foto 			= $this->input->POST('email_grup_arsip_foto');

		// setelah data dari form ditangkap, datanya akan diubah jadi array
		$data = array (
			'nama_grup_arsip_foto'			=>$nama_grup_arsip_foto,
			'tahun'			=>$tahun,
			// 'email_grup_arsip_foto'			=>$email_grup_arsip_foto,
		);

		// biar $data masukk ke database tb_grup_arsip_foto
		$this->M_grup_arsip_foto->input_data($data,'tb_grup_arsip_foto');
		redirect ('grup_arsip_foto/index');

	}

	public function hapus ($id_grup_arsip_foto)
	{
		$where = array ('id_grup_arsip_foto'=>$id_grup_arsip_foto);
		$this->M_grup_arsip_foto->hapus_data($where, 'tb_grup_arsip_foto');
		redirect ('grup_arsip_foto/index');
	}


	public function edit ($id_grup_arsip_foto)
	{	$this->data['title'] = 'Grup Arsip Foto';
		$where = array (
			'id_grup_arsip_foto'=>$id_grup_arsip_foto,
			
		);			// id yang ada di tb_grup_arsip_foto akan disimpan ke $array where.
		// buat fungsi yang akan dipake di M_grup_arsip_foto
		$data ['grup_arsip_foto'] = $this->M_grup_arsip_foto->edit_data($where,'tb_grup_arsip_foto')->result();
		// meload view
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('edit_grup_arsip_foto', $data);
		$this->load->view('templates/footer');

	}

	// bikin controller update
	public function update()
	{
		$id_grup_arsip_foto = $this->input->post('id_grup_arsip_foto');
		$nama_grup_arsip_foto = $this->input->post('nama_grup_arsip_foto');
		$tahun= $this->input->post('tahun');
		
		// masukkan datanya ke dlam array
		$data= array (
			'nama_grup_arsip_foto'					=>$nama_grup_arsip_foto,
			'tahun'								=>$tahun,

			 'id_grup_arsip_foto'					=>$id_grup_arsip_foto,
			// 'email_grup_arsip_foto'				=>$email_grup_arsip_foto
		);

		$where = array (
			'id_grup_arsip_foto' => $id_grup_arsip_foto
			);
		// manggil method update datda dari m

		$this->M_grup_arsip_foto->update_data($where, $data, 'tb_grup_arsip_foto');
		// kalo udah akan diredirect ke
		redirect('grup_arsip_foto/index');
		

	}// end update


	public function search(){
		$this->data['title'] = 'Grup Arsip Foto';
		$keyword = ($this->input->post('keyword'))? $this->input->post('keyword'):'';
     	//jika uri segmen 3 ada, maka nilai variabel $search akan diganti dengan nilai uri segmen 3
     	$keyword = ($this->uri->segment(3)) ? $this->uri->segment(3) : $keyword;
		//$keyword = $this->input->post('keyword');

		$config['base_url'] 	= site_url('grup_arsip_foto/search/'.$keyword);
		$config['total_rows']	= $this->M_grup_arsip_foto->count_get_keyword($keyword);
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
		$data['grup_arsip_foto']	= $this->M_grup_arsip_foto->get_data_search($keyword, $config['per_page'], $data['page']) -> result();

		// bikin link
		$data['pagination']	= $this->pagination->create_links();


		//$keyword = $this->input->post('keyword');
		//$data['grup_arsip_foto'] = $this->M_grup_arsip_foto->get_keyword($keyword);			
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('grup_arsip_foto', $data);	//  view ke artikel
		$this->load->view('templates/footer');

	}// end search





 }	// end class
 



?>


