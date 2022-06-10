<?php 
// defined('BASEPATH') OR exit('No direct script access allowed');
class M_pevent extends CI_Model
{
  // public function delete_event()
  // {
  //   if (tampil_event()>GETDATE()
  //     { 
  //       $this->db->select('*') ;
  //       $this->db->delete('tb_event');
  //       $this->db->from('tb_event');        
  //       $this->db->where('tanggal_event');
  //       return $this->db->get('tb_event')->result();
  //     }
  //   )
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
  }
}