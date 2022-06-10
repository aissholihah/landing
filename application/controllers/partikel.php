<?php
// file dashboard admin
defined('BASEPATH') OR exit('No direct script access allowed');

class Partikel extends CI_Controller {
	

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
		$this->load->model('M_partikel');
		$this->load->model('M_pevent');

		$config['base_url'] 	= site_url('partikel/index');
		$config['total_rows']	= $this->M_partikel->jml_artikel('artikel');
		
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

//breadcrumb
		$this->mybreadcrumb->add('Beranda', base_url('homepage'));
		$this->mybreadcrumb->add('Artikel', base_url('partikel/index'));

		$data['breadcrumbs'] = $this->mybreadcrumb->render();


		// inisalisasi pagination 
		$this->pagination->initialize($config);
		$data['page']	= ($this->uri->segment(3))? $this->uri->segment(3) :0;
		$data['artikel']	= $this->M_partikel->get_data('artikel',$config['per_page'], $data['page']) -> result();

		// bikin link
		$data['pagination']	= $this->pagination->create_links();


		$data['event'] = $this->M_pevent->tampil_event();
        //load viewnya
        // $this->load->view('dashboard',$this->data);
		

		//$this->load->view('templates/header');
		$this->load->view('header1.php');
		$this->load->view('partikel',$data);
		$this->load->view('pevent',$data);
		$this->load->view('footer2.php');



		//$this->load->view('templates/footer');
	}


	public function search(){
		$this->load->model('M_partikel');
		$keyword = ($this->input->post('keyword'))? $this->input->post('keyword'):'';
     	//jika uri segmen 3 ada, maka nilai variabel $search akan diganti dengan nilai uri segmen 3
		$keyword = ($this->uri->segment(3)) ? $this->uri->segment(3) : $keyword;
		//$keyword = $this->input->post('keyword');

		$config['base_url'] 	= site_url('partikel/search/'.$keyword);
		$config['total_rows']	= $this->M_partikel->count_get_keyword($keyword);
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

		//inisalisasi pagination 
		$this->pagination->initialize($config);
		$data['page']	= ($this->uri->segment(4))? $this->uri->segment(4) :0;
		$data['artikel']	= $this->M_partikel->get_data_search($keyword, $config['per_page'], $data['page']) -> result();

		// bikin link
		$data['pagination']	= $this->pagination->create_links();
		$data['event'] = $this->M_pevent->tampil_event();


		// $keyword = $this->input->post('keyword');
		// $data['artikel'] = $this->M_partikel->get_keyword($keyword);	

		//breadcrumb
		$this->mybreadcrumb->add('Beranda', base_url('homepage'));
		$this->mybreadcrumb->add('Artikel', base_url('partikel/index'));	//URL NYA HARUS BENERRR
		$this->mybreadcrumb->add('Search', base_url('partikel/search'));

		$data['breadcrumbs'] = $this->mybreadcrumb->render();


		$this->load->view('header1');		
		$this->load->view('partikel', $data);	//  view ke artikel
		$this->load->view('pevent', $data);
		$this->load->view('footer2');

	}// end search



	public function detail(){
		// $this->load->model('M_partikel');
		// $id=$this->uri->segment(3);
		// $data['d_artikel']	= $this->M_partikel->detail_data($id);	
		// // print_r($data['d_artikel']);

		// $this->load->view('pheader');		
		// $this->load->view('detailartikel', $data);	//  view ke artikel
		// $this->load->view('pfooter');
		// d'artikel adalah dari array data. 
		//

		$this->load->model('M_pberita');
		$this->load->model('M_pevent');

		$id=$this->uri->segment(3);
		$data['d_artikel']	= $this->M_pberita->detail_data($id);	
		// print_r($data['d_artikel']);

		$this->mybreadcrumb->add('Beranda', base_url('homepage'));
		$this->mybreadcrumb->add('Artikel', base_url('partikel/index'));
		$this->mybreadcrumb->add($data['d_artikel']->judul_artikel, base_url('partikel/index/detail/').$data['d_artikel']->id_artikel);

		$data['breadcrumbs'] = $this->mybreadcrumb->render();

		$data['event'] = $this->M_pevent->tampil_event();

		
		$this->load->view('header1');		
		$this->load->view('detailartikel2', $data);	//  view ke artikel
		$this->load->view('pevent', $data);
		
		$this->load->view('footer2');
	}
}
