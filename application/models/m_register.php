<?php

class M_register extends Ci_Model{


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
         $this->db->insert('tb_user',$data);
    }

    function Is_already_register($email)
    {
        // $this->db->where('email', $email);
        // $query = $this->db->get('tb_user');
        $query = $this->db->get_where('tb_user', array('email' => $email));
        if ($query->num_rows() > 0) {
            return true;
        } else {
            return false;
        }
    }


    function Update_user_data($data, $email)
    {
        $this->db->where('email', $email);
        $this->db->update('tb_user', $data);
    } // update data tu buat njaga kalo udah register, dinggo set session nek misal e datane udh ada di dtabase




    function Insert_user_data($data)
    {
        $this->db->insert('tb_user', $data);
    }


    public function edit_data($where,$table)
    {
        return $this->db->GET_where($table,$where);
       

    }

    public function update_data($where, $data, $table)
    {
        $this->db->where($where);
        $this->db->update($table,$data);
    }

    // // bikin update data
    // public function update_data($where, $data, $table)
    // {
    //     $this->db->where($where);
    //     $this->db->update($table,$data);
    // }


} // end class
    ?>