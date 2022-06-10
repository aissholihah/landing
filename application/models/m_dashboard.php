<?php 
// defined('BASEPATH') OR exit('No direct script access allowed');
class M_dashboard extends CI_Model
{
  function total_rows() {
    return $this->db->get('tb_user')->num_rows();
    // return $this->db->get('tb_artikel')->num_rows();
    // return $this->db->get('tb_album')->num_rows();
    // return $this->db->get('tb_arsip_publik')->num_rows();
    // return $this->db->get('tb_regulasi')->num_rows();
    
  }

  function total_rows_artikel(){
    $this->db->select('*');
    $this->db->from('tb_artikel');
    $this->db->like('jenis_artikel','artikel');
    return $this->db->count_all_results();
  //return $this->db->get('tb_artikel')->num_rows();	
  }

  function total_rows_album(){
  return $this->db->get('tb_album')->num_rows();	
  }

  function total_rows_berita(){
  // $a=SELECT COUNT(jenis_artikel) WHERE 'berita' FROM tb_artikel;
  // return $a; 
    $this->db->select('*');
    $this->db->from('tb_artikel');
    $this->db->like('jenis_artikel','berita');
    return $this->db->count_all_results();


  //return $this->db->get('tb_artikel')->num_rows();	
  }

  function total_rows_event(){
  return $this->db->get('tb_event')->num_rows();	
  }


  function total_rows_arsip_tekstual(){

  return $this->db->get('tb_arsip_tekstual')->num_rows(); 
  }

  function total_rows_arsip_foto(){
  return $this->db->get('tb_arsip_foto')->num_rows(); 
  }

  function total_rows_arsip_kearsitekturan(){
  return $this->db->get('tb_arsip_kearsitekturan')->num_rows(); 
  }

  function total_rows_khasanah(){
  return $this->db->get('tb_khasanah')->num_rows(); 
  }

  

  function total_rows_profil(){
  return $this->db->get('tb_profil')->num_rows(); 
  }



}// end classs
?>