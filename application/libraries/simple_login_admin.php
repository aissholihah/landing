<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
* Simple_login Class
* Class ini digunakan untuk fitur login, proteksi halaman dan logout
* @author  Gun Gun Priatna
* @url    https://recodeku.blogspot.com
*/

class Simple_login_admin {

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

      //cek username dan password
      $query = $this->CI->db->get_where('tb_administrator',array('username_administrator'=>$username,'password_administrator' =>md5($password)));

      if($query->num_rows() == 1) {
          //ambil data user berdasar username
          $row  = $this->CI->db->query('SELECT * FROM tb_administrator where username_administrator = "'.$username.'"');
          $admin= $row->row();
          $id   = $admin->id;

          //set session user
          $this->CI->session->set_userdata('username_administrator', $username);
          //$this->CI->session->set_userdata('nama', $nama);

          //$this->CI->session->set_userdata('id_login', uniqid(rand()));
          //$this->CI->session->set_userdata('id', $id);

          //redirect ke halaman dashboard
          redirect(site_url('admin'));
      }else{

          //jika tidak ada, set notifikasi dalam flashdata.
          $this->CI->session->set_flashdata('gagal','Username atau password anda salah, silakan coba lagi.. ');

          //redirect ke halaman login
          redirect(site_url('login_admin'));
      }
       return false;
   }

  /**
   * Cek session login, jika tidak ada, set notifikasi dalam flashdata, lalu dialihkan ke halaman
   * login
   */
  public function cek_login() {

      //cek session username
      if($this->CI->session->userdata('username_administrator') == '') {

          //set notifikasi
          $this->CI->session->set_flashdata('sukses','Anda sudah login');

          //alihkan ke halaman login
          redirect(site_url('login_admin'));
      }
  }

  /**
   * Hapus session, lalu set notifikasi kemudian di alihkan
   * ke halaman login
   */
  public function logout() {
      $this->CI->session->unset_userdata('username_administrator');
      //$this->CI->session->unset_userdata('nama');
      //$this->CI->session->unset_userdata('id');
      $this->CI->session->set_flashdata('sukses','Anda berhasil logout');
      redirect(site_url('login_admin'));
  }

}