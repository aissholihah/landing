<?php 




class M_grup_arsip_video extends Ci_Model{
	public function tampil_data()
	{
		// memanggil data di database tb_grup_arsip_video
		return $this->db->get('tb_grup_arsip_video');	
	}

	public function input_data()
        {
                $this->nama_grup_arsip_video    = $_POST['nama_grup_arsip_video'];
                $this->tahun    = $_POST['tahun'];
                $this->db->insert('tb_grup_arsip_video', $this);
        }
        
    public function hapus_data($where,$table)
    {
    	$this->db->where($where);
    	$this->db->delete($table);

    }

    public function edit_data($where,$table)
    {
        return $this->db->GET_where($table,$where);
       

    }

    // bikin update data
    public function update_data($where, $data, $table)
    {
        $this->db->where($where);
        $this->db->update($table,$data);
    }

    public function get_keyword($keyword){
    // manggil data dari db
    $this->db->select('*') ;     // dia akan milih sebua data yang ada di database yang ada di tb_artikel.
    
    $this->db->from('tb_grup_arsip_video');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel artikel
     // untuk field jenis artikel, dengan kunci keyword.
    $this->db->like("lower(nama_grup_arsip_video)", strtolower($keyword));
    // $this->db->or_like("lower(password_user)", strtolower($keyword));
    //$this->db->or_like("lower(email_user)", strtolower($keyword));
    
        
    return $this->db->get()->result();
    }// end get


    public function count_get_keyword($keyword){
    // manghitung ada berapa data yang sesuai dengan input yang disearch.
    $this->db->select('count(*)') ;     // dia akan milih sebua data yang ada di database yang ada di tb_artikel.
    
    $this->db->from('tb_grup_arsip_video');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel artikel
     // untuk field jenis artikel, dengan kunci keyword.
    $this->db->like("lower(nama_grup_arsip_video)", strtolower($keyword));
    // $this->db->or_like("lower(password_user)", strtolower($keyword));
    //$this->db->or_like("lower(email_user)", strtolower($keyword));
    
        
    return $this->db->count_all_results();
    }

    // pagination 
    public function get_data($limit, $start){
        $query = $this->db->get('tb_grup_arsip_video', $limit, $start);
        return $query;

    }

    public function get_data_search($keyword, $limit, $start){
        $this->db->select('*') ;     
    
        $this->db->from('tb_grup_arsip_video');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel artikel
     // untuk field jenis artikel, dengan kunci keyword.
        $this->db->like("lower(nama_grup_arsip_video)", strtolower($keyword));
        // $this->db->or_like("lower(password_user)", strtolower($keyword));
        //$this->db->or_like("lower(email_user)", strtolower($keyword));
        //$this->db->limit($limit, $start);
        //$query = $this->db->get('tb_grup_arsip_video', $limit, $start);
        return $this->db->get();

    }





}// end class




 ?>