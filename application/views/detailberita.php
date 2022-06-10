<div class="row py-5">
<div class="col-lg-8">
    <div class="row">
    <div class="col-lg-10 ms-auto">

  <div class="juduldetail">
  <h1><?php echo $d_berita->judul_artikel; ?></h1>
  <hr>
  <h6><?php echo $d_berita->tgl_publikasi_artikel; ?></h6>   
</div>
<nav aria-label="breadcrumb">
  <?php echo $breadcrumbs; ?> 
  
</nav>
  
  <img src="<?php echo base_url(); ?>/assets/gambar_artikel/<?php echo $d_berita->gambar; ?>" class="card-img-top" alt="">
    <!-- <h5 class="card-title">Card title</h5> -->
    <!-- <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p> -->
      <?php echo $d_berita->isi; ?> 

</div>
</div>
</div>

























<!-- <div class="py-5 col-xl-8 col-md-10 col-11 mx-auto">
<div class="juduldetail">
	<h1></h1>
	<hr>
	<h6></h6>	 
</div>
<nav aria-label="breadcrumb">
  <?php echo $breadcrumbs; ?>
</nav>
<div class="card mb-3">
  <img src="<?php echo base_url(); ?>/assets/gambar_artikel/<?php echo $d_berita->gambar; ?>" class="card-img-top" alt="">
  <div class="card-body">  
    <?php echo $d_berita->isi; ?>	
  </div>
  </div>

  </div>
 -->
<!-- <div class="isidetail">
	
</div> -->