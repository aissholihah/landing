<?php

class User extends Ci_Controller{

	public function index()
	{	$this->data['title'] = 'User';
		//$this->load->model("M_user");
		$config['base_url'] 	= site_url('user/index');
		$config['total_rows']	= $this->db->count_all('tb_user');
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
		$data['user']	= $this->M_user->get_data($config['per_page'], $data['page']) -> result();

		// bikin link
		$data['pagination']	= $this->pagination->create_links();


		//$data['user'] = $this->M_user->tampil_data()->result();	// menampilkan ke model user di method tampil_data()
		// meload view
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('user', $data);
		$this->load->view('templates/footer');
	}

	public function tambah_aksi()
	{
		//menangkap inputan dari form yg methodny POST
		$username			= $this->input->POST('username');	// inget POST('berdasarkan name di tag input')
		$email 				= $this->input->POST('email');
		$nama 				= $this->input->POST('nama');
		$tgl_lahir 			= $this->input->POST('tgl_lahir');
		$alamat 			= $this->input->POST('alamat');
		$pekerjaan 			= $this->input->POST('pekerjaan');
		$institusi 			= $this->input->POST('institusi');




		// setelah data dari form ditangkap, datanya akan diubah jadi array
		$data = array (
			'username'			=>$username,
			'email'				=>$email,
			'nama'				=>$nama,
			'tgl_lahir'			=>$tgl_lahir,
			'alamat'			=>$alamat,
			'pekerjaan'			=>$pekerjaan,
			'institusi'			=>$institusi,
		);

		// biar $data masukk ke database tb_user
		$this->M_user->input_data($data,'tb_user');
		redirect ('user/index');

	}

	public function hapus ($id_user)
	{
		$where = array ('id_user'=>$id_user);
		$this->M_user->hapus_data($where, 'tb_user');
		redirect ('user/index');
	}


	public function edit ($id_user)
	{	$this->data['title'] = 'User';
		$where = array ('id_user'=>$id_user);			// id yang ada di tb_user akan disimpan ke $array where.
		// buat fungsi yang akan dipake di M_user
		$data ['user'] = $this->M_user->edit_data($where,'tb_user')->result();
		// meload view
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('edituser', $data);
		$this->load->view('templates/footer');

	}

	// bikin controller update
	public function update()
	{	$this->data['title'] = 'User';

	//menangkap inputan dari form yg methodny POST
		$id_user = $this->input->post('id_user');		
		$username			= $this->input->POST('username');	// inget POST('berdasarkan name di tag input')
		$email 				= $this->input->POST('email');
		$nama 				= $this->input->POST('nama');
		$tgl_lahir 			= $this->input->POST('tgl_lahir');
		$alamat 			= $this->input->POST('alamat');
		$pekerjaan 			= $this->input->POST('pekerjaan');
		$institusi 			= $this->input->POST('institusi');

		// masukkan datanya ke dlam array
		$data= array (
			'username'			=>$username,
			'email'				=>$email,
			'nama'				=>$nama,
			'tgl_lahir'			=>$tgl_lahir,
			'alamat'			=>$alamat,
			'pekerjaan'			=>$pekerjaan,
			'institusi'			=>$institusi,
		);

		$where = array (
			'id_user' => $id_user
			);
		// manggil method update datda dari m

		$this->M_user->update_data($where
			, $data, 'tb_user');
		// kalo udah akan diredirect ke
		redirect('user/index');
		

	}// end update


	public function search(){
		$this->data['title'] = 'User';
		$keyword = ($this->input->post('keyword'))? $this->input->post('keyword'):'';
     	//jika uri segmen 3 ada, maka nilai variabel $search akan diganti dengan nilai uri segmen 3
     	$keyword = ($this->uri->segment(3)) ? $this->uri->segment(3) : $keyword;
		//$keyword = $this->input->post('keyword');

		$config['base_url'] 	= site_url('user/search/'.$keyword);
		$config['total_rows']	= $this->M_user->count_get_keyword($keyword);
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
		$data['user']	= $this->M_user->get_data_search($keyword, $config['per_page'], $data['page']) -> result();

		// bikin link
		$data['pagination']	= $this->pagination->create_links();


		//$keyword = $this->input->post('keyword');
		//$data['user'] = $this->M_user->get_keyword($keyword);			
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('user', $data);	//  view ke artikel
		$this->load->view('templates/footer');

		// var_dump($user); var_dump($username);

	}// end search





 }	// end class
 



?>


