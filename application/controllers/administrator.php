<?php 
class Administrator extends Ci_Controller{

	public function __construct()
     {
          parent::__construct();
          
          $this->simple_login_admin->cek_login();
          

     }
	public function index()
	{	$this->data['title'] = 'Admin';
		$config['base_url'] 	= site_url('administrator/index');
		$config['total_rows']	=$this->db->count_all('tb_administrator');
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
		$data['administrator']	= $this->M_administrator->get_data($config['per_page'], $data['page']) -> result();

		// bikin link
		$data['pagination']	= $this->pagination->create_links();
		//$this->load->model("M_administrator");
		//$data['administrator'] = $this->M_administrator->tampil_data()->result();	// menampilkan ke model user di method tampil_data()
		// meload view
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('administrator', $data);
		$this->load->view('templates/footer');
		
	}

	public function tambah_aksi()
	{
		//menangkap inputan dari form yg methodny POST
		$username_administrator			= $this->input->POST('username_administrator');	// inget POST('berdasarkan name di tag input')
		$password_administrator		= md5($this->input->POST('password_administrator'));
		$email_administrator 			= $this->input->POST('email_administrator');
		// $data['password'] =    md5($this->input->post('password'));

		// setelah data dari form ditangkap, datanya akan diubah jadi array
		$data = array (
			'username_administrator'			=>$username_administrator,
			'password_administrator'			=>$password_administrator,
			'email_administrator'			=>$email_administrator,
		);

		// biar $data masukk ke database tb_administrator
		$this->M_administrator->input_data($data,'tb_administrator');
		redirect ('administrator/index');


	}

	public function hapus ($id)
	{
		$where = array ('id'=>$id);
		$this->M_administrator->hapus_data($where, 'tb_administrator');
		redirect ('administrator/index');
	}


	public function edit ($id)
	{	$this->data['title'] = 'Admin';
		$where = array ('id'=>$id);			// id yang ada di tb_administrator akan disimpan ke $array where.
		// buat fungsi yang akan dipake di M_administrator
		$data ['administrator'] = $this->M_administrator->edit_data($where,'tb_administrator')->result();
		// meload view
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('edit', $data);
		$this->load->view('templates/footer');

	}

	// bikin controller update
	public function update()
	{
		$id = $this->input->post('id');
		$username_administrator = $this->input->post('username_administrator');
		$password_administrator = $this->input->post('password_administrator');
		$email_administrator = $this->input->post('email_administrator');

		// masukkan datanya ke dlam array
		$data= array (
			'username_administrator'			=>$username_administrator,
			'password_administrator'			=>$password_administrator,
			'email_administrator'				=>$email_administrator
		);

		$where = array (
			'id' => $id
			);
		// manggil method update datda dari m

		$this->M_administrator->update_data($where
			, $data, 'tb_administrator');
		// kalo udah akan diredirect ke
		redirect('administrator/index');
	}// emd update


	public function search(){
		$this->data['title'] = 'Admin';
		$keyword = ($this->input->post('keyword'))? $this->input->post('keyword'):'';
     	//jika uri segmen 3 ada, maka nilai variabel $search akan diganti dengan nilai uri segmen 3
     	$keyword = ($this->uri->segment(3)) ? $this->uri->segment(3) : $keyword;
		//$keyword = $this->input->post('keyword');

		$config['base_url'] 	= site_url('administrator/search/'.$keyword);
		$config['total_rows']	= $this->M_administrator->count_get_keyword($keyword);
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
		$data['administrator']	= $this->M_administrator->get_data_search($keyword, $config['per_page'], $data['page']) -> result();

		// bikin link
		$data['pagination']	= $this->pagination->create_links();


		//$keyword = $this->input->post('keyword');
		//$data['user'] = $this->M_user->get_keyword($keyword);			
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('administrator', $data);	//  view ke artikel
		$this->load->view('templates/footer');

	}// end search



 }	// end class
 ?>
