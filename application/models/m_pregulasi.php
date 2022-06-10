<?php 
// defined('BASEPATH') OR exit('No direct script access allowed');
class M_pregulasi extends CI_Model
{


  public function tampil_data($jenis)
  {
    $this->db->select('*') ;
    $this->db->from('tb_artikel'); 
    $this->db->like('jenis_artikel',$jenis);
    $this->db->order_by('tgl_publikasi_artikel', 'DESC');
    //$this->db->limit(10);
    // memanggil data di database tb_user
    return $this->db->get()->result();  
  }

  

    public function detail_data()
    {
        $this->db->select('*') ;     // dia akan milih sebua data yang ada di database yang ada di tb_artikel.
    
        $this->db->from('tb_artikel');  // manggil nama tb nya
        // manggil setipa nama field yanga ada di tabel artikel
       // untuk field jenis artikel, dengan kunci keyword.
        $this->db->where('id_artikel');

        return $this->db->get()->result();
    }





}//end class

?>