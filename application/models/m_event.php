<?php 

class M_event extends Ci_Model{
	public function tampil_data()
	{
		// memanggil data di database tb_event
		return $this->db->get('tb_event');	// lalu buat view event
	}

	public function input_data()
        {
                $this->tanggal_event    = $_POST['tanggal_event']; // please read the below note
                $this->nama_event  = $_POST['nama_event'];
                $this->lokasi  = $_POST['lokasi'];
                $this->waktu  = $_POST['waktu'];


                $this->db->insert('tb_event', $this);
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
    
    $this->db->from('tb_event');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel artikel
     // untuk field jenis artikel, dengan kunci keyword.
    $this->db->like("lower(tanggal_event)", strtolower($keyword));
    $this->db->or_like("lower(nama_event)", strtolower($keyword));
    $this->db->or_like("lower(lokasi)", strtolower($keyword));
    $this->db->or_like("lower(waktu)", strtolower($keyword));
    
        
    return $this->db->get()->result();
    }// end get


    public function count_get_keyword($keyword){
    // manggil data dari db
    $this->db->select('count(*)') ;     // dia akan milih sebua data yang ada di database yang ada di tb_artikel.
    
    $this->db->from('tb_event');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel artikel
     // untuk field jenis artikel, dengan kunci keyword.
    $this->db->like("lower(tanggal_event)", strtolower($keyword));
    $this->db->or_like("lower(nama_event)", strtolower($keyword));
    $this->db->or_like("lower(lokasi)", strtolower($keyword));
    $this->db->or_like("lower(waktu)", strtolower($keyword));
    
        
    return $this->db->count_all_results();
    }

    // pagination 
    public function get_data($limit, $start){
        $query = $this->db->get('tb_event', $limit, $start);
        return $query;

    }

    public function get_data_search($keyword, $limit, $start){
        $this->db->select('*') ;     // dia akan milih sebua data yang ada di database yang ada di tb_artikel.
    
        $this->db->from('tb_event');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel artikel
     // untuk field jenis artikel, dengan kunci keyword.
        $this->db->like("lower(tanggal_event)", strtolower($keyword));
        $this->db->or_like("lower(nama_event)", strtolower($keyword));
        $this->db->or_like("lower(lokasi)", strtolower($keyword));
        $this->db->or_like("lower(waktu)", strtolower($keyword));
        $this->db->limit($limit, $start);
        //$query = $this->db->get('tb_event', $limit, $start);
        return $this->db->get();

    }

    public function hapus_exp(){
        //SELECT * FROM `tb_event` WHERE concat ('tanggal_event,'',waktu')>now();

    }





}// end class




 ?>