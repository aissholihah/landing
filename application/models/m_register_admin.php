<?php

class M_register_admin extends Ci_Model{


	// public function input_data()
	// {
 //                $this->username    = $_POST['username']; // please read the below note
 //                $this->password  = $_POST['password'];
 //                $this->email  = $_POST['email'];
 //                $this->nama  = $_POST['nama'];
 //                $this->tgl_lahir  = $_POST['tgl_lahir'];
 //                $this->alamat  = $_POST['alamat'];
 //                $this->pekerjaan  = $_POST['pekerjaan'];
 //                $this->institusi  = $_POST['institusi'];

 //                $this->db->insert('tb_user', $this);
 //   	}
	 function daftar($data)
    {
         $this->db->insert('tb_administrator',$data);
    }


} // end class
    ?>