<?php 
// defined('BASEPATH') OR exit('No direct script access allowed');
class M_p_arsip_foto extends CI_Model
{
	public function get_id_grup_arsip_foto()
	{
         $this->db->select('*') ;
         $this->db->from('tb_grup_arsip_foto'); 
        
         $this->db->order_by('id_grup_arsip_foto', 'DESC');
         $this->db->limit(1);
    // memanggil data di database tb_user
        return $this->db->get()->row();
    }
	
	public function get_arsip_foto($idgrup)
	{
		$this->db->select('*') ;
        $this->db->from('tb_arsip_foto');
        $this->db->where('grup',$idgrup);

        return $this->db->get()->result(); 

	}

	public function tampil_data()
	{
		//$this->db->select('*') ;
        //$this->db->from('tb_arsip_foto');
        //$this->db->group_by("grup");
        //$this->db->order_by('grup', 'ASC');
        $this->db->select('tb_arsip_foto.*, tb_grup_arsip_foto.*');
        // $this->db->select('tb_arsip_foto.*, tb_grup_arsip_foto.nama_grup_arsip_foto');
        $this->db->from('tb_arsip_foto');
        $this->db->join('tb_grup_arsip_foto', 'tb_arsip_foto.grup = tb_grup_arsip_foto.id_grup_arsip_foto');
		$this->db->group_by("tb_arsip_foto.grup");
        $this->db->order_by('tb_arsip_foto.grup', 'ASC');
        return $this->db->get()->result(); 		
	}

    public function get_arsip_tahun()
    {
        $this->db->select('tahun') ;
        $this->db->from('tb_grup_arsip_foto');
        $this->db->group_by('tahun');

        return $this->db->get()->result();
    }


}
?>