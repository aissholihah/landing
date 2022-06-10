<?php 
class M_arsip_arsitek extends Ci_Model{
	public function tampil_data()
	{
		// memanggil data di database tb_user
		return $this->db->get('tb_arsip_kearsitekturan');	// lalu buat view user
	}

	public function input_data($data,$table)
        {
                // $this->judul_arsip          = $data['judul_arsip']; // please read the below note
                // $this->tgl_publikasi_arsip  = $data['tgl_publikasi_arsip'];
                // $this->unit_kerja           = $data['unit_kerja'];
                // $this->file_arsip           = $data['file_arsip'];



                
                $this->unit_kerja                 = $data['unit_kerja']; // inget POST['berdasarkan name di tag input']
                $this->pencipta_kode_instansi     = $data['pencipta_kode_instansi'];
                $this->no_kerja                   = $data['no_kerja'];
                $this->arsitek_perusahaan         = $data['arsitek_perusahaan'];     //[name]
                $this->tanggal                    = $data['tanggal'];
                $this->lokasi                     = $data['lokasi'];
                $this->nama_bangunan              = $data['nama_bangunan'];
                $this->tipe_bangunan              = $data['tipe_bangunan'];
                $this->keterangan                 = $data['keterangan'];
                $this->skala                      = $data['skala'];
                $this->satuan                     = $data['satuan'];
                $this->tingkat_perkembangan       = $data['tingkat_perkembangan'];
                $this->kondisi                    = $data['kondisi'];

                $this->db->insert($table, $this);

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
    
    $this->db->from('tb_arsip_kearsitekturan');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel artikel
        // untuk field jenis artikel, dengan kunci keyword.
    




        $this->db->like("lower(unit_kerja)", strtolower($keyword)); // inget or_like('berdasarkan name di tag db')
        $this->db->or_like("lower(pencipta_kode_instansi)", strtolower($keyword));
        $this->db->or_like("lower(no_kerja)", strtolower($keyword));
        $this->db->or_like("lower(arsitek_perusahaan)", strtolower($keyword));     //[name]
        $this->db->or_like("lower(tanggal)", strtolower($keyword));
        $this->db->or_like("lower(lokasi)", strtolower($keyword));
        $this->db->or_like("lower(nama_bangunan)", strtolower($keyword));
        $this->db->or_like("lower(tipe_bangunan)", strtolower($keyword));
        $this->db->or_like("lower(keterangan)", strtolower($keyword));
        $this->db->or_like("lower(skala)", strtolower($keyword));
        $this->db->or_like("lower(satuan)", strtolower($keyword));
        $this->db->or_like("lower(tingkat_perkembangan)", strtolower($keyword));
        $this->db->or_like("lower(kondisi)", strtolower($keyword));





    
    return $this->db->get()->result();
    }// end search

    public function count_get_keyword($keyword){
    // manggil data dari db
    $this->db->select('count(*)') ;     // dia akan milih sebua data yang ada di database yang ada di tb_artikel.
    
        $this->db->from('tb_arsip_kearsitekturan');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel artikel
     // untuk field jenis artikel, dengan kunci keyword.
        $this->db->like("lower(unit_kerja)", strtolower($keyword)); // inget or_like('berdasarkan name di tag db')
        $this->db->or_like("lower(pencipta_kode_instansi)", strtolower($keyword));
        $this->db->or_like("lower(no_kerja)", strtolower($keyword));
        $this->db->or_like("lower(arsitek_perusahaan)", strtolower($keyword));     //[name]
        $this->db->or_like("lower(tanggal)", strtolower($keyword));
        $this->db->or_like("lower(lokasi)", strtolower($keyword));
        $this->db->or_like("lower(nama_bangunan)", strtolower($keyword));
        $this->db->or_like("lower(tipe_bangunan)", strtolower($keyword));
        $this->db->or_like("lower(keterangan)", strtolower($keyword));
        $this->db->or_like("lower(skala)", strtolower($keyword));
        $this->db->or_like("lower(satuan)", strtolower($keyword));
        $this->db->or_like("lower(tingkat_perkembangan)", strtolower($keyword));
        $this->db->or_like("lower(kondisi)", strtolower($keyword));
        
    return $this->db->count_all_results();
    }

    // pagination 
    public function get_data($limit, $start){
        $query = $this->db->get('tb_arsip_kearsitekturan', $limit, $start);
        return $query;

    }

    public function get_data_search($keyword, $limit, $start){
        $this->db->select('*') ;     // dia akan milih sebua data yang ada di database yang ada di tb_artikel.
    
        $this->db->from('tb_arsip_kearsitekturan');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel artikel
     // untuk field jenis artikel, dengan kunci keyword.
        $this->db->like("lower(unit_kerja)", strtolower($keyword)); // inget or_like('berdasarkan name di tag db')
        $this->db->or_like("lower(pencipta_kode_instansi)", strtolower($keyword));
        $this->db->or_like("lower(no_kerja)", strtolower($keyword));
        $this->db->or_like("lower(arsitek_perusahaan)", strtolower($keyword));     //[name]
        $this->db->or_like("lower(tanggal)", strtolower($keyword));
        $this->db->or_like("lower(lokasi)", strtolower($keyword));
        $this->db->or_like("lower(nama_bangunan)", strtolower($keyword));
        $this->db->or_like("lower(tipe_bangunan)", strtolower($keyword));
        $this->db->or_like("lower(keterangan)", strtolower($keyword));
        $this->db->or_like("lower(skala)", strtolower($keyword));
        $this->db->or_like("lower(satuan)", strtolower($keyword));
        $this->db->or_like("lower(tingkat_perkembangan)", strtolower($keyword));
        $this->db->or_like("lower(kondisi)", strtolower($keyword));
        $this->db->limit($limit, $start);
        //$query = $this->db->get('tb_user', $limit, $start);
        return $this->db->get();

    }





}	//end class

 ?>