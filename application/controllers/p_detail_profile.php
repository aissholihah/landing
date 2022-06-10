<?php
class P_detail_profile extends CI_Controller {
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
        // $this->load->model('M_p_detail_profile');
        //$this->data['tentang'] 						=  $this->M_ptentang->tampil_data('tentang');

        // $data['tentang'] = $this->M_pabout->tampil_data('tentang');
        

		// $data['profil'] = $this->M_profil->get_data($config['per_page'], $data['page']) -> result();
		$data['profil'] = $this->M_profil->tampil_data()->result();

		$this->mybreadcrumb->add('Beranda', base_url('homepage'));
		$this->mybreadcrumb->add('Profil', base_url('pabout/profile'));
		$this->mybreadcrumb->add('Struktur Organisasi', base_url('pabout/detail_profil'));

		$data['breadcrumbs'] = $this->mybreadcrumb->render();
		$this->load->view('header1');		
		//$this->load->view('pabout', $data);	//  view ke artikel
		$this->load->view('p_detail_profil',$data);
		$this->load->view('footer2');
	}
} //end class
?>