<?php 
// defined('BASEPATH') OR exit('No direct script access allowed');
class M_home extends CI_Model
{
  public function tampil_data($jenis)
  {
    $this->db->select('*') ;
    $this->db->from('tb_artikel'); 
    $this->db->like('jenis_artikel',$jenis);
    $this->db->order_by('tgl_publikasi_artikel', 'DESC');
    $this->db->limit(3);
    // memanggil data di database tb_user
    return $this->db->get()->result();  
  }

  public function carousel(){
    $this->db->select('*') ;
    $this->db->from('tb_artikel'); 
    $this->db->like('jenis_artikel','berita');
    $this->db->order_by('tgl_publikasi_artikel', 'DESC');
    $this->db->limit(3);
    // memanggil data di database tb_user
    return $this->db->get()->result(); 
  }

  public function splide(){
    $this->db->select('*') ;
    $this->db->from('tb_album'); 
    $this->db->like('foto');
    // $this->db->like('jenis_artikel',$jenis);
    // $this->db->order_by('tgl_publikasi_artikel', 'DESC');
    $this->db->limit(5);
    // memanggil data di database tb_user
    return $this->db->get()->result();

  }

  // function total_rows_artikel(){
  //   $this->db->select('*');
  //   $this->db->from('tb_artikel');
  //   $this->db->like('jenis_artikel','artikel');
  //   $this->db->order_by('tgl_publikasi_artikel', 'DESC');
  //   $this->db->limit(3);

  //   return $this->db->get()->result();	
  // }

  // function total_rows_album(){
  //   return $this->db->get('tb_album')->num_rows();	
  // }

  // function total_rows_arsip(){
  //   return $this->db->get('tb_arsip_publik')->num_rows();	
  // }

  // function total_rows_regulasi(){
  //   return $this->db->get('tb_regulasi')->num_rows();	
  // }

  public function tampil_event()
  {
    $this->db->select('*') ;
    $this->db->from('tb_event'); 
    $this->db->like('nama_event');
    // $this->db->like('jenis_artikel',$jenis);
    $this->db->order_by('tanggal_event', 'DESC');
    $this->db->limit(3);
    // memanggil data di database tb_user
    return $this->db->get()->result();
  

    return $this->db->get('tb_event');  // lalu buat view user
  }

  




}
?>