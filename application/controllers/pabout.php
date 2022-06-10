<?php
// file dashboard admin
defined('BASEPATH') OR exit('No direct script access allowed');

class Pabout extends CI_Controller {
	public function __construct()
     {
          parent::__construct();
          
          // $this->simple_login->cek_login();
          

     }

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
        $this->load->model('M_pevent');
        //$this->data['tentang'] 						=  $this->M_ptentang->tampil_data('tentang');

        $data['tentang'] = $this->M_pabout->tampil_data('tentang');
        


		//breadcrumb
		$this->mybreadcrumb->add('Beranda', base_url('home'));
		$this->mybreadcrumb->add('tentang', base_url('pabout/index'));

		$data['breadcrumbs'] = $this->mybreadcrumb->render();

		$data['event'] = $this->M_pevent->tampil_event(); 
        
 
        //load viewnya
        
		$this->load->view('header1');
		//$this->load->view('pabout',$data);	// nek gitu malah tampil semua datanya//awalnya 
		//$this->load->view('pevent', $data);
		$this->load->view('pabout2',$data);
		$this->load->view('footer2');


		//$this->load->view('templates/footer');
	}
	 public function detail()
	{
		$this->load->model('M_pabout');
		
		$data['d_tentang']	= $this->M_pabout->detail_data();	
				
		$this->load->view('header1');		
		//$this->load->view('pabout', $data);	//  view ke artikel
		$this->load->view('pabout2',$data);
		$this->load->view('footer2');
		// d'artikel adalah dari array data. 
		//
	}

	public function profil(){
		$data["profil"]=$this->M_profil->tampil_data()->result();
		$this->load->view('header1');		
		//$this->load->view('pabout', $data);	//  view ke artikel
		$this->load->view('p_profil',$data);
		$this->load->view('footer2');
	}


	public function detail_profil(){
		$id=$this->uri->segment(3);
		$data['d_profil'] = $this->M_pabout->detail_profil($id);
			// echo var_dump($data['d_profil']);
		$this->data['artikel'] =  $this->M_homepage->tampil_data('artikel');

		$this->mybreadcrumb->add('Beranda', base_url('homepage'));
		$this->mybreadcrumb->add('Profil', base_url('pabout/profil'));
		// $this->mybreadcrumb->add('Struktur Organisasi', base_url('pabout/detail_profil'));
		$this->mybreadcrumb->add($data['d_profil']->jabatan, base_url('pabout/detail_profil/').$data['d_profil']->id_profil);

		$data['breadcrumbs'] = $this->mybreadcrumb->render();
		$this->load->view('header1');		
		//$this->load->view('pabout', $data);	//  view ke artikel
		$this->load->view('p_detail_profil',$data);
		$this->load->view('footer2');
	}

	public function profiljson(){
		$dprofil=$this->M_profil->tampil_data();
		$response= array();

		foreach($dprofil->result() as $hasil) {

            $response[] = array(
                'nama' 		=> $hasil->nama,
                'jabatan'     => $hasil->jabatan,
                'email' 		=> $hasil->email,
                'kontak'     	=> $hasil->kontak,
                'profil' 	=> $hasil->profil,
                'tugas'     	=> $hasil->tugas,
                'foto'	 	=> base_url("assets/profil/images/".$hasil->foto),
                'link'		=> base_url("pabout/detail_profil/".$hasil->id_profil)
            );

        }
        
        header('Content-Type: application/json');
        echo json_encode(
            array(
                'success' => true,
                'message' => 'Get All Data Siswa',
                'data'    => $response  
            )
        );
	}


}//end class
	
