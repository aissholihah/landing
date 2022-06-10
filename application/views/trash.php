
    <div class="container">
      <div class="row" id="artikel">
        <div class="col-lg-12" id="artikel">
          <nav aria-label="breadcrumb">
            <?php echo $breadcrumbs; ?>
          </nav>
          <hr>
          <h3 class="text-right mt-3 mb-3"><b>BERITA</b></h3>
          <div class="col-lg-4">
            <div class="navbar-form navbar-right">
             <?php echo form_open('pberita/search') ?>        <!-- (controller/method) -->
             <!-- input untuk pencarian data -->
             <input type="text" name="keyword" class="form-control navbar-right" placeholder="search">
             <div>
               <button type="submit" class="btn btn-success ">Cari</button>
             </div>
             <?php echo form_close() ?>
           </div>

         </div>
         <hr>


         <!-- bikin card  -->
        <!-- <?php  


      ?> -->

      <?php
      foreach ($berita as $brt) :
        ?>
        <div class="card mt-5">
          <div class="row g-0 p-0">
            <div class="col-md-4 kontainergambar" >
              <img class="img-fluid" src="<?php echo base_url(); ?>/assets/gambar_artikel/<?php echo $brt->gambar ?>" class="gambarberita" >
            </div>
            <div class="col-md-8">
              <div class="card-body">
                <h5 class="card-title teksberita"><?php echo $brt->judul_artikel; ?></h5>
                <p class="card-text mb-0"><?php echo word_limiter($brt->isi, 15); ?></p>
                <p class="card-text"><small class="text-muted"><?php echo $brt->tgl_publikasi_artikel ?></small></p>
                <a href="<?php echo site_url()."/pberita/detail/".$brt->id_artikel; ?>">read more</a>

              </div>

            </div>
          </div>
        </div>
      <?php endforeach; ?>


      <div class="row">
        <div class="col">
          <?php echo $pagination; ?>          
        </div>  
      </div>

    </div>
 







DETAIL BERITA


<div class="py-5 col-xl-8 col-md-10 col-11 mx-auto">
<div class="juduldetail">
  <h1><?php echo $d_berita->judul_artikel; ?></h1>
  <hr>
  <h6><?php echo $d_berita->tgl_publikasi_artikel; ?></h6>   
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