<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
* Simple_login Class
* Class ini digunakan untuk fitur login, proteksi halaman dan logout
* @author  Gun Gun Priatna
* @url    https://recodeku.blogspot.com
*/

class Simple_login {

  // SET SUPER GLOBAL
  var $CI = NULL;

  /**
   * Class constructor
   *
   * @return   void
   */
  public function __construct() {
      $this->CI =& get_instance();
  }

  /*
  * cek username dan password pada table tb_user, jika ada set session berdasar data user dari
  * table tb_user.
  * @param string username dari input form
  * @param string password dari input form
  */
  public function login($username, $password) {
      $this->data['title'] = 'Login';
      //cek username dan password
      $query = $this->CI->db->get_where('tb_user',array('username'=>$username,'password' => md5($password)));

      if($query->num_rows() == 1) {
          //ambil data user berdasar username
          $row  = $this->CI->db->query('SELECT * FROM tb_user where username = "'.$username.'"');
          $admin     = $row->row();
          $id   = $admin->id_user;
          $fprofil   = $admin->fprofil;
          //set session user
          $this->CI->session->set_userdata('username', $username);
          $this->CI->session->set_userdata('fprofil', $fprofil);
          //$this->CI->session->set_userdata('nama', $nama);

          //$this->CI->session->set_userdata('id_login', uniqid(rand()));
          //$this->CI->session->set_userdata('id', $id);

          //redirect ke halaman dashboard
          redirect(site_url('p_arsip_tekstual'));
      }else{
          $this->data['title'] = 'Login';
          //jika tidak ada, set notifikasi dalam flashdata.
          $this->CI->session->set_flashdata('gagal','Username atau password anda salah, silakan coba lagi.. ');
          //echo $username."---".$password;
          //redirect ke halaman login
          redirect(site_url('masuk'));
      }
       return false;
   }

  /**
   * Cek session login, jika tidak ada, set notifikasi dalam flashdata, lalu dialihkan ke halaman
   * login
   */
  public function cek_login() {

      //cek session username
      if($this->session->userdata('username') == '') {

      //set notifikasi
      //$this->CI->session->set_flashdata('sukses','Anda gagal login');

          //alihkan ke halaman login
          redirect(site_url('masuk'));
      }
  }

  /**
   * Hapus session, lalu set notifikasi kemudian di alihkan
   * ke halaman login
   */
  public function logout() {
      $this->session->unset_userdata('username');
      //$this->CI->session->unset_userdata('nama');
      //$this->CI->session->unset_userdata('id');
      $this->CI->session->set_flashdata('sukses','Anda berhasil logout');
      redirect(site_url('masuk'));
  }

}