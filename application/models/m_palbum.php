<?php 
// defined('BASEPATH') OR exit('No direct script access allowed');
class M_palbum extends CI_Model
{
	public function get_id_grup_album()
	{
         $this->db->select('*') ;
         $this->db->from('tb_grup_album'); 
        
         $this->db->order_by('id_grup_album', 'DESC');
         $this->db->limit(1);
    // memanggil data di database tb_user
        return $this->db->get()->row();
    }

    public function grup_album_home()
    {
         $this->db->select('*') ;
         $this->db->from('tb_grup_album'); 
        
         $this->db->order_by('id_grup_album', 'DESC');
         //$this->db->limit(1);
    // memanggil data di database tb_user
        return $this->db->get()->result();
    }
	
	public function get_album($idgrup)
	{
		$this->db->select('*') ;
        $this->db->from('tb_album');
        $this->db->where('grup',$idgrup);

        return $this->db->get()->result(); 

	}

	public function tampil_data()
	{
		//$this->db->select('*') ;
        //$this->db->from('tb_album');
        //$this->db->group_by("grup");
        //$this->db->order_by('grup', 'ASC');
        $this->db->select('tb_album.*, tb_grup_album.*'); // otomatis dia udah mengandung info tahun_grup_album
        $this->db->from('tb_album');
        $this->db->join('tb_grup_album', 'tb_album.grup = tb_grup_album.id_grup_album');
		$this->db->group_by("tb_album.grup");
        $this->db->order_by('tb_album.grup', 'ASC');
        return $this->db->get()->result(); 		
	}

    public function tahun_grup(){
        //return $this->db->get('tb_grup_album')->result_array();

        $this->db->select('tb_album.*, tb_grup_album.tahun_grup_album');
        $this->db->from('tb_album');
        $this->db->join('tb_grup_album', 'tb_album.tahun = tb_grup_album.id_grup_album');
    }

    public function get_album_tahun()
    {
        $this->db->select('tahun_grup_album') ;
        $this->db->from('tb_grup_album');
        $this->db->group_by('tahun_grup_album');

        return $this->db->get()->result();
    }

    public function tampil_data_taun()
    {
        $this->db->select('tb_album.*,tb_grup_album.tahun_grup_album');
        $this->db->from('tb_album');
        $this->db->join('tb_grup_album', 'tb_album.grup = tb_grup_album.id_grup_album');
        $this->db->group_by("tb_album.tahun");
        $this->db->order_by('tb_album.tahun', 'ASC');
        return $this->db->get()->result();      
    }

}
?>