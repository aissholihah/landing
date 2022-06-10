<br><br>
<div class="container mt-5">
  <div class="row" id="artikel">
    <div class="col-lg-8">

    


      
        <hr>
        <div class="row">
        <h1 class="text-right mt-3 mb-3 portfolio-modal-title text-secondary text-uppercase mb-0"><b>BERITA</b></h1>

      <?php echo form_open('pberita/search', 'class="row g-3"') ?> 
        <div class="col-auto">
          <input type="text" class="form-control" name="keyword" placeholder="cari">
        </div>
        <div class="col-auto">
          <button type="submit" class="btn btn-primary mb-3">Cari</button>
        </div>
      <?php echo form_close() ?>
        </div>
          <nav aria-label="breadcrumb">
        <?php echo $breadcrumbs; ?>
          </nav>
      <hr>

      <!-- bikin card  -->

      <?php
      foreach ($berita as $brt) :
        ?>


        <div class="card mb-2">
          <div class="row g-0 p-0">
            <div class="col-md-4 kontainergambar" >
              <img class="img-fluid gambarberita" src="<?php echo base_url(); ?>/assets/gambar_artikel/<?php echo $brt->gambar ?>" >
            </div>
            <div class="col-md-8 ">
              <div class="card-body" >
                <h5 class="card-title teksberita text-secondary"><a href="<?php echo base_url().'/pberita/detail/'.$brt->id_artikel ?>" style="text-decoration: none" class="text-secondary"><?php echo $brt->judul_artikel; ?></a></h5>
                <p class="card-text"><small class="text-muted"><?php echo $brt->tgl_publikasi_artikel ?></small></p>
                <p class="card-text mb-0" ><?php echo word_limiter(strip_tags($brt->isi), 15); ?><a href="<?php echo base_url().'/pberita/detail/'.$brt->id_artikel ?>">selengkapnya</a></p>
                
                

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
      <!-- end pagination -->
      
 

    </div> <!-- jangan dihapus -->


<script>
  $(document).ready(function){
  $("#myinput").on("keyup",function(){
    var value = $(this).val().toLowerCase();
    $("#card div").filter(function(){
      $(this).toggle($(this).text().toLowerCase().indexof(value) > -1);

    });
  });


  };
</script>


    <!-- <script type="text/javascript">
        $(".btn").on("click",function(){
            $(".input").toggleClass("inclicked");

            $(".btn").toggleClass("close");
            //window.location('<?php echo base_url(); ?>pberita/search');
            location.href = '<?php echo base_url(); ?>pberita/search';
        });
</script> -->  























