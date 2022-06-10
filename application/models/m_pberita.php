<?php 
// defined('BASEPATH') OR exit('No direct script access allowed');
class M_pberita extends CI_Model
{
  public function tampil_data($jenis)
  {
    $this->db->select('*') ;
    $this->db->from('tb_artikel'); 
    $this->db->like('jenis_artikel',$jenis);
    $this->db->order_by('tgl_publikasi_artikel', 'DESC');
    $this->db->limit(10);
    // memanggil data di database tb_user
    return $this->db->get()->result();  
  }

  // public function carousel(){
  //   $this->db->select('*') ;
  //   $this->db->from('tb_artikel'); 
  //   $this->db->like('jenis_artikel','berita');
  //   $this->db->order_by('tgl_publikasi_artikel', 'DESC');
  //   $this->db->limit(3);
  //   // memanggil data di database tb_user
  //   return $this->db->get()->result(); 
  // }

  function total_rows_berita(){
    $this->db->select('*');
    $this->db->from('tb_artikel');
    $this->db->like('jenis_artikel','berita');
    $this->db->order_by('tgl_publikasi_artikel', 'DESC');

    return $this->db->count_all_results();
  }

  // function total_rows_album(){
  //   return $this->db->get('tb_album')->num_rows();	
  // }

  // function total_rows_arsip(){
  //   return $this->db->get('tb_arsip_publik')->num_rows();	
  // }

  // function total_rows_regulasi(){
  //   return $this->db->get('tb_regulasi')->num_rows();	
  // }


  public function get_keyword($keyword){
    // manggil data dari db
    $this->db->select('*') ;     // dia akan milih sebua data yang ada di database yang ada di tb_artikel.
    
    $this->db->from('tb_artikel');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel artikel
       // untuk field jenis artikel, dengan kunci keyword.
    $this->db->where('jenis_artikel','berita');
    $this->db->group_start();
    //$this->db->like("lower(jenis_artikel)", strtolower($keyword));
    $this->db->like("lower(tgl_publikasi_artikel)", strtolower($keyword));
    $this->db->or_like("lower(judul_artikel)", strtolower($keyword));
    $this->db->or_like("lower(author)", strtolower($keyword));
    $this->db->or_like("lower(isi)", strtolower($keyword));
    $this->db->group_end();

    return $this->db->get()->result();
    }

    public function count_get_keyword($keyword){
    // manggil data dari db
    $this->db->select('count(*)') ;     // dia akan milih sebua data yang ada di database yang ada di tb_artikel.
    
    $this->db->from('tb_artikel');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel artikel
     // untuk field jenis artikel, dengan kunci keyword.
    $this->db->where('jenis_artikel','berita');
    $this->db->group_start();
    //$this->db->like("lower(jenis_artikel)", strtolower($keyword));
    $this->db->like("lower(tgl_publikasi_artikel)", strtolower($keyword));
    $this->db->or_like("lower(judul_artikel)", strtolower($keyword));
    $this->db->or_like("lower(author)", strtolower($keyword));
    $this->db->or_like("lower(isi)", strtolower($keyword));
    $this->db->group_end();
    
        
    return $this->db->count_all_results();
    }


    // pagination 
    // public function get_data($limit, $start){
    //     $query = $this->db->get('tb_artikel', $limit, $start);
    //     return $query;
    // }


    public function get_data($jenis, $limit, $start){
      
        $query = $this->db->get_where('tb_artikel', array('jenis_artikel' => $jenis), $limit, $start);
        //$query = $this->db->get('tb_artikel', $limit, $start);
        return $query;
    }






    public function get_data_search($keyword, $limit, $start){
        $this->db->select('*') ;     // dia akan milih sebua data yang ada di database yang ada di tb_artikel.
    
        $this->db->from('tb_artikel');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel artikel
     // untuk field jenis artikel, dengan kunci keyword.
        $this->db->where('jenis_artikel','berita');
    $this->db->group_start();
    //$this->db->like("lower(jenis_artikel)", strtolower($keyword));
    $this->db->like("lower(tgl_publikasi_artikel)", strtolower($keyword));
    $this->db->or_like("lower(judul_artikel)", strtolower($keyword));
    $this->db->or_like("lower(author)", strtolower($keyword));
    $this->db->or_like("lower(isi)", strtolower($keyword));
    $this->db->group_end();
    $this->db->limit($limit, $start);
    
        //$query = $this->db->get('tb_user', $limit, $start);
        return $this->db->get();

    }


    public function detail_data($id){
        $this->db->select('*') ;     // dia akan milih sebua data yang ada di database yang ada di tb_artikel.
    
        $this->db->from('tb_artikel');  // manggil nama tb nya
        // manggil setipa nama field yanga ada di tabel artikel
       // untuk field jenis artikel, dengan kunci keyword.
        $this->db->where('id_artikel',$id);

        return $this->db->get()->row();
    }





}
?>