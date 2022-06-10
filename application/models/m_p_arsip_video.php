<?php 
// defined('BASEPATH') OR exit('No direct script access allowed');
class M_p_arsip_video extends CI_Model
{
	public function get_id_grup_arsip_video()
	{
         $this->db->select('*') ;
         $this->db->from('tb_grup_arsip_video'); 
        
         $this->db->order_by('id_grup_arsip_video', 'DESC');
         $this->db->limit(1);
    // memanggil data di database tb_user
        return $this->db->get()->row();
    }
	
	public function get_arsip_video($idgrup)
	{
		$this->db->select('*') ;
        $this->db->from('tb_arsip_video');
        $this->db->where('grup',$idgrup);
        $this->db->join('tb_grup_arsip_video', 'tb_arsip_video.grup = tb_grup_arsip_video.id_grup_arsip_video');

        return $this->db->get()->result(); 

	}

	public function tampil_data()
	{
		//$this->db->select('*') ;
        //$this->db->from('tb_arsip_video');
        //$this->db->group_by("grup");
        //$this->db->order_by('grup', 'ASC');
        $this->db->select('tb_arsip_video.*, tb_grup_arsip_video.nama_grup_arsip_video,tb_grup_arsip_video.tahun');
        $this->db->from('tb_arsip_video');
        $this->db->join('tb_grup_arsip_video', 'tb_arsip_video.grup = tb_grup_arsip_video.id_grup_arsip_video');
		$this->db->group_by("tb_arsip_video.grup");
        $this->db->order_by('tb_arsip_video.grup', 'ASC');
        return $this->db->get()->result(); 		
	}

    public function get_arsip_tahun()
    {
        $this->db->select('tahun') ;
        $this->db->from('tb_grup_arsip_video');
        $this->db->group_by('tahun');

        return $this->db->get()->result();
    }

}
?>