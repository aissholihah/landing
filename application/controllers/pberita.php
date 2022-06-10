<?php
// file dashboard admin
defined('BASEPATH') OR exit('No direct script access allowed');

class Pberita extends CI_Controller {
	

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		//load modelnya dulu
        $this->load->model('M_pberita');
        $this->load->model('M_pevent');

        //$this->data['berita'] 						=  $this->M_pberita->tampil_data('berita');

        $config['base_url'] 	= site_url('pberita/index');
		$config['total_rows']	= $this->M_pberita->total_rows_berita();
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
		$data['berita']	= $this->M_pberita->get_data('berita',$config['per_page'], $data['page']) -> result();

		// bikin link
		$data['pagination']	= $this->pagination->create_links();
  

		//breadcrumb
		$this->mybreadcrumb->add('Beranda', base_url('homepage'));
		$this->mybreadcrumb->add('Berita', base_url('pberita/index'));

		$data['breadcrumbs'] = $this->mybreadcrumb->render();


      $data['event'] = $this->M_pevent->tampil_event();  
 
        //load viewnya
        // $this->load->view('dashboard',$this->data);


		//$this->load->view('templates/header');
		//$this->load->view('templates/sidebar');
		$this->load->view('header1.php');
		$this->load->view('pberita',$data);	// nek gitu malah tampil semua datanya//awalnya this->$data
		$this->load->view('pevent',$data);
		$this->load->view('footer2.php');


		//$this->load->view('templates/footer');
	}


	public function search(){
		$this->load->model('M_pberita');
		$keyword = ($this->input->post('keyword'))? $this->input->post('keyword'):'';
     	//jika uri segmen 3 ada, maka nilai variabel $search akan diganti dengan nilai uri segmen 3
     	$keyword = ($this->uri->segment(3)) ? $this->uri->segment(3) : $keyword;
		//$keyword = $this->input->post('keyword');

		$config['base_url'] 	= site_url('pberita/search/'.$keyword);
		$config['total_rows']	= $this->M_pberita->count_get_keyword($keyword);
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

		//inisalisasi pagination 
		$this->pagination->initialize($config);
		$data['page']	= ($this->uri->segment(4))? $this->uri->segment(4) :0;
		$data['berita']	= $this->M_pberita->get_data_search($keyword, $config['per_page'], $data['page']) -> result();

		// bikin link
		$data['pagination']	= $this->pagination->create_links();
		$data['event'] = $this->M_pevent->tampil_event();


		// $keyword = $this->input->post('keyword');
		// $data['berita'] = $this->M_pberita->get_keyword($keyword);
		//breadcrumb
		$this->mybreadcrumb->add('Beranda', base_url('homepage'));
		$this->mybreadcrumb->add('Berita', base_url('pberita/index'));	//URL NYA HARUS BENERRR
		$this->mybreadcrumb->add('Search', base_url('pberita/search'));

		$data['breadcrumbs'] = $this->mybreadcrumb->render();	


		$this->load->view('header1');		
		$this->load->view('pberita', $data);	//  view ke artikel
		$this->load->view('pevent',$data);
		$this->load->view('footer2');

	}// end search


	// public function berita(){
	// 	// ambil data dari db
	// 	$this->data['berita'] 					=  $this->M_pberita->tampil_data('berita');

	// 	// menampilkan 
	// }

	// public function detail_data($id){
 //        $this->db->select('*') ;     // dia akan milih sebua data yang ada di database yang ada di tb_artikel.
    
 //        $this->db->from('tb_artikel');  // manggil nama tb nya
 //        // manggil setipa nama field yanga ada di tabel artikel
 //       // untuk field jenis artikel, dengan kunci keyword.
 //        $this->db->where('id_artikel',$id);

 //        return $this->db->get()->result();
 //    }


    public function detail(){
		$this->load->model('M_pberita');
		$this->load->model('M_pevent');
		$id=$this->uri->segment(3);
		$data['d_berita']	= $this->M_pberita->detail_data($id);	
		// print_r($data['d_artikel']);
		$this->mybreadcrumb->add('Beranda', base_url('homepage'));
		$this->mybreadcrumb->add('Berita', base_url('pberita/index'));
		$this->mybreadcrumb->add($data['d_berita']->judul_artikel, base_url('pberita/index/detail/').$data['d_berita']->id_artikel);

		$data['breadcrumbs'] = $this->mybreadcrumb->render();

		$data['event'] = $this->M_pevent->tampil_event(); 
		
		$this->load->view('header1');		
		$this->load->view('detailberita2', $data);	//  view ke artikel
		$this->load->view('pevent', $data);
		$this->load->view('footer2');
		// d'artikel adalah dari array data. 
		//
	}
}


