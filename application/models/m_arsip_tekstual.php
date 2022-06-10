<?php 
class M_arsip_tekstual extends Ci_Model{


    var $table = 'tb_arsip_tekstual';
    var $column_order = array(null, 'unit_kerja','kode_klasifikasi','tanggal','isi_informasi','masalah','retensi_aktif','retensi_inaktif','file_url','watermark'); //set column field database for datatable orderable
    var $column_search = array('unit_kerja','kode_klasifikasi','tanggal','isi_informasi','masalah','retensi_aktif','retensi_inaktif','file_url','watermark'); //set column field database for datatable searchable 
    var $order = array('id_arsip_tekstual' => 'asc'); // default order

    //$order itu tar dipake untuk show data sama search nya. 
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }



	public function tampil_data()
	{
		// memanggil data di database tb_user
		return $this->db->get('tb_arsip_tekstual');	// lalu buat view user
	}

    public function jml_data()
    {
        $this->db->select('id_arsip_tekstual') ;     // dia akan milih sebua data yang ada di database yang ada di tb_artikel.
        $this->db->from('tb_arsip_tekstual');

        return $this->db->get()->result();
    }

	public function input_data($data,$tabel)
        {
                $this->unit_kerja                = $data['unit_kerja']; 
                $this->kode_klasifikasi          = $data['kode_klasifikasi'];
                $this->tanggal                   = $data['tanggal'];
                $this->isi_informasi             = $data['isi_informasi'];     //[name]
                
                $this->masalah                   = $data['masalah'];
                $this->retensi_aktif             = $data['retensi_aktif'];
                $this->retensi_inaktif           = $data['retensi_inaktif'];
              
                $this->file_url                = $data['file_url'];
                $this->watermark                =$data['watermark'];
                $data = array(
                        'unit_kerja' => $data['unit_kerja'],
                        'kode_klasifikasi' => $data['kode_klasifikasi'],
                        'tanggal' => $data['tanggal'],
                        'isi_informasi' => $data['isi_informasi'],
                        'masalah' => $data['masalah'],
                        'retensi_aktif' => $data['retensi_aktif'],
                        'retensi_inaktif' => $data['retensi_inaktif'],
                        'file_url' => $data['file_url'],
                        'watermark' =>$data['watermark'],
                );

                $this->db->insert($tabel, $data);

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

    // public function get_file($where,$table)
    // {
    //     return $this->db->GET_where($table,$where);       

    // }

     public function get_nama_file($id) {
        $this->db->select('*');
        $this->db->from('tb_arsip_tekstual');
        $this->db->where('id_arsip_tekstual',$id);
        return $this->db->get()->row();
      //$query = $this->db->get();
      //return $query->result();
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
    
    $this->db->from('tb_arsip_tekstual');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel artikel


    $this->db->like("lower(unit_kerja)", strtolower($keyword)); // inget or_like('berdasarkan name di tag db')
        $this->db->or_like("lower(kode_klasifikasi)", strtolower($keyword));
        $this->db->or_like("lower(tanggal)", strtolower($keyword));
        $this->db->or_like("lower(isi_informasi)", strtolower($keyword));     //[name]
        $this->db->or_like("lower(masalah)", strtolower($keyword));
       
        $this->db->or_like("lower(retensi_aktif)", strtolower($keyword));
        $this->db->or_like("lower(retensi_inaktif)", strtolower($keyword));
       
        $this->db->or_like("lower(file_url)", strtolower($keyword));
    
    return $this->db->get()->result();
    }// end search

    public function count_get_keyword($keyword){
    // manggil data dari db
    $this->db->select('count(*)') ;     // dia akan milih sebua data yang ada di database yang ada di tb_artikel.
    
    $this->db->from('tb_arsip_tekstual');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel artikel
     // untuk field jenis artikel, dengan kunci keyword.
    $this->db->like("lower(unit_kerja)", strtolower($keyword)); // inget or_like('berdasarkan name di tag db')
        $this->db->or_like("lower(kode_klasifikasi)", strtolower($keyword));
        $this->db->or_like("lower(tanggal)", strtolower($keyword));
        $this->db->or_like("lower(isi_informasi)", strtolower($keyword));     //[name]
        $this->db->or_like("lower(masalah)", strtolower($keyword));
       
        $this->db->or_like("lower(retensi_aktif)", strtolower($keyword));
        $this->db->or_like("lower(retensi_inaktif)", strtolower($keyword));
       
        $this->db->or_like("lower(file_url)", strtolower($keyword));
    
    
        
    return $this->db->count_all_results();
    }

    // pagination 
    public function get_data($limit, $start){
        $query = $this->db->get('tb_arsip_tekstual', $limit, $start);
        return $query;

    }

    public function get_data_search($keyword, $limit, $start){
        $this->db->select('*') ;     // dia akan milih sebua data yang ada di database yang ada di tb_artikel.
    
        $this->db->from('tb_arsip_tekstual');  // manggil nama tb nya
    // manggil setipa nama field yanga ada di tabel artikel
     // untuk field jenis artikel, dengan kunci keyword.
        $this->db->like("lower(unit_kerja)", strtolower($keyword)); // inget or_like('berdasarkan name di tag db')
        $this->db->or_like("lower(kode_klasifikasi)", strtolower($keyword));
        $this->db->or_like("lower(tanggal)", strtolower($keyword));
        $this->db->or_like("lower(isi_informasi)", strtolower($keyword));     //[name]
        $this->db->or_like("lower(masalah)", strtolower($keyword));
       
        $this->db->or_like("lower(retensi_aktif)", strtolower($keyword));
        $this->db->or_like("lower(retensi_inaktif)", strtolower($keyword));
       
        $this->db->or_like("lower(file_url)", strtolower($keyword));
        $this->db->limit($limit, $start);
        //$query = $this->db->get('tb_user', $limit, $start);
        return $this->db->get();

    }









    private function _get_datatables_query()
    {
        
        $this->db->from($this->table);      // select all ke tabel tb_arsip_tekstual.

        $i = 0;
    
        foreach ($this->column_search as $item) // loop column 
        {
            if($_POST['search']['value']) // if datatable send POST for search
            {
                
                if($i===0) // first loop
                {
                    $this->db->group_start(); // open bracket. query Where with OR clause better with bracket. because maybe can combine with other WHERE with AND.
                    $this->db->like($item, $_POST['search']['value']);
                }
                else
                {
                    $this->db->or_like($item, $_POST['search']['value']);
                }

                if(count($this->column_search) - 1 == $i) //last loop
                    $this->db->group_end(); //close bracket
            }
            $i++;
        }// tadi adalah buat nyelesein search. 


        
        if(isset($_POST['order'])) // here order processing
        {
            $this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
        } 
        else if(isset($this->order)) 
        {
            $order = $this->order;
            $this->db->order_by(key($order), $order[key($order)]);
        } // else ini tuh buat kalo ngga ada order(ngga ada pencet tombol show sama nyari search. jadi dia diatur default,, masalahnya key itu apaa?? :vvv)
    }

    function get_datatables()
    {
        $this->_get_datatables_query(); //ini adalaah method private
        if($_POST['length'] != -1)
        $this->db->limit($_POST['length'], $_POST['start']);
        $query = $this->db->get();
        return $query->result();
    }

    function count_filtered() // ini buat data filternya, keknya yg tertampil hasil pencarian. 
    {
        $this->_get_datatables_query();
        $query = $this->db->get();
        return $query->num_rows();
    }

    public function count_all() //
    {
        $this->db->from($this->table);
        return $this->db->count_all_results();
    }





}	//end class

 ?>