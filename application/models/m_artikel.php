<?php 
class M_artikel extends Ci_Model{
	public function tampil_data()
	{
		// memanggil data di database tb_user
		return $this->db->get('tb_artikel');	// lalu buat view user
	}

	public function input_data($data,$table)
        {
                $this->gambar                   = $data['gambar'];
                $this->jenis_artikel            = $data['jenis_artikel'];
                $this->tgl_publikasi_artikel    = $data['tgl_publikasi_artikel'];
                $this->judul_artikel            = $data['judul_artikel'];
                $this->author                   = $data['author'];
                $this->isi                      = $data['isi'];
                // $this->url_artikel              = $_POST['url_artikel'];

                $this->db->insert('tb_artikel', $this);
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
    
    $this->db->from('tb_artikel');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel artikel
       // untuk field jenis artikel, dengan kunci keyword.
    $this->db->like("lower(jenis_artikel)", strtolower($keyword));
    $this->db->or_like("lower(tgl_publikasi_artikel)", strtolower($keyword));
    $this->db->or_like("lower(judul_artikel)", strtolower($keyword));
    $this->db->or_like("lower(author)", strtolower($keyword));
    $this->db->or_like("lower(isi)", strtolower($keyword));
    

    return $this->db->get()->result();
    }

    public function count_get_keyword($keyword){
    // manggil data dari db
    $this->db->select('count(*)') ;     // dia akan milih sebua data yang ada di database yang ada di tb_artikel.
    
    $this->db->from('tb_artikel');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel artikel
     // untuk field jenis artikel, dengan kunci keyword.
    $this->db->like("lower(gambar)", strtolower($keyword));
    $this->db->or_like("lower(jenis_artikel)", strtolower($keyword));
    $this->db->or_like("lower(tgl_publikasi_artikel)", strtolower($keyword));
    $this->db->or_like("lower(judul_artikel)", strtolower($keyword));
    $this->db->or_like("lower(author)", strtolower($keyword));
    $this->db->or_like("lower(isi)", strtolower($keyword));
    
        
    return $this->db->count_all_results();
    }


    // pagination 
    public function get_data($limit, $start){
        $query = $this->db->get('tb_artikel', $limit, $start);
        return $query;
    }

    public function get_data_search($keyword, $limit, $start){
        $this->db->select('*') ;     // dia akan milih sebua data yang ada di database yang ada di tb_artikel.
    
        $this->db->from('tb_artikel');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel artikel
     // untuk field jenis artikel, dengan kunci keyword.
    $this->db->like("lower(gambar)", strtolower($keyword));
    $this->db->or_like("lower(jenis_artikel)", strtolower($keyword));
    $this->db->or_like("lower(tgl_publikasi_artikel)", strtolower($keyword));
    $this->db->or_like("lower(judul_artikel)", strtolower($keyword));
    $this->db->or_like("lower(author)", strtolower($keyword));
    $this->db->or_like("lower(isi)", strtolower($keyword));
    $this->db->limit($limit, $start);
    
        //$query = $this->db->get('tb_user', $limit, $start);
        return $this->db->get();

    }

    
}	//end class

 ?>