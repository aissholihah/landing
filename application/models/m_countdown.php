<?php 
class M_countdown extends Ci_Model{
	public function tampil_data()
	{
		// memanggil data di database tb_user
		return $this->db->get('tb_tes');	// lalu buat view user
	}

    public function time($start)
    {
    $this->db->insert('tb_tes', $start);
    if($this->db->affected_rows()>0){
        return true;
        }else
        {
        return false;
        }
    }

    public function select_time(){
    $this->db->select('*');
    $this->db->from('tb_tes');
    $query = $this->db->get();
    if($query->num_rows()>0)
        {
        return $query->row();
        }
        
    }






}//end class

?>



