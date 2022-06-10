<?php

defined('BASEPATH') or exit('No direct script access allowed');

class M_p_khasanah extends CI_Model
{
  private $table = 'tb_khasanah';

  public function save_siswa()
  {
    $data = [
        'nama_khasanah' => $this->input->post('nama_khasanah'),
        'tahun'   => $this->input->post('tahun'),

        'folder' => $this->input->post('folder'),
        'parent_id' =>$this->input->post('ID_parent'),

    ];

    $this->db->insert($this->table, $data);
    return $this->db->affected_rows();
  }

  public function statusfolder(){
    return $this->db->get('folder')->result_array();

  }

  public function update_siswa()
  {
    $data = [
      'nama_khasanah' => $this->input->post('nama_khasanah'),
      'tahun' => $this->input->post('tahun'),
      'folder' => $this->input->post('folder'),
      // 'folder' => $this->input->post('folder'),
        'parent_id' =>$this->input->post('ID_parent'),
      
    ];

    return $this->db->update($this->table, $data, [
      'id_khasanah' => $this->input->post('id_khasanah')
    ]);
  }

  public function delete_siswa()
  {
    return $this->db->delete($this->table, [
      'id_khasanah' => $this->input->post('id_khasanah')
    ]);
  }

  public function get_siswa_by_id()
  {
    $data = [
      'id_khasanah' => $this->input->get('id_khasanah')
    ];

    return $this->db->get_where($this->table, $data);
  }

  public function get_parent_id($parent)
  {
    $data = [
      'id_khasanah' => $parent
    ];

    return $this->db->get_where($this->table, $data);
  }
  public function get_parent($where,$table)
    {
        return $this->db->GET_where($table,$where);
       

    }
  private function _get_datatables_query($table, $column_order, $column_search, $order,$parent)
  {

    $this->db->from($table);
    $this->db->where('parent_id', $parent);
    $i = 0;

    foreach ($column_search as $item) {
      if ($_POST['search']['value']) {

        if ($i === 0) {
          $this->db->group_start();
          $this->db->like($item, $_POST['search']['value']);
        } else {
          $this->db->or_like($item, $_POST['search']['value']);
        }

        if (count($column_search) - 1 == $i)
          $this->db->group_end();
      }
      $i++;
    }

    if (isset($_POST['order'])) {


      $this->db->order_by($column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
    } else if (isset($order)) {
      $order = $order;
      $this->db->order_by(key($order), $order[key($order)]);
    }
  }

  public function get_datatables($table, $column_order, $column_search, $order, $parent, $data = null)
  { 
    $this->_get_datatables_query($table, $column_order, $column_search, $order, $parent);
    if ($_POST['length'] != -1)
      $this->db->limit($_POST['length'], $_POST['start']);
    if (!empty($data)) {
      $this->db->where($data);
    }
    $query = $this->db->get();
    return $query->result();
  }

  public function count_filtered($table, $column_order, $column_search, $order, $parent, $data = null)
  {
    $this->_get_datatables_query($table, $column_order, $column_search, $order, $parent);
    if (!empty($data)) {
      $this->db->where($data);
    }
    $query = $this->db->get();
    return $query->num_rows();
  }

  public function count_all($table, $data = null)
  {
    if (!empty($data)) {
      $this->db->where($data);
    }

    $this->db->from($table);
    return $this->db->count_all_results();
  }
}
