<?php 
class Arsip_arsitek extends Ci_Controller{
	public function __construct()
     {
          parent::__construct();
          
          $this->simple_login_admin->cek_login();
          

     }
	public function index()
	{	$this->data['title'] = 'Arsip Kearsitekturan';
		//$this->load->model("M_user");
		$config['base_url'] 	= site_url('arsip_arsitek/index');
		$config['total_rows']	= $this->db->count_all('tb_arsip_kearsitekturan');
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
		$data['arsip']	= $this->M_arsip_arsitek->get_data($config['per_page'], $data['page']) -> result();

		// bikin link
		$data['pagination']	= $this->pagination->create_links();

		//$this->load->model("M_arsip_arsitek");
		//$data['arsip'] = $this->M_arsip_arsitek->tampil_data()->result();	// menampilkan ke model arsip_arsitek di method tampil_data()
		// jadi maksud ['arsip'] adalah: kan pas yg di foreach tadi $... as $... . jadi dia itu var pertamanya.
		// meload view
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('arsip_arsitek', $data);
		//$this->load->view('editarsip', $data);
		$this->load->view('templates/footer');
	}

	public function tambah_aksi()
	{
		//menangkap inputan dari form yg methodny POST
		$unit_kerja					= $this->input->POST('unit_kerja');	// inget POST('berdasarkan name di tag input')
		$pencipta_kode_instansi		= $this->input->POST('pencipta_kode_instansi');
		$no_kerja 				= $this->input->POST('no_kerja');
		$arsitek_perusahaan 		= $this->input->POST('arsitek_perusahaan');		//[name]
		$tanggal 					= $this->input->POST('tanggal');
		$lokasi 					= $this->input->POST('lokasi');
		$nama_bangunan 				= $this->input->POST('nama_bangunan');
		$tipe_bangunan 				= $this->input->POST('tipe_bangunan');
		$keterangan 				= $this->input->POST('keterangan');
		$skala 						= $this->input->POST('skala');
		$satuan 					= $this->input->POST('satuan');
		$tingkat_perkembangan 		= $this->input->POST('tingkat_perkembangan');
		$kondisi 					= $this->input->POST('kondisi');


		

		// setelah data dari form ditangkap, datanya akan diubah jadi array
		$data = array (
			'unit_kerja'						=>$unit_kerja,
			'pencipta_kode_instansi'			=>$pencipta_kode_instansi,
			'no_kerja'							=>$no_kerja,
			'arsitek_perusahaan'				=>$arsitek_perusahaan,
			'tanggal'							=>$tanggal,
			'lokasi'							=>$lokasi,
			'nama_bangunan'						=>$nama_bangunan,
			'tipe_bangunan'						=>$tipe_bangunan,
			'keterangan'						=>$keterangan,
			'skala'								=>$skala,
			'satuan'							=>$satuan,
			'tingkat_perkembangan'				=>$tingkat_perkembangan,
			'kondisi'							=>$kondisi,
		);


		// biar $data masukk ke database tb_administrator
		$this->M_arsip_arsitek->input_data($data,'tb_arsip_kearsitekturan');
		redirect ('arsip_arsitek/index');

	}

	public function hapus ($idp)
	{
		$where = array ('idp'=>$idp);
		$this->M_arsip_arsitek->hapus_data($where, 'tb_arsip_kearsitekturan');
		redirect ('arsip_arsitek/index');
	}

	public function edit ($idp)
	{	$this->data['title'] = 'Arsip Kearsitekturan';
		$where = array ('idp'=>$idp);			// id yang ada di tb_administrator akan disimpan ke $array where.
		// buat fungsi yang akan dipake di M_administrator
		$data ['arsip'] = $this->M_arsip_arsitek->edit_data($where,'tb_arsip_kearsitekturan')->result();
		// result() untuk mengenerate hasil query menjadi array.
		// meload view
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('edit_arsip_arsitek', $data);	// 
		$this->load->view('templates/footer');

	}

	// bikin controller update
	public function update()
	{
		
		$idp = $this->input->post('idp');
		
		$unit_kerja			= $this->input->POST('unit_kerja');	// inget POST('berdasarkan name di tag input')
		$pencipta_kode_instansi	= $this->input->POST('pencipta_kode_instansi');
		$no_kerja 			= $this->input->POST('no_kerja');
		$arsitek_perusahaan 			= $this->input->POST('arsitek_perusahaan');		//[name]
		$tanggal 			= $this->input->POST('tanggal');
		$lokasi 			= $this->input->POST('lokasi');
		$nama_bangunan 			= $this->input->POST('nama_bangunan');
		$tipe_bangunan 			= $this->input->POST('tipe_bangunan');
		$keterangan 			= $this->input->POST('keterangan');
		$skala 			= $this->input->POST('skala');
		$satuan 			= $this->input->POST('satuan');
		$tingkat_perkembangan 			= $this->input->POST('tingkat_perkembangan');
		$kondisi 			= $this->input->POST('kondisi');


		

		// setelah data dari form ditangkap, datanya akan diubah jadi array
		$data = array (
			'unit_kerja'						=>$unit_kerja,
			'pencipta_kode_instansi'			=>$pencipta_kode_instansi,
			'no_kerja'							=>$no_kerja,
			'arsitek_perusahaan'				=>$arsitek_perusahaan,
			'tanggal'							=>$tanggal,
			'lokasi'							=>$lokasi,
			'nama_bangunan'						=>$nama_bangunan,
			'tipe_bangunan'						=>$tipe_bangunan,
			'keterangan'						=>$keterangan,
			'skala'								=>$skala,
			'satuan'							=>$satuan,
			'tingkat_perkembangan'				=>$tingkat_perkembangan,
			'kondisi'							=>$kondisi,
		);

		

		
		$where = array (
			'idp' => $idp
		);
		// manggil method update datda dari m

		$this->M_arsip_arsitek->update_data($where, $data, 'tb_arsip_kearsitekturan');
		// kalo udah akan diredirect ke
		redirect('arsip_arsitek/index');	
		}// end update



		public function search(){
			$this->data['title'] = 'Arsip Kearsitekturan';
			$keyword = ($this->input->post('keyword'))? $this->input->post('keyword'):'';
     	//jika uri segmen 3 ada, maka nilai variabel $search akan diganti dengan nilai uri segmen 3
			$keyword = ($this->uri->segment(3)) ? $this->uri->segment(3) : $keyword;
		//$keyword = $this->input->post('keyword');

			$config['base_url'] 	= site_url('arsip_arsitek/search/'.$keyword);
			$config['total_rows']	= $this->M_arsip_arsitek->count_get_keyword($keyword);
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
		$data['arsip']	= $this->M_arsip_arsitek->get_data_search($keyword, $config['per_page'], $data['page']) -> result();

		// bikin link
		$data['pagination']	= $this->pagination->create_links();


		//$keyword = $this->input->post('keyword');
		//$data['user'] = $this->M_user->get_keyword($keyword);			
		$this->load->view('templates/header',$this->data);
		$this->load->view('templates/sidebar');
		$this->load->view('arsip_arsitek', $data);	//  view ke artikel
		$this->load->view('templates/footer');

	}// end search




	}// end class
?>