<?php 
class M_album extends Ci_Model{
	public function tampil_data()
	{
		// memanggil data di database tb_user
		return $this->db->get('tb_album');	// lalu buat view user
        // $this->db->select('*') ;
        // $this->db->from('tb_album'); 
        
        // $this->db->order_by('id_album', 'DESC');
        
    // memanggil data di database tb_user
        // return $this->db->get()->result();
    }



    public function input_data($data,$table)
    {           
        //         $this->db->select('tb_album.*, tb_grup_album.nama_grup_album');
        // $this->db->from('tb_album');
        // $this->db->join('tb_grup_album', 'tb_album.grup = tb_grup_album.id_grup_album');


                $this->judul_album      = $data["judul_album"]; // please read the below note
                $this->foto             = $data["foto"];
                $this->narasi_album     = $data["narasi_album"];
                // $this->tahun            = $data["tahun"];
                $this->grup             = $data["grup"];

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
    $this->db->select('*') ;     // dia akan milih sebua data yang ada di database yang ada di tb_album.
    
    $this->db->from('tb_album');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel album
          // untuk field jenis album, dengan kunci keyword.
    $this->db->like("lower(judul_album)", strtolower($keyword));
    $this->db->or_like("lower(foto)", strtolower($keyword));
    $this->db->or_like("lower(narasi_album)", strtolower($keyword));
    $this->db->or_like("lower(tahun)", strtolower($keyword));
    $this->db->or_like("lower(grup)", strtolower($keyword));


    return $this->db->get()->result();
    }// end get


    public function count_get_keyword($keyword){    //search
        $keyword=urldecode($keyword);
        $this->db->select('tb_album.*, tb_grup_album.nama_grup_album,tb_grup_album.tahun_grup_album ');
        $this->db->from('tb_album');
        $this->db->join('tb_grup_album', 'tb_album.grup = tb_grup_album.id_grup_album' );
        //$this->db->select('*') ;     // dia akan milih sebua data yang ada di database yang ada di tb_album.

        //$this->db->from('tb_album');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel album
     // untuk field jenis album, dengan kunci keyword.

        $this->db->like("lower(tb_album.judul_album)", strtolower($keyword));
        $this->db->or_like("lower(tb_album.foto)", strtolower($keyword));
        $this->db->or_like("lower(tb_album.narasi_album)", strtolower($keyword));
        $this->db->or_like("lower(tb_album.tahun)", strtolower($keyword));
        $this->db->or_like("lower(tb_grup_album.nama_grup_album)", strtolower($keyword));
        $this->db->or_like("lower(tb_grup_album.tahun_grup_album)", strtolower($keyword));
    

    return $this->db->count_all_results();
}

    // pagination 
public function get_data($limit, $start){
        //$query = $this->db->get('tb_album', $limit, $start);
        //return $query;
    $this->db->select('tb_album.*, tb_grup_album.nama_grup_album, tb_grup_album.tahun_grup_album');
    $this->db->from('tb_album');
    $this->db->join('tb_grup_album', 'tb_album.grup = tb_grup_album.id_grup_album');
    $this->db->limit($limit, $start);

    $query = $this->db->get();
    return $query;
}

public function get_data_search($keyword, $limit, $start){
        $keyword=urldecode($keyword);
        $this->db->select('tb_album.*, tb_grup_album.nama_grup_album,tb_grup_album.tahun_grup_album');
        $this->db->from('tb_album');
        $this->db->join('tb_grup_album', 'tb_album.grup = tb_grup_album.id_grup_album');
        //$this->db->select('*') ;     // dia akan milih sebua data yang ada di database yang ada di tb_album.

        //$this->db->from('tb_album');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel album
     // untuk field jenis album, dengan kunci keyword.

        $this->db->like("lower(tb_album.judul_album)", strtolower($keyword));
        $this->db->or_like("lower(tb_album.foto)", strtolower($keyword));
        $this->db->or_like("lower(tb_album.narasi_album)", strtolower($keyword));
        $this->db->or_like("lower(tb_album.tahun)", strtolower($keyword));
        $this->db->or_like("lower(tb_grup_album.nama_grup_album)", strtolower($keyword));
        $this->db->or_like("lower(tb_grup_album.tahun_grup_album)", strtolower($keyword));
        $this->db->limit($limit, $start);

        // $this->db->select('tb_album.*, tb_grup_album.nama_grup_album');
        // $this->db->from('tb_album');
        // $this->db->join('tb_grup_album', 'tb_album.grup = tb_grup_album.id_grup_album');

        //$query = $this->db->get('tb_user', $limit, $start);
        return $this->db->get();

    }

    public function datagrup(){
        //return $this->db->get('tb_grup_album')->result_array();

        $this->db->select('tb_album.*, tb_grup_album.nama_grup_album');
        $this->db->from('tb_album');
        $this->db->join('tb_grup_album', 'tb_album.grup = tb_grup_album.id_grup_album');

    }

    public function tahungrup(){
        //return $this->db->get('tb_grup_album')->result_array();

        $this->db->select('tb_album.*, tb_grup_album.tahun');
        $this->db->from('tb_album');
        $this->db->join('tb_grup_album', 'tb_album.tahun = tb_grup_album.id_grup_album');
    }


}	//end class

?> 