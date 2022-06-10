<br><br>
<div class="container mt-5">
  <div class="row" id="profil">
    <div class="col-lg-12">

    


      
        
        <div class="row">
          <div id="judul_jabatan" class="mt-5 mb-3 " >
          <h1 class="text-right portfolio-modal-title text-secondary text-uppercase mb-0"><b><?php echo $d_profil->jabatan; ?></b></h1>
         
        
      <!-- <?php echo form_open('pberita/search', 'class="row g-3"') ?> 
        <div class="col-auto">
          <input type="text" class="form-control" name="keyword" placeholder="cari">
        </div>
        <div class="col-auto">
          <button type="submit" class="btn btn-primary mb-3">Cari</button>
        </div>
      <?php echo form_close() ?>
        </div> -->
          <nav aria-label="breadcrumb">
        <?php echo $breadcrumbs; ?>
          </nav>
      <hr>
      <!-- bikin card  -->

      


        <div class="card mb-2">
          <div class="row g-0 p-0">
            <div class="col-md-3 kontainergambar" >
              <img class="gambarprofil" src="<?php echo base_url(); ?>/assets/profil/images/<?php echo $d_profil->foto; ?>" >
              <h6>Nama : <?php echo $d_profil->nama; ?></h6>
              <h6>No Telp :<?php echo $d_profil->kontak; ?></h6>
              <h6>Email :<?php echo $d_profil->email; ?></h6>
            </div>
            <div class="col-md-9 mb-5">
              <div class="card-body" >
                <h5 class="card-title">
                  Profil
                </h5>
                <hr>
                <?php echo $d_profil->profil; ?>                  
                </p>
                <h5>Tugas Dan Fungsi</h5>
                <hr>        
                <p class="card-text">
                  <?php echo $d_profil->tugas; ?>                
                </p>                
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</div>