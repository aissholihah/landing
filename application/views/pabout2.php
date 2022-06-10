<br>
<section class="">
    <div class="py-5 col-xl-8 col-md-10 col-11 mx-auto mt-5">
        <?php foreach ($tentang as $ttg): ?>


          <div class="juduldetail portfolio-modal-title text-secondary text-uppercase mb-0">
              <h1><?php echo $ttg->judul_artikel; ?></h1>
              <hr>
          <!--     <h6><?php echo $ttg->tgl_publikasi_artikel; ?></h6>    -->
          </div>
          <nav aria-label="breadcrumb">
              <?php echo $breadcrumbs; ?>  
          </nav>
          <div class="card mb-3">
              <img src="<?php echo base_url(); ?>/assets/gambar_artikel/<?php echo $ttg->gambar; ?>" class="card-img-top" alt="">
              <div class="card-body">
                <!-- <h5 class="card-title">Card title</h5> -->
    <!-- <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p> -->
      <?php echo $ttg->isi; ?> 
  </div>
</div>


<?php endforeach ?>

</div>
</section>