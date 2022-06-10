<?php

class Event extends Ci_Controller{
	public function __construct()
     {
          parent::__construct();
          
          $this->simple_login_admin->cek_login();
          

     }

	public function index()
	{	$this->data['title'] = 'Event';
		$this->load->model("M_event");
		$config['base_url'] 	= site_url('event/index');
		$config['total_rows']	= $this->db->count_all('tb_event');
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
		$data['event']	= $this->M_event->get_data($config['per_page'], $data['page']) -> result();

		// bikin link
		$data['pagination']	= $this->pagination->create_links();


		//$data['event'] = $this->M_event->tampil_data()->result();	// menampilkan ke model event di method tampil_data()
		// meload view
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('event', $data);
		$this->load->view('templates/footer');
	}

	public function tambah_aksi()
	{
		$this->load->model("M_event");
		//menangkap inputan dari form yg methodny POST
		$tanggal_event				= $this->input->POST('tanggal_event');	// inget POST('berdasarkan name di tag input')
		$nama_event					= $this->input->POST('nama_event');
		$lokasi 					= $this->input->POST('lokasi');
		$waktu 						= $this->input->POST('waktu');

		// setelah data dari form ditangkap, datanya akan diubah jadi array
		$data = array (
			'tanggal_event'			=>$tanggal_event,
			'nama_event'			=>$nama_event,
			'lokasi'				=>$lokasi,
			'waktu'					=>$waktu,
		);

		// biar $data masukk ke database tb_event
		$this->M_event->input_data($data,'tb_event');
		redirect ('event/index');

	}

	public function hapus ($id_event)
	{
		$where = array ('id_event'=>$id_event);
		$this->M_event->hapus_data($where, 'tb_event');
		redirect ('event/index');
	}


	public function edit ($id_event)
	{	$this->data['title'] = 'Event';
		$where = array ('id_event'=>$id_event);			// id yang ada di tb_event akan disimpan ke $array where.
		// buat fungsi yang akan dipake di M_event
		$data ['event'] = $this->M_event->edit_data($where,'tb_event')->result();
		// meload view
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('editevent', $data);
		$this->load->view('templates/footer');

	}

	// bikin controller update
	public function update()
	{	$this->load->model("M_event");
		$id_event 			= $this->input->post('id_event');
		$tanggal_event 		= $this->input->post('tanggal_event');
		$nama_event 		= $this->input->post('nama_event');
		$lokasi 			= $this->input->post('lokasi');
		$waktu 				= $this->input->POST('waktu');

		// masukkan datanya ke dlam array
		$data= array (
			'tanggal_event'			=>$tanggal_event,
			'nama_event'			=>$nama_event,
			'lokasi'				=>$lokasi,
			'waktu'					=>$waktu,
		);

		$where = array (
			'id_event' => $id_event
			);
		// manggil method update datda dari m

		$this->M_event->update_data($where, $data, 'tb_event');
		// kalo udah akan diredirect ke
		redirect('event/index');
		

	}// end update


	public function search(){
		$this->data['title'] = 'Event';
		$keyword = ($this->input->post('keyword'))? $this->input->post('keyword'):'';
     	//jika uri segmen 3 ada, maka nilai variabel $search akan diganti dengan nilai uri segmen 3
     	$keyword = ($this->uri->segment(3)) ? $this->uri->segment(3) : $keyword;
		//$keyword = $this->input->post('keyword');

		$config['base_url'] 	= site_url('event/search/'.$keyword);
		$config['total_rows']	= $this->M_event->count_get_keyword($keyword);
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
		$data['event']	= $this->M_event->get_data_search($keyword, $config['per_page'], $data['page']) -> result();

		// bikin link
		$data['pagination']	= $this->pagination->create_links();


		//$keyword = $this->input->post('keyword');
		//$data['event'] = $this->M_event->get_keyword($keyword);			
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('event', $data);	//  view ke artikel
		$this->load->view('templates/footer');

	}// end search





 }	// end class
 



?>


