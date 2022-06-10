<?php 
 defined('BASEPATH') OR exit('no direct script access allowed'); 

 class M_login extends CI_Model{
      public function __construct(){
          parent::__construct(); 
     }

     public function cek_login($username, $password){
           $this->db->select('*');
           $this->db->from('tb_login');
           $this->db->where('username', $username);
           $this->db->where('password', md5($password));

           return $this->db->get()->num_rows(); 
      }

      // public function input_data()
      //   {
      //           $this->username    = $_POST['username']; // please read the below note
      //           $this->password  = $_POST['password'];
      //           //$this->email      = $_POST['email'];

      //           $this->db->insert('tb', $this);
      //   }
 }
?>