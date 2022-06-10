<?php 
class M_administrator extends Ci_Model{
	public function tampil_data()
	{
		// memanggil data di database tb_user
		return $this->db->get('tb_administrator');	// lalu buat view user
	}

	public function input_data()
        {
                $this->username_administrator    = $_POST['username_administrator']; // please read the below note
                $this->password_administrator  = md5($_POST['password_administrator']);
                
                $this->email_administrator      = $_POST['email_administrator'];

                $this->db->insert('tb_administrator', $this);
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
    public function update_data($where, $data, $table )
    {
        $this->db->where($where);
        $this->db->update($table,$data);
    }

    public function get_keyword($keyword){
    // manggil data dari db
    $this->db->select('*') ;     // dia akan milih sebua data yang ada di database yang ada di tb_artikel.
    
    $this->db->from('tb_administrator');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel artikel
    $this->db->like("lower(username_administrator)", strtolower($keyword));      // untuk field jenis artikel, dengan kunci keyword.
    $this->db->or_like("lower(email_administrator)", strtolower($keyword));
    
    return $this->db->get()->result();
    }// end search


    public function count_get_keyword($keyword){
    // manggil data dari db
    $this->db->select('count(*)') ;     // dia akan milih sebua data yang ada di database yang ada di tb_artikel.
    
    $this->db->from('tb_administrator');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel artikel
     // untuk field jenis artikel, dengan kunci keyword.
    $this->db->like("lower(username_administrator)", strtolower($keyword));
    // $this->db->or_like("lower(password_user)", strtolower($keyword));
    $this->db->or_like("lower(email_administrator)", strtolower($keyword));
    
        
    return $this->db->count_all_results();
    }




    // pagination 
    public function get_data($limit, $start){
        $query = $this->db->get('tb_administrator', $limit, $start);
        return $query;

    }


    public function get_data_search($keyword, $limit, $start){
        $this->db->select('*') ;     // dia akan milih sebua data yang ada di database yang ada di tb_artikel.
    
        $this->db->from('tb_administrator');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel artikel
     // untuk field jenis artikel, dengan kunci keyword.
        $this->db->like("lower(username_administrator)", strtolower($keyword));
        // $this->db->or_like("lower(password_user)", strtolower($keyword));
        $this->db->or_like("lower(email_administrator)", strtolower($keyword));
        $this->db->limit($limit, $start);
        //$query = $this->db->get('tb_user', $limit, $start);
        return $this->db->get();

    }


}	//end class

 ?> 