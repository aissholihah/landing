<?php
// file dashboard admin
defined('BASEPATH') OR exit('No direct script access allowed');

class Homepage extends CI_Controller {

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
        $this->load->model('M_homepage');
        $this->data['berita'] 					=  $this->M_homepage->tampil_data('berita');
        $this->data['artikel'] 					=  $this->M_homepage->tampil_data('artikel');
        // nggataulah ini bener engga
        //$this->data['carousel'] 					=  $this->M_homepage->carousel();
        $this->data['album']					= $this->M_homepage->splide();
        $this->data['event']				= $this->M_homepage->tampil_event();
        // $this->a					= $this->M_homepage->gabung();
        $this->data['daftar_card']			=$this->M_palbum->tampil_data();
        // $this->data['data_union']				=$this->M_homepage->gabung();



        // note 12/10/2021 : ngganti model line 32

        $this->load->model('M_palbum');
		$idgrup=($this->uri->segment(3))? $this->uri->segment(3) :1;
		//$data['idalbum']	= ($this->uri->segment(3))? $this->uri->segment(3) :1;
		//$this->data['album']=$this->M_palbum->get_album($idgrup);
		// $this->data['daftar_card']=$this->M_palbum->tampil_data();


       		
		// var_dump($this->a);

		$this->load->view('header1');
		$this->load->view('homepage',$this->data);
		$this->load->view('footer2');
		//var_dump($this->data['event']);
	}



	public function about()
	{
        //$this->data['regulasi'] 						=  $this->M_pregulasi->tampil_data('regulasi');

        $data['tentang'] = $this->M_homepage->tampil_data('tentang');
        // var_dump ($data['tentang']);
        //$data['tentang'] = $this->M_ptentang->tampil_data('tentang')->result();

        //$data['tentang'] = $this->M_ptentang->tampil_data()->result();	// menampilkan ke model user di method tampil_data()


		// //breadcrumb
		// $this->mybreadcrumb->add('Beranda', base_url('home'));
		// $this->mybreadcrumb->add('tentang', base_url('ptentang/index'));

		// $data['breadcrumbs'] = $this->mybreadcrumb->render();


        
 
        //load viewnya
        
		//$this->load->view('pheader.php');
		$this->load->view('pabout',$data);	// nek gitu malah tampil semua datanya//awalnya 
		//$this->load->view('pfooter.php');


		//$this->load->view('templates/footer');
	}

	public function get_album()
	{
		$this->load->model('M_palbum');
		$idgrup=($this->uri->segment(3))? $this->uri->segment(3) :1;
			//$data['idalbum']	= ($this->uri->segment(3))? $this->uri->segment(3) :1;
		$data['album']=$this->M_palbum->get_album($idgrup);
		$data['daftar_card']=$this->M_palbum->tampil_data();
	}

	public function get_gabung(){
		$this->load->model('M_homepage');
		$data['data_union']=$this->M_homepage->gabung();


	}//end get_gabung

	public function fetch(){
		$this->load->view('livesearch');
		    $query 	= $this->input->post('query');
		 
		    $output 	= "<table border=1>";
		    $output 	.= "<tr>";
		    $output 	.= "<th> NIS </th>";
		    $output 	.= "<th> Nama Siswa </th>";
		    $output 	.= "<th> Kelas </th>";
		    $output 	.= "</tr>";
		   
		    $data = $this->M_homepage->siswa($query);
		    if($data->num_rows() > 0)
		    {
		      foreach ($data->result() as $row)
		      {
		        $output .= "<tr>";
		        $output .= "<td> $row->nis </td>";
		        $output .= "<td> $row->nama_siswa </td>";
		        $output .= "<td> $row->nama_kelas </td>";
		        $output .= "</tr>";
		      }
		    }else{
		      $output .= "<tr>";
		      $output .= "<td colspan = 4> Pencarian Tidak Ada</td>";
		      $output .= "</tr>";
		    }    
		    $output .= "</table>";
		 
		    echo $output;
		  }// end fetch()


		public function search(){
			// $keyword collate utf8mb4_unicode_ci ='\U+1F61';

		$this->load->model('M_homepage');
		$keyword = ($this->input->post('keyword'))? $this->input->post('keyword'):'';
     	//jika uri segmen 3 ada, maka nilai variabel $search akan diganti dengan nilai uri segmen 3
     		$keyword = ($this->uri->segment(3)) ? $this->uri->segment(3) : $keyword;
		//$keyword = $this->input->post('keyword');

		$config['base_url'] 	= site_url('homepage/search/'.$keyword);
		$config['total_rows']	= $this->M_homepage->count_get_keyword($keyword);
		$config['per_page']		= 5;			// tiap halaman mau nampilin berapa jumlah data.
		$config['uri_segment']	= 4;			// untuk uri segmen
		$choice			= $config["total_rows"]/$config['per_page'];
		$config["num_links"]	= floor($choice);

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
		$data['globalS']	= $this->M_homepage->get_data_search($keyword, $config['per_page'], $data['page']) -> result();

		// bikin link
		$data['pagination']	= $this->pagination->create_links();
		// $data['event'] = $this->M_pevent->tampil_event();


		// $keyword = $this->input->post('keyword');
		// $data['berita'] = $this->M_homepage->get_keyword($keyword);
		//breadcrumb
		// $this->mybreadcrumb->add('Beranda', base_url('homepage'));
		// $this->mybreadcrumb->add('Berita', base_url('pberita/index'));	//URL NYA HARUS BENERRR
		// $this->mybreadcrumb->add('Search', base_url('pberita/search'));

		// $data['breadcrumbs'] = $this->mybreadcrumb->render();	


		$this->load->view('header1');		
		$this->load->view('search', $data);	//  view ke artikel
		// $this->load->view('pevent',$data);
		$this->load->view('footer2');

	}// end search

}//end class

