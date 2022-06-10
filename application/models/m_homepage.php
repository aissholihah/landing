<?php 
// defined('BASEPATH') OR exit('No direct script access allowed');
class M_homepage extends CI_Model
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
    $this->db->limit(3);
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
    //$this->db->select('*') ;
    //$this->db->select('id_event, nama_event, lokasi, CONCAT(tanggal_event, '.', waktu) AS time', FALSE);
    $this->db->select("*,CONCAT(tanggal_event,'\t', waktu) AS time, CURRENT_DATE() AS noyy",FALSE);
    $this->db->from('tb_event'); 
    $this->db->like('nama_event');
    // $this->db->like('jenis_artikel',$jenis);
    // $this->db->get();
    // $this->db->from('tb_event');
    $this->db->where('tanggal_event >', date("Y-m-d")  );
    $this->db->order_by('tanggal_event ', 'DESC');
    
    $this->db->limit(3);
    // memanggil data di database tb_user
    //$this->db->select('id_event, nama_event, lokasi, CONCAT(tanggal_event, '.', waktu) AS time', FALSE);
    //$this->db->from('tb_event');
    //$this->db->where('time >', 'now()');



    return $this->db->get()->result();
  
    // return $this->db->get_where('tb_event');
    // return $this->db->get('tb_event'); 

       //MUSS

    // SELECT * FROM `tb_event` where concat (tanggal_event, '', waktu) > now
  
    $lama=3;
    

    
  }// end tampil event

  // SEARCH

  public function count_get_keyword($keyword){
    // manggil data dari db
    $this->db->select('*') ;     // dia akan milih sebua data yang ada di database yang ada di tb_artikel.
    
    $this->db->from('global_search');  
    // manggil nama tb nya
    // manggil setiap nama field yanga ada di tabel artikel
    // untuk field jenis artikel, dengan kunci keyword.
    //$this->db->where('id');   
    //$this->db->group_start();
    //$this->db->like("lower(jenis)", strtolower($keyword));
    $this->db->like("lower(gambar)", strtolower($keyword));
    $this->db->or_like("lower(judul)", strtolower($keyword));
    $this->db->or_like("lower(isi)", strtolower($keyword));
    // $this->db->or_like("lower(narasi_album)", strtolower($keyword));
    //$this->db->group_end();   
        
    return $this->db->count_all_results();
    }

    public function get_data_search($keyword, $limit, $start){
    $this->db->select('*') ;     // dia akan milih sebua data yang ada di database yang ada di tb_artikel.
    
    $this->db->from('global_search');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel artikel
     // untuk field jenis artikel, dengan kunci keyword.
    //$this->db->where('id');
    //$this->db->group_start();
    //$this->db->like("lower(jenis)", strtolower($keyword));
    $this->db->like("lower(gambar)", strtolower($keyword));
    $this->db->or_like("lower(judul)", strtolower($keyword));
    $this->db->or_like("lower(isi)", strtolower($keyword));
    // $this->db->or_like("lower(narasi_album)", strtolower($keyword));
    //$this->db->group_end();
    $this->db->limit($limit, $start);
    
    //$query = $this->db->get('global_search', $limit, $start);
    return $this->db->get();

    }


  public function get_keyword($keyword){
    // manggil data dari db
    // $this->db->select('*') ;     // dia akan milih sebua data yang ada di database yang ada di tb_artikel.
    
    // $this->db->from('tb_artikel');  // manggil nama tb nya
    // // manggil setipa nama field yanga ada di tabel artikel
    //    // untuk field jenis artikel, dengan kunci keyword.
    // $this->db->where('jenis_artikel','berita');
    $this->db->select('judul_artikel, isi');
    $this->db->from('tb_artikel');
    $query1 = $this->db->get_compiled_select();

    $this->db->select('judul_album, narasi_album');
    $this->db->from('tb_album');
    $query2 = $this->db->get_compiled_select();

    $query = $this->db->query($query1 . ' UNION ' . $query2);
    // return $this->db->get()->result();
    $this->db->group_start();
    //$this->db->like("lower(jenis_artikel)", strtolower($keyword));
    $this->db->like("lower(judul_artikel)", strtolower($keyword));
    $this->db->or_like("lower(isi)", strtolower($keyword));
    // $this->db->or_like("lower(judul_album)", strtolower($keyword));
    // $this->db->or_like("lower(narasi_album)", strtolower($keyword));
    $this->db->group_end();

    return $this->db->get()->result();
    }

  public function gabung(){
    $this->db->select('judul_artikel, isi');
    $this->db->from('tb_artikel');
    $query1 = $this->db->get_compiled_select();

    $this->db->select('judul_album, narasi_album');
    $this->db->from('tb_album');
    $query2 = $this->db->get_compiled_select();

    $query = $this->db->query($query1 . ' UNION ' . $query2);
    return $this->db->get()->result();
  }

  public function liveSearch($query)
  { 
    if ($query != '')
    {
      return 
      $this->db->select('judul_artikel, isi');
      $this->db->from('tb_artikel');
      $query1 = $this->db->get_compiled_select();

      $this->db->select('judul_album, narasi_album');
      $this->db->from('tb_album');
      $query2 = $this->db->get_compiled_select();

      $query = $this->db->query($query1 . ' UNION ' . $query2);
    }
  }

public function siswa($query)
  {
    if ($query != '')
    {
      return $this->db->select('*')
        ->join('kelas', 'kelas.id_kelas = siswa.id_kelas')
        ->like('nama_siswa',$query)
        ->or_like('nis',$query)
        ->get('siswa');
    }
  }
  




}
?>