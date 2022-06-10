<?php 
defined('BASEPATH') OR exit('no direct script access allowed'); 

class Detail_p_arsip_kearsitekturan extends CI_Controller {
     function __construct() {
          parent::__construct();
     } 

     function index(){
         $this->load->view('detail_p_arsip_kearsitekturan');
     }
}
