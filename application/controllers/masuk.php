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
       // $this->cek_login();
       $this->load->model('M_register'); //call model
       
   }


     public function index(){   
        $data['title'] = "Login";

    

       
        include_once APPPATH . "../vendor/autoload.php";
          $google_client = new Google_Client();
          $google_client->setClientId('67366384678-hmm9r9pp1eda95qs4e70fr5bblcahhsn.apps.googleusercontent.com'); //masukkan ClientID anda 
          $google_client->setClientSecret('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'); //masukkan Client Secret Key anda
          $google_client->setRedirectUri('http://localhost:8080/ci-view1/masuk'); //Masukkan Redirect Uri anda
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
            $uname=explode("@",$data['email']);
            if($this->M_register->Is_already_register($data['email']))
                    {
                    //update data
                        $user_data = array(
                            'username'    => $uname[0],
                            'nama'        => $data['name'],
                            'email'       => $data['email'],
                            'fprofil'     => $data['picture']
                            //'updated_at'  => $current_datetime
                        );
                        $this->M_register->Update_user_data($user_data, $data['email']);
                        
                    }
                    else
                    {
                        //insert data
                        $user_data = array(

                            'email'       => $data['email'],
                            'username'    => $uname[0],
                            'nama'        => $data['name'],
                            'fprofil'     => $data['picture']
                            
                            //'created_at'  => $current_datetime
                        );

                        $this->M_register->Insert_user_data($user_data);
                       
                    }

                       $user_data = array(
                            'username'  => $uname[0],
                            'name'      => $data['name'],
                            'email'     => $data['email'],
                            'fprofil'     => $data['picture']             
              
                        );
                        $this->session->set_userdata('user_data', $user_data);
                                     
               
                  }
                }
             
        
          //   $user_data = array(
          //     'username'  => $data['given_name'],
          //     'name'      => $data['name'],
          //     'email'     => $data['email']              
              
          //    );
          //   $this->session->set_userdata('user_data', $data);
          //  }                                    
          // }
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
            //echo json_encode($this->session->userdata('access_token')); 
            
            //echo json_encode($this->session->userdata('user_data'));
             //echo json_encode($this->session->userdata('user_data'));
            //$hasil = $this->session->userdata('user_data');

            //echo json_encode($hasil);

            //echo $hasil->email;
            //echo "Login success";

            redirect(site_url('p_arsip_tekstual'));
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

     public function edit ()
     {  
         $data['title'] = 'Edit Profil';
        $hasil = $this->session->userdata('username');
          //echo json_encode($hasil);

        if($hasil==''){
          redirect(site_url('masuk'));
        }     
        
       
        $hasil = $this->session->userdata('user_data');
        // $data['pp'] = $hasil->picture;
    // $this->data['title'] = 'User';
        $id_user=$this->session->userdata('username');
        $data['username']=$hasil;
        $where = array ('username'=>$id_user);           // id yang ada di tb_user akan disimpan ke $array where.
        // buat fungsi yang akan dipake di M_masuk
        $data ['user'] = $this->M_register->edit_data($where,'tb_user')->result();
        // meload view
        // $this->load->view('templates/header',$this->data);

        $this->load->view('p_arsip_header',$data);
        $this->load->view('edituser', $data);
        // $this->load->view('templates/footer');

    }

    public function update()
    {
    // {   $this->data['title'] = 'User';

    //menangkap inputan dari form yg methodny POST
        $id_user = $this->input->post('id_user');       
        $username           = $this->input->POST('username');   // inget POST('berdasarkan name di tag input')
        $email              = $this->input->POST('email');
        $nama               = $this->input->POST('nama');
        $password           = md5($this->input->POST('password'));
        // $tgl_lahir          = $this->input->POST('tgl_lahir');
        // $alamat             = $this->input->POST('alamat');
        // $pekerjaan          = $this->input->POST('pekerjaan');
        // $institusi          = $this->input->POST('institusi');

        // masukkan datanya ke dlam array
        $data= array (
            'username'          =>$username,
            'email'             =>$email,
            'nama'              =>$nama,
            'password'          =>$password,

            // 'tgl_lahir'         =>$tgl_lahir,
            // 'alamat'            =>$alamat,
            // 'pekerjaan'         =>$pekerjaan,
            // 'institusi'         =>$institusi,
        );

        $where = array (
            'id_user' => $id_user
            );
        // manggil method update datda dari m

        $this->M_register->update_data($where
            , $data, 'tb_user');
        // kalo udah akan diredirect ke
        redirect('p_arsip_tekstual');
        

    }// end update


    public function cek(){
    //$a= $this->input->post('username_administrator');
    // $this->data['title'] = 'Dashboard';
    $username = $this->input->post('username');
    $password = $this->input->post('password');

        // if ($username=='username' && $password=='password') {
        //     base_url('arsip_tekstual');
        //     // code...
        // }
        // else{ base_url('masuk');
        // }



    //echo $username;
    //echo md5($password);
    $this->simple_login->login($username,$password, base_url('arsip_tekstual'), base_url('masuk'));

    
    //var_dump($a);

   } 
        

   
    

}// end class


// note 12/10/2021 : index() buat ngecek session nya udah ada belom aja,, trus yg tadinya di index taroh di fungsi baru. 

// update data tu buat njaga kalo udah register, dinggo set session nek misal e datane udh ada di dtabase
// tambah data 

// <?php echo json_encode($this->session->userdata('user_data')["name"]); itu cara manggil session nya kasi nama session nya terus bagian/array mana seng mau di panggil 
// (nama session)[nama itunya dari google account seng mau dipanggil]

