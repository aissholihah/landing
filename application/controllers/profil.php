<?php 
class Profil extends Ci_Controller{
	public function __construct()
     {
          parent::__construct();
          
          $this->simple_login_admin->cek_login();
          

     }
	public function index()
	{	
          $this->data['title'] = 'Profil';
          $config['base_url']      = site_url('profil/index');
          $config['total_rows']    = $this->db->count_all('tb_profil');
          $config['per_page']      = 5;               // tiap halaman mau nampilin berapa jumlah data.
          $config['uri_segment']   = 3;           // untuk uri segmen
          $choice                       = $config["total_rows"]/$config['per_page'];
          $config["num_links"]          = floor($choice);

          // bikin pagination pake bootstrap
          $config["num_links"]     = floor($choice);
          $config["first_link"]    = 'First';
          $config["last_link"]     = 'Last';
          $config["next_link"]     = 'Next';
          $config["prev_link"]     = 'Prev';
          // konfigurasi posisi pagination
          $config['full_tag_open'] = '<div class="pagging text-center"><nav><ul class="pagination justify-content-center">';
          $config ['full_tag_close']    = '</ul></nav></div>';

          // bikin num tag open dan num tag close
          $config['num_tag_open']  ='<li class="page-item">
                                        <span class="page-link">';
          //tutup num-tag
          $config['num_tag_close'] ='</span></li>';

          // membuat current tag open
          $config['cur_tag_open']  ='<li class="page-item active">
                                        <span class="page-link">';                             
          $config['cur_tag_close'] ='</span></li>';

          // bikin next text open dan next tag close
          $config['next_tag_open'] ='<li class="page-item">
                                        <span class="page-link">';                             
          $config['next_tagl_close']    ='<span aria-hidden="true">& raquo</span></span></li>';
          // bikin prev text open dan close nay
          $config['prev_tag_open'] ='<li class="page-item">
                                        <span class="page-link">';                             
          $config['prev_tagl_close']    ='</span>Next</li>';

          // bikin first and last tag open & first tag close
          $config['first_tag_open']     ='<li class="page-item">
                                        <span class="page-link">';                             
          $config['first_tagl_close']   ='</span></li>';

          $config['last_tag_open'] ='<li class="page-item">
                                        <span class="page-link">';                             
          $config['last_tagl_close']    ='</span>Next</li>';

          // inisalisasi pagination 
          $this->pagination->initialize($config);
          $data['page']  = ($this->uri->segment(3))? $this->uri->segment(3) :0;
          $data['profil'] = $this->M_profil->get_data($config['per_page'], $data['page']) -> result();


          // $data['profil'] = $this->M_profil->tampil_data()->result();

          $data['pagination'] = $this->pagination->create_links();

          $this->load->view('templates/header',$this->data);
          $this->load->view('templates/sidebar');
          $this->load->view('profil', $data);
          $this->load->view('templates/footer');
     }

     public function tambah_aksi()
     {
          //menangkap inputan dari form yg methodny POST
          // $gambar_bagan                       =  $_FILES['gambar_bagan'];
          
          $nama                    = $this->input->POST('nama');  // inget POST('berdasarkan name di tag input')
          $id_atasan                  = $this->input->POST('id_atasan');
          $jabatan                 = $this->input->POST('jabatan');
          $email                   = $this->input->POST('email');
          $kontak                  = $this->input->POST('kontak');
          $foto                    = $_FILES['foto'];
          // $isi                  = $this->input->POST('isi');
          $profil                  = $this->input->POST('profil');
          $tugas                   = $this->input->POST('tugas');
          

          if ($foto= '' ){}else{
               $config['upload_path']        ='./assets/profil/images';
               $config['allowed_types'] ='jpg|png|gif|jpeg';

               $this->load->library('upload', $config);
               if(!$this->upload->do_upload('foto')){                    // nek gagal ada notifnya
                    echo "upload gagal"; die();
               }else {
                    $foto = $this->upload->data('file_name');       // berhasil, akan masuk ke db dengan file namenya
                    
               }
          } 

          // setelah data dari form ditangkap, datanya akan diubah jadi array
          $data = array (
               // 'gambar_bagan'                  =>$gambar_bagan,
               'nama'                             =>$nama,
               'id_atasan'                        =>$id_atasan,
               'jabatan'                          =>$jabatan,
               'email'                            =>$email,
               'kontak'                           =>$kontak,
               'foto'                              =>$foto,
               'profil'                           =>$profil,
               'tugas'                            =>$tugas,

               
          );

          // biar $data masukk ke database tb_administrator
          $this->M_profil->input_data($data,'tb_profil');
          redirect ('profil/index');
     }

     public function hapus ($id_profil)
     {    
          $where = array ('id_profil'=>$id_profil);
          $this->M_profil->hapus_data($where, 'tb_profil');
          redirect ('profil/index');
     }

     public function edit ($id_profil)
     {    $this->data['title'] = 'Profil';
          $where = array ('id_profil'=>$id_profil);            // id yang ada di tb_administrator akan disimpan ke $array where.
          // buat fungsi yang akan dipake di M_administrator
          $data['allprofil'] = $this->M_profil->tampil_data()->result();
          $data ['profil'] = $this->M_profil->edit_data($where,'v_profil')->result();
          // result() untuk mengenerate hasil query menjadi array.
          // meload view
          $this->load->view('templates/header',$this->data);
          $this->load->view('templates/sidebar');
          $this->load->view('edit_profil', $data);     // 
          $this->load->view('templates/footer');

     }

     public function update()
     {    $this->data['title'] = 'Profil';
          $id_profil                    = $this->input->post('id_profil');
          $foto                         = $_FILES['foto'];
          $nama                         = $this->input->post('nama');
          $id_atasan                    = $this->input->POST('id_atasan'); // inki nek edit grup laine opo yaa??
          $jabatan                      = $this->input->post('jabatan');
          $email                        = $this->input->post('email');
          $kontak                       = $this->input->post('kontak');
          $profil                       = $this->input->post('profil');
          $tugas                        = $this->input->post('tugas');
          // $grup                         = $this->input->POST('grup');

          //if ($foto= ''){}else{
          $config['upload_path']        ='./assets/profil/images';
          $config['allowed_types'] ='jpg|png|gif|jpeg';

          $this->load->library('upload', $config);
               if(!$this->upload->do_upload('foto')){                    // nek gagal ada notifnya
                    
                    $data = array (
                         //'foto'                              =>$foto,
                         'nama'         =>$nama,
                         'id_atasan'    =>$id_atasan,
                         'jabatan'      =>$jabatan,
                         'email'        =>$email,
                         'kontak'       =>$kontak,
                         'profil'       =>$profil,
                         'tugas'        =>$tugas,

                    );
               }
               else{
                    $nama_foto = $this->upload->data('file_name');  // dari array files yang dimasukin ke db harus string(spesifik). yang ini yg diasukin data file namenya.
                    $data = array (
                         'foto'       =>$nama_foto,
                         'nama'         =>$nama,
                         'jabatan'      =>$jabatan,
                         'id_atasan'    =>$id_atasan,
                         'email'        =>$email,
                         'kontak'       =>$kontak,
                         'profil'       =>$profil,
                         'tugas'        =>$tugas,
                         );
                    }

                    //$foto = $this->upload->data('file_name');          // berhasil, akan masuk ke db dengan file namenya
                    $where = array (
                         'id_profil' => $id_profil
                    );
          // manggil method update data dari m

                    $this->M_profil->update_data($where, $data, 'tb_profil');
          // kalo udah akan diredirect ke
                    redirect('profil/index');

          }//end update


          public function search()
          {
          $this->data['title'] = 'Profil';
          $keyword = ($this->input->post('keyword'))? $this->input->post('keyword'):'';
          //jika uri segmen 3 ada, maka nilai variabel $search akan diganti dengan nilai uri segmen 3
          $keyword = ($this->uri->segment(3)) ? $this->uri->segment(3) : $keyword;
          //$keyword = $this->input->post('keyword');

          $config['base_url']      = site_url('profil/search/'.$keyword);
          $config['total_rows']    = $this->M_profil->count_get_keyword($keyword);
          $config['per_page']      = 5;           // tiap halaman mau nampilin berapa jumlah data.
          $config['uri_segment']   = 4;           // untuk uri segmen
          $choice                       = $config["total_rows"]/$config['per_page'];
          $config["num_links"]          = floor($choice);

          // bikin pagination pake bootstrap
          $config["num_links"]     = floor($choice);
          $config["first_link"]    = 'First';
          $config["last_link"]     = 'Last';
          $config["next_link"]     = 'Next';
          $config["prev_link"]     = 'Prev';
          // konfigurasi posisi pagination
          $config['full_tag_open'] = '<div class="pagging text-center"><nav><ul class="pagination justify-content-center">';
          $config ['full_tag_close']    = '</ul></nav></div>';

          // bikin num tag open dan num tag close
          $config['num_tag_open']  ='<li class="page-item">
          <span class="page-link">';
          //tutup num-tag
          $config['num_tag_close'] ='</span></li>';

          // membuat current tag open
          $config['cur_tag_open']  ='<li class="page-item active">
          <span class="page-link">';                             
          $config['cur_tag_close'] ='</span></li>';

          // bikin next text open dan next tag close
          $config['next_tag_open'] ='<li class="page-item">
          <span class="page-link">';                             
          $config['next_tagl_close']    ='<span aria-hidden="true">& raquo</span></span></li>';
          // bikin prev text open dan close nay
          $config['prev_tag_open'] ='<li class="page-item">
          <span class="page-link">';                             
          $config['prev_tagl_close']    ='</span>Next</li>';

          // bikin first and last tag open & first tag close
          $config['first_tag_open']     ='<li class="page-item">
          <span class="page-link">';                             
          $config['first_tagl_close']   ='</span></li>';

          $config['last_tag_open'] ='<li class="page-item">
          <span class="page-link">';                             
          $config['last_tagl_close']    ='</span>Next</li>';

          // inisalisasi pagination 
          $this->pagination->initialize($config);
          $data['page']  = ($this->uri->segment(4))? $this->uri->segment(4) :0;
          $data['profil']    = $this->M_profil->get_data_search($keyword, $config['per_page'], $data['page']) -> result();

          // bikin link
          $data['pagination'] = $this->pagination->create_links();


          //$keyword = $this->input->post('keyword');
                        
          $this->load->view('templates/header',$this->data);
          $this->load->view('templates/sidebar');
          $this->load->view('profil', $data);    
          $this->load->view('templates/footer');

     }// end search




}//end class