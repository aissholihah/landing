<?php 
class M_profil extends Ci_Model{
	public function tampil_data()
	{
		// memanggil data di database tb_user
		return $this->db->get('v_profil');	// lalu buat view user
        // $this->db->select('*') ;
        // $this->db->from('tb_profil'); 
        
        // $this->db->order_by('id_album', 'DESC');
        
    // memanggil data di database tb_user
        return $this->db->get()->result();
    }

   

    public function input_data($data,$table)
        {
                // $this->gambar_bagan                   = $data['gambar_bagan'];
                $this->nama             = $data['nama'];
                $this->id_atasan        = $data['id_atasan'];
                $this->jabatan          = $data['jabatan'];
                $this->email            = $data['email'];
                $this->kontak           = $data['kontak'];
                $this->foto             = $data['foto'];
                $this->profil           = $data['profil'];
                $this->tugas            = $data['tugas'];
                // $this->url_artikel              = $_POST['url_artikel'];

                $this->db->insert('tb_profil', $this);
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

    public function update_data($where, $data, $table )
    {   
        $this->db->where($where);
        $this->db->update($table,$data);
    }




    public function get_keyword($keyword){
    // manggil data dari db
    $this->db->select('*') ;     // dia akan milih sebua data yang ada di database yang ada di tb_artikel.
    
    $this->db->from('v_profil');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel artikel
       // untuk field jenis artikel, dengan kunci keyword.
    $this->db->like("lower(nama)", strtolower($keyword));
    $this->db->or_like("lower(jabatan)", strtolower($keyword));
    $this->db->or_like("lower(kontak)", strtolower($keyword));
    $this->db->or_like("lower(email)", strtolower($keyword));
    $this->db->or_like("lower(profil)", strtolower($keyword));
    $this->db->or_like("lower(tugas)", strtolower($keyword));
    $this->db->or_like("lower(nama_atasan)", strtolower($keyword));
    

    return $this->db->get()->result();
    }

    public function count_get_keyword($keyword){
    // manggil data dari db
    $this->db->select('count(*)') ;     // dia akan milih sebua data yang ada di database yang ada di tb_artikel.
    
    $this->db->from('v_profil');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel artikel
     // untuk field jenis artikel, dengan kunci keyword.
    $this->db->like("lower(nama)", strtolower($keyword));
    $this->db->or_like("lower(jabatan)", strtolower($keyword));
    $this->db->or_like("lower(kontak)", strtolower($keyword));
    $this->db->or_like("lower(email)", strtolower($keyword));
    $this->db->or_like("lower(profil)", strtolower($keyword));
    $this->db->or_like("lower(tugas)", strtolower($keyword));
    $this->db->or_like("lower(nama_atasan)", strtolower($keyword));
    
        
    return $this->db->count_all_results();
    }


    // pagination 
    public function get_data($limit, $start){
        $query = $this->db->get('v_profil', $limit, $start);
        return $query;
    }

    public function get_data_search($keyword, $limit, $start){
        $this->db->select('*') ;     // dia akan milih sebua data yang ada di database yang ada di tb_artikel.
    
        $this->db->from('v_profil');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel artikel
     // untuk field jenis artikel, dengan kunci keyword.
    $this->db->like("lower(nama)", strtolower($keyword));
    $this->db->or_like("lower(jabatan)", strtolower($keyword));
    $this->db->or_like("lower(kontak)", strtolower($keyword));
    $this->db->or_like("lower(email)", strtolower($keyword));
    $this->db->or_like("lower(profil)", strtolower($keyword));
    $this->db->or_like("lower(tugas)", strtolower($keyword));
    $this->db->or_like("lower(nama_atasan)", strtolower($keyword));
    $this->db->limit($limit, $start);
    
        //$query = $this->db->get('tb_user', $limit, $start);
        return $this->db->get();

    }

   



}//end class
?>