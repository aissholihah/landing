<br><br>
<div class="row py-5">
<div class="col-lg-8">
    <div class="row">
    <div class="col-lg-10 ms-auto">
<!-- <?php foreach ($regulasi as $rgl): ?> -->
  <div class="juduldetail">
  <h1 class="text-secondary"><?php echo $rgl->judul_artikel; ?></h1>
  <hr>
  <h6 class="text-secondary"><?php echo $rgl->tgl_publikasi_artikel; ?></h6>   
</div>
<nav aria-label="breadcrumb">
  <?php echo $breadcrumbs; ?> 
  
</nav>
  <img src="<?php echo base_url(); ?>/assets/gambar_artikel/<?php echo $rgl->gambar; ?>" class="img-fluid" alt="">
    <!-- <h5 class="card-title">Card title</h5> -->
    <!-- <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p> -->
      <p class="text-secondary"><?php echo $rgl->isi; ?> </p> 
<!-- <?php endforeach ?> -->
</div>
</div>
</div>




