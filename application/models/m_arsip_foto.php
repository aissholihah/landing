<?php 
class M_arsip_foto extends Ci_Model{
	public function tampil_data()
	{
		// memanggil data di database tb_user
		return $this->db->get('tb_arsip_foto');	// lalu buat view user
        // $this->db->select('*') ;
        // $this->db->from('tb_arsip_foto'); 
        
        // $this->db->order_by('id_album', 'DESC');
        
    // memanggil data di database tb_user
        return $this->db->get()->result();
    }

    public function get_nama_file($id) {
        $this->db->select('*');
        $this->db->from('tb_arsip_foto');
        $this->db->where('id_arsip_foto',$id);
        return $this->db->get()->row();
      //$query = $this->db->get();
      //return $query->result();
     }




    public function input_data($data,$table)
    {           
        //         $this->db->select('tb_arsip_foto.*, tb_grup_arsip_foto.nama_grup_arsip_foto');
        // $this->db->from('tb_arsip_foto');
        // $this->db->join('tb_grup_arsip_foto', 'tb_arsip_foto.grup = tb_grup_arsip_foto.id_grup_arsip_foto');


                $this->judul      = $data["judul"]; // please read the below note
                $this->foto       = $data["foto"];
                $this->narasi     = $data["narasi"];
                $this->grup       = $data["grup"];

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
    $this->db->select('*') ;     // dia akan milih sebua data yang ada di database yang ada di tb_arsip_foto.
    
    $this->db->from('tb_arsip_foto');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel album
          // untuk field jenis album, dengan kunci keyword.
    $this->db->like("lower(judul)", strtolower($keyword));
    $this->db->or_like("lower(foto)", strtolower($keyword));
    $this->db->or_like("lower(narasi)", strtolower($keyword));
    $this->db->or_like("lower(grup)", strtolower($keyword));


    return $this->db->get()->result();
    }// end get


    public function count_get_keyword($keyword){    //search
        $keyword=urldecode($keyword);
        $this->db->select('tb_arsip_foto.*, tb_grup_arsip_foto.nama_grup_arsip_foto,tb_grup_arsip_foto.tahun ');
        $this->db->from('tb_arsip_foto');
        $this->db->join('tb_grup_arsip_foto', 'tb_arsip_foto.grup = tb_grup_arsip_foto.id_grup_arsip_foto');
        //$this->db->select('*') ;     // dia akan milih sebua data yang ada di database yang ada di tb_arsip_foto.

        //$this->db->from('tb_arsip_foto');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel album
     // untuk field jenis album, dengan kunci keyword.

        $this->db->like("lower(tb_arsip_foto.judul)", strtolower($keyword));
        $this->db->or_like("lower(tb_arsip_foto.foto)", strtolower($keyword));
        $this->db->or_like("lower(tb_arsip_foto.narasi)", strtolower($keyword));
        $this->db->or_like("lower(tb_grup_arsip_foto.nama_grup_arsip_foto)", strtolower($keyword));
    

    return $this->db->count_all_results();
}

    // pagination 
public function get_data($limit, $start){
        //$query = $this->db->get('tb_arsip_foto', $limit, $start);
        //return $query;
    $this->db->select('tb_arsip_foto.*, tb_grup_arsip_foto.nama_grup_arsip_foto, tb_grup_arsip_foto.tahun');
    $this->db->from('tb_arsip_foto');
    $this->db->join('tb_grup_arsip_foto', 'tb_arsip_foto.grup = tb_grup_arsip_foto.id_grup_arsip_foto');
    $this->db->limit($limit, $start);

    $query = $this->db->get();
    return $query;
}

public function get_data_search($keyword, $limit, $start){
        $keyword=urldecode($keyword);
        $this->db->select('tb_arsip_foto.*, tb_grup_arsip_foto.nama_grup_arsip_foto, tb_grup_arsip_foto.tahun');
        $this->db->from('tb_arsip_foto');
        $this->db->join('tb_grup_arsip_foto', 'tb_arsip_foto.grup = tb_grup_arsip_foto.id_grup_arsip_foto');
        //$this->db->select('*') ;     // dia akan milih sebua data yang ada di database yang ada di tb_arsip_foto.

        //$this->db->from('tb_arsip_foto');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel album
     // untuk field jenis album, dengan kunci keyword.

        $this->db->like("lower(tb_arsip_foto.judul)", strtolower($keyword));
        $this->db->or_like("lower(tb_arsip_foto.foto)", strtolower($keyword));
        $this->db->or_like("lower(tb_arsip_foto.narasi)", strtolower($keyword));
        $this->db->or_like("lower(tb_grup_arsip_foto.nama_grup_arsip_foto)", strtolower($keyword));
        $this->db->or_like("lower(tb_grup_arsip_foto.tahun)", strtolower($keyword));
        $this->db->limit($limit, $start);

        // $this->db->select('tb_arsip_foto.*, tb_grup_arsip_foto.nama_grup_arsip_foto');
        // $this->db->from('tb_arsip_foto');
        // $this->db->join('tb_grup_arsip_foto', 'tb_arsip_foto.grup = tb_grup_arsip_foto.id_grup_arsip_foto');

        //$query = $this->db->get('tb_user', $limit, $start);
        return $this->db->get();

    }

    public function datagrup(){
        //return $this->db->get('tb_grup_arsip_foto')->result_array();

        $this->db->select('tb_arsip_foto.*, tb_grup_arsip_foto.nama_grup_arsip_foto');
        $this->db->from('tb_arsip_foto');
        $this->db->join('tb_grup_arsip_foto', 'tb_arsip_foto.grup = tb_grup_arsip_foto.id_grup_arsip_foto');

    }


}	//end class

?> 