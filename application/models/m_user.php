<?php 
// class M_user extends Ci_Model{
// 	public function tampil_data()
// 	{
// 		// memanggil data di database tb_user
// 		return $this->db->get('tb_user');	// lalu buat view user
// 	}
// }


//NEWEST

class M_user extends Ci_Model{
	public function tampil_data()
	{
		// memanggil data di database tb_user
		return $this->db->get('tb_user');	// lalu buat view user
	}

	public function input_data()
        {
                $this->username    = $_POST['username']; // please read the below note
                $this->email        = $_POST['email'];
                $this->nama         = $_POST['nama'];
                $this->tgl_lahir    = $_POST['tgl_lahir'];
                $this->alamat       = $_POST['alamat'];
                $this->pekerjaan    = $_POST['pekerjaan'];
                $this->institusi    = $_POST['institusi'];

                $this->db->insert('tb_user', $this);
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
    
    $this->db->from('tb_user');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel artikel
     // untuk field jenis artikel, dengan kunci keyword.
    $this->db->like("lower(username)", strtolower($keyword));
    $this->db->or_like("lower(email)", strtolower($keyword));
    $this->db->or_like("lower(nama)", strtolower($keyword));
    $this->db->or_like("lower(tgl_lahir)", strtolower($keyword));
    $this->db->or_like("lower(alamat)", strtolower($keyword));
    $this->db->or_like("lower(pekerjaan)", strtolower($keyword));
    $this->db->or_like("lower(institusi)", strtolower($keyword));
    
        
    return $this->db->get()->result();
    }// end get


    public function count_get_keyword($keyword){
    // manggil data dari db
    $this->db->select('count(*)') ;     // dia akan milih sebua data yang ada di database yang ada di tb_artikel.
    
    $this->db->from('tb_user');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel artikel
     // untuk field jenis artikel, dengan kunci keyword.
    $this->db->like("lower(username)", strtolower($keyword));
    $this->db->or_like("lower(email)", strtolower($keyword));
    $this->db->or_like("lower(nama)", strtolower($keyword));
    $this->db->or_like("lower(tgl_lahir)", strtolower($keyword));
    $this->db->or_like("lower(alamat)", strtolower($keyword));
    $this->db->or_like("lower(pekerjaan)", strtolower($keyword));
    $this->db->or_like("lower(institusi)", strtolower($keyword));
    
        
    return $this->db->count_all_results();
    }

    // pagination 
    public function get_data($limit, $start){
        $query = $this->db->get('tb_user', $limit, $start);
        return $query;

    }

    public function get_data_search($keyword, $limit, $start){
        $this->db->select('*') ;     // dia akan milih sebua data yang ada di database yang ada di tb_artikel.
    
        $this->db->from('tb_user');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel artikel
     // untuk field jenis artikel, dengan kunci keyword.
        $this->db->like("lower(username)", strtolower($keyword));
        $this->db->or_like("lower(email)", strtolower($keyword));
        $this->db->or_like("lower(nama)", strtolower($keyword));
        $this->db->or_like("lower(tgl_lahir)", strtolower($keyword));
        $this->db->or_like("lower(alamat)", strtolower($keyword));
        $this->db->or_like("lower(pekerjaan)", strtolower($keyword));
        $this->db->or_like("lower(institusi)", strtolower($keyword));
        
        $this->db->limit($limit, $start);
        //$query = $this->db->get('tb_user', $limit, $start);
        return $this->db->get();

    }





}// end class




 ?>