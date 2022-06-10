<?php
Class M_arsip_teks extends CI_Model
{
  function tampil_data() 
    {
        $this->db->order_by('id_arsip_tekstual', 'ASC');
        return $this->db->from('tb_arsip_tekstual')
          ->get()
          ->result();
    }

    function GetID($id_arsip_tekstual = '')
    {
      return $this->db->get_where('tb_arsip_tekstual', array('id_arsip_tekstual' => $id_arsip_tekstual))->row();
    }
    function HapusMahasiswa($id_arsip_tekstual)
    {
        $this->db->delete('tb_arsip_tekstual',array('id_arsip_tekstual' => $id_arsip_tekstual));
    }
}
?>