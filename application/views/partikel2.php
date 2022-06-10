<br>



<div class="row py-5 mt-5">
<div class="col-lg-8">
    <div class="row">
    <div class="col-lg-10 ms-auto">

  <div class="juduldetail portfolio-modal-title text-secondary text-uppercase mb-0">
  <h1><?php echo $d_berita->judul_artikel; ?></h1>
  <hr>
  <h6><?php echo $d_berita->tgl_publikasi_artikel; ?></h6>   
</div>
<nav aria-label="breadcrumb">
  <?php echo $breadcrumbs; ?> 
  
</nav>
  
  <img src="<?php echo base_url(); ?>/assets/gambar_artikel/<?php echo $d_berita->gambar; ?>" class="card-img-top" alt="">
    
      <?php echo $d_berita->isi; ?> 

</div>
</div>
</div>
















