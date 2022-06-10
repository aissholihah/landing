<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Arsip_teks extends CI_Controller {

	function __construct()
    {
        parent::__construct();
        $this->load->model('m_arsip_teks');
    }

	function index()
	{
        $this->load->view('index');
    }

    function tampil_data()
    {
        $data['hasil']=$this->m_arsip_teks->tampil_data();
        $this->load->view('arsip_teks',$data);
    }

    function tambah()
    {
        $aksi=$this->input->post('aksi');
        $this->load->view('tambah',$aksi);
    }

    function edit()
    {
        $id_arsip_tekstual=$this->input->post('id_arsip_tekstual');
        $data['hasil']=$this->m_arsip_teks->GetID($id_arsip_tekstual);
        $this->load->view('edit',$data);
    }
    function hapus()
    {
        $id_arsip_tekstual=$this->input->post('id_arsip_tekstual');
        $data['hasil']=$this->m_arsip_teks->GetID($id_arsip_tekstual);
        $this->load->view('hapus',$data);
    }

    function simpan()
    {   // disini nim (id_arsip_tekstual) engga tak input post, soale punyaku int AI
        $data = array(
            'unit_kerja'=>$this->input->post('unit_kerja'),
            'kode_klasifikasi'=>$this->input->post('kode_klasifikasi'),
            'tanggal'=>$this->input->post('tanggal')
            );
            $this->db->insert('tb_arsip_tekstual',$data);
    }

    function edit()
    {   // perhatiin efeknya di nim barunya. dikasusmu harus diganti apaaan??
        $data = array(
            'unit_kerja'=>$this->input->post('unit_kerja'),
            'kode_klasifikasi'=>$this->input->post('kode_klasifikasi'),
            'tanggal'=>$this->input->post('tanggal')
		);
        $unit_kerja = $this->input->post('unit_kerja');
        $this->db->where('id_arsip_tekstual', $id_arsip_tekstual);
        $this->db->update('tb_arsip_tekstual',$data);
    }
    function hapus()
    {
        $id_arsip_tekstual=$this->input->post('id_arsip_tekstual');
        $this->db->delete('tb_arsip_tekstual',array('id_arsip_tekstual' => $id_arsip_tekstual));
    }
}
?>