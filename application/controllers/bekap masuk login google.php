<?php 
// defined('BASEPATH') OR exit('no direct script access allowed'); 

class Masuk extends CI_Controller {
//      function __construct() {
//           parent::__construct();
//      } 

     // function index(){
     //     $this->load->view('masuk');
     // }

     // function proses(){
     //      $this->load->model('M_login'); 
     //     $username = $this->input->post('username');
     //     $password = $this->input->post('password');
         
     //     if ($this->M_login->cek_login($username, $password)){
     //          echo '<h1>Hallo selamat datang admin</h1>';
     //          echo '<a href="'.site_url('loginn').'"> Kembali </a>';
     //     }else{
     //          echo '<h1>Username atau password salah</h1>';
     //          echo '<a href="'.site_url('loginn').'"> Kembali </a>';

     //     }
     // }
     function __construct(){
       parent::__construct();
       $this->load->library(array('form_validation'));
       //$this->load->library('form_validation');
       $this->load->helper(array('url','form'));
       //$this->load->model('M_register'); //call model
       
   }


     public function index()
    {
        include_once APPPATH . "../vendor/autoload.php";
          $google_client = new Google_Client();
          $google_client->setClientId('67366384678-hmm9r9pp1eda95qs4e70fr5bblcahhsn.apps.googleusercontent.com'); //masukkan ClientID anda 
          $google_client->setClientSecret('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'); //masukkan Client Secret Key anda
          $google_client->setRedirectUri('http://localhost/ci-view1/masuk'); //Masukkan Redirect Uri anda
          $google_client->addScope('email');
          $google_client->addScope('profile');

          if(isset($_GET["code"]))
          {
           $token = $google_client->fetchAccessTokenWithAuthCode($_GET["code"]);
           if(!isset($token["error"]))
           {
            $google_client->setAccessToken($token['access_token']);
            $this->session->set_userdata('access_token', $token['access_token']);
            $google_service = new Google_Service_Oauth2($google_client);
            $data = $google_service->userinfo->get();
            $current_datetime = date('Y-m-d H:i:s');

            if($this->M_register->Is_already_register($data['email']))
                    {
                    //update data
                        $user_data = array(
                            'username'    => $data['given_name'],
                            'nama'        => $data['name'],
                            'email'       => $data['email'],
                            'updated_at'  => $current_datetime
                        );
                        $this->M_register->Update_user_data($user_data, $data['email']);
                    }
                    else
                    {
                        //insert data
                        $user_data = array(
                            'email'       => $data['email'],
                            'username'    => $data['given_name'],
                            'nama'        => $data['name'],
                            'email'       => $data['email'],
                            'created_at'  => $current_datetime
                        );

                        $this->M_register->Insert_user_data($user_data);
                    }
                    $this->session->set_userdata('user_data', $user_data);
                  }
                }
              }// end index
           
                        //cek data login

        //     $email = $attributes['email'][0];
        //     $nama = $attributes['nama'][0];
        //     $user = $this->M_register->getByEmail($email)->count_all_results();
        //     if ($user != '1') { // kalau di database belum ada buat baru
        //           $data = [
        //             'username' => '',
        //             'password' => '',
        //             'email' => $email,
        //             'nama' => $nama,
        //             'tgl_lahir' => '',
        //             'alamat'=>'',
        //             'pekerjaan'=>'',
        //             'institusi'=>'universitas sebelas maret'
        //           ];
        //   $user = $this->M_register->create($data);
        // }

            //1. bikin cek data email ke tb_user
            //kalo data email belum ada{input data ke user sesuai ini:
            // $user_data = array(
             //  'username'  => $data['given_name'],
             //  'name'      => $data['name'],
             //  'email'     => $data['email']              
              
             // ); }
            //

          //   $email = $attributes['email'][0];
          //   $name = $attributes['nama'][0];
          //   $username = $this->M_register->getByEmail($email)->count_all_results();
          //   if ($user != '1') { // kalau di database belum ada buat baru
          //     $user_data = array(
          //     'username'  => $data['given_name'],
          //     'name'      => $data['name'],
          //     'email'     => $data['email']              
              
          //    );
          //     $user = $this->M_register->create($data);
          //     $this->session->set_userdata('user_data', $data);
          // }


            $user_data = array(
              'username'  => $data['given_name'],
              'name'      => $data['name'],
              'email'     => $data['email']              
              
             );
            $this->session->set_userdata('user_data', $data);
           }                                    
          }
          $login_button = '';
          if(!$this->session->userdata('access_token'))
          {
            
           //$login_button = '<a href="'.$google_client->createAuthUrl().'"><img src="https://1.bp.blogspot.com/-gvncBD5VwqU/YEnYxS5Ht7I/AAAAAAAAAXU/fsSRah1rL9s3MXM1xv8V471cVOsQRJQlQCLcBGAsYHQ/s320/google_logo.png" /></a>';
           $login_button = $google_client->createAuthUrl();
           
           $data['login_button'] = $login_button;
           //$this->load->view('masuk', $data);
           $this->load->view('templates/header_auth',$data);
           $this->load->view('masuk', $data);
           $this->load->view('templates/footer_auth');
          }
          else
          {
            // uncomentar kode dibawah untuk melihat data session email
            // echo json_encode($this->session->userdata('access_token')); 
            //$hasil = $this->session->userdata('user_data');
            echo json_encode($this->session->userdata('user_data'));
            //echo $hasil->email;
            //echo "Login success";
            //redirect(site_url('p_arsip_tekstual'));
          }


    }
  }

    public function cek_login()
    {
      if($this->session->userdata('username') == '') {
               //muter terus disini
               // berarti manggil fungsi index langsung ajaa
               redirect(site_url('masuk'));
    }
  }


    public function logout()
     {
      $this->session->unset_userdata('access_token');

      $this->session->unset_userdata('user_data');
      //echo "Logout berhasil";
      redirect(site_url('masuk'));

     }
    

}// end class
