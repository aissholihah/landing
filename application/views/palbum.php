<br> 


<div class="row" >  
    <!-- Untuk membatasi lebar carousel -->

    <div class="py-3 col-xl-8 col-md-10 col-11 mx-auto">
      <!-- Bagian Primary (yang besar) -->
      <h4 class="text-secondary text-center mt-5" id="tojudul"></h4>
      <div id="main-slider" class="splide">
        <div class="splide__track">
          <ul class="splide__list">
            <!-- List gambar taruh di sini -->
            <!-- 
                Struktur
                <li class="splide__slide rounded">
                  <img src="url gambar" class="img-fluid" />
                </li>
             -->
             <?php foreach ($album as $albm ) : ?>

            <li class="splide__slide rounded">
              <img src="<?php echo base_url().'assets/foto/'.$albm->foto; ?>" class="img-fluid" />
              <div class="row">
                <div class="col-12 bg-secondary">
                  <h5 class="text-primary px-1" style="display: none" id="judul"><?php echo $albm->judul_album; ?></h5>
                </div>
              </div>
              <div class="row fixed-bottom mb-15 ">
                <div class="col-12 text-center">
                  <p class="d-inline-block px-1 bg-white text-wrap" ><?php echo $albm->narasi_album; ?></p>
                </div>
              </div>
            </li>
            
            <?php endforeach ?>
          </ul>
        </div>
      </div>
      <!-- Bagian Secondary -->
      <div id="thumbnail-slider" class="splide my-3">
        <div class="splide__track">
          <ul class="splide__list">
            <!-- List gambar taruh di sini -->
            <!-- 
                Struktur
                <li class="splide__slide rounded">
                  <img src="url gambar" class="img-fluid" />
                </li>
             -->
            <?php foreach ($album as $albm ) : ?>
            <li class="splide__slide">
              <img src="<?php echo base_url().'assets/foto/'.$albm->foto; ?>" class="img-fluid" />
            </li>
            <?php endforeach ?>
          </ul>
        </div>
      </div>
    </div>
</div>


<!-- TAB and content -->
<div class="py-5 col-xl-8 col-md-10 col-11 mx-auto">
<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="daftarAlbum-tab" data-bs-toggle="tab" data-bs-target="#a-daftarAlbum" type="button" role="tab" aria-controls="a-daftarAlbum" aria-selected="false">Daftar Album</button>
  </li>
  <?php foreach ($tahun as $thn) : ?>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="<?php echo $thn->tahun_grup_album; ?>-tab" data-bs-toggle="tab" data-bs-target="#a-<?php echo $thn->tahun_grup_album; ?>" type="button" role="tab" aria-controls="a-<?php echo $thn->tahun_grup_album; ?>" aria-selected="false"><?php echo $thn->tahun_grup_album; ?></button>
  </li>
<?php endforeach ?>
  <!--<li class="nav-item" role="presentation">
    <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">Profile</button>
  </li>-->
</ul>   <!-- end nama tab -->
<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade" id="a-daftarAlbum" role="tabpanel" aria-labelledby="daftarAlbum-tab">
  <div class="row">
  <div class="py-5 col-lg-12 mx-auto">
  <div class='row row-cols-1 row-cols-md-4 g-4 py-2'>
    <?php foreach ($daftar_card as $dcard ) : ?>
        <div class="col">
        <a href='<?php echo site_url('palbum/index/'.$dcard->grup); ?>' style="text-decoration: none">
          <div class="card text-secondary" style="width:100%; height:auto; position:relative;">
          <img src="<?php echo base_url().'assets/foto/'.$dcard->foto; ?>" class="gambarberita" alt="...">
          <div class="card-body">
            <h5 class="card-title"><?php echo $dcard->nama_grup_album; ?></h5>
          </div>
        </div>
      </a>
      </div>
    <?php endforeach ?>
</div>
</div>
</div>
</div> <!-- end content daftar album -->
  <?php foreach ($tahun as $thn) : ?> 
  <div class="tab-pane fade" id="a-<?php echo $thn->tahun_grup_album; ?>" role="tabpanel" aria-labelledby="<?php echo $thn->tahun_grup_album; ?>-tab">
    <div class='row row-cols-1 row-cols-md-4 g-4 py-5'>
    <?php foreach ($daftar_card as $dcard ) : 
          if($dcard->tahun_grup_album==$thn->tahun_grup_album){
      ?>
        <div class="col">
        <a href='<?php echo site_url('palbum/index/'.$dcard->grup); ?>' style="text-decoration: none">
          <div class="card text-secondary">
          <img class="gambarberita" src="<?php echo base_url().'assets/foto/'.$dcard->foto; ?>" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title"><?php echo $dcard->nama_grup_album; ?></h5>
          </div>
        </div>
      </a>
      </div>
    <?php }

  endforeach ?>
  </div>
  </div>
 <?php endforeach ?> 
  <!--<div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">isi album 2</div>
  <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">isi album 3</div>-->
</div>
</div>
<!-- END TAB and Content-->


<!-- DAFTAR CARD -->
<!-- <div class="row">
  <div class="py-5 col-lg-10 mx-auto">
    <h1 class="py-5">DAFTAR ALBUM</h1>
    <div class='row row-cols-1 row-cols-md-4 g-4'>
    <?php foreach ($daftar_card as $dcard ) : ?>
        <div class="col">
        <a href='<?php echo site_url('palbum/index/'.$dcard->grup); ?>' style="text-decoration: none">
          <div class="card text-secondary">
          <img src="<?php echo base_url().'assets/foto/'.$dcard->foto; ?>" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title"><?php echo $dcard->nama_grup_album; ?></h5>
          </div>
        </div>
      </a>
      </div>
    <?php endforeach ?>
</div>
</div>
</div> END DAFTAR CARD-->




    <!-- Optional JavaScript; choose one of the two! -->
    <script src="https://cdn.jsdelivr.net/npm/@splidejs/splide@latest/dist/js/splide.min.js"></script>
    <!-- Untuk sinkronisasi primary dan secondary -->
    <script>
      var secondarySlider = new Splide("#secondary-slider").mount();
      var primarySlider = new Splide("#primary-slider");
      primaryslider.sync(secondarySlider).mount();
    </script>
    <!-- Konfigurasi Splide -->
    <script>
      // Konfigurasi secondary
      document.addEventListener("DOMContentLoaded", function () {
        var secondarySlider = new Splide("#secondary-slider", {
          fixedWidth: "20%", // ngatur lebar per gambar jadi jumlah yg muncul sesuai lebar
          height: 108, // ngatur tinggi per gambar
          gap: 10, // ngatur jarak antar gambar
          cover: true, // ngatur ukuran gambar biar nggak stretch
          isNavigation: true, // memberikan tombol navigasi
          rewind: true, // biar bisa balik
          breakpoints: {
            //   Maksimal lebar 768px
            768: {
              fixedWidth: "30%",
              height: 108,
            },
            // Maksimal lebar 425px
            425: {
              fixedWidth: "50%",
              height: 108,
            },
            375: {
              fixedWidth: "40%",
              height: 80,
            },
          },
        }).mount();

        // Primary
        var primarySlider = new Splide("#primary-slider", {
          type: "fade",
          height: "50%",
          pagination: false,
          arrows: false,
          cover: true,
        }); // do not call mount() here.

        // Biar sinkron
        primarySlider.sync(secondarySlider).mount();
      });
      //   Tutorial/Dokumentasi https://splidejs.com/thumbnail-slider/
    </script>

    <!-- NEW SPLIDE -->

<script>
  document.addEventListener( 'DOMContentLoaded', function () {
  var main = new Splide( '.splide', {
    autoplay    : true,
    type       : 'fade',
    speed       : 1000,
    cover      : true,
    rewind     : true,
    pagination : false,
    heightRatio: 0.5,
  } );


  var thumbnails = new Splide( '#thumbnail-slider', {
    fixedWidth  : 100,
    fixedHeight : 60,
    gap         : 10,
    rewind      : true,
    pagination  : false,
    cover       : true,
    isNavigation: true,
    breakpoints : {
      600: {
        fixedWidth : 60,
        fixedHeight: 44,
      },
    },
  } );


  main.sync( thumbnails );
  main.mount();
  thumbnails.mount();
} );
document.getElementById("tojudul").innerHTML=document.getElementById("judul").innerHTML;
</script>
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
      crossorigin="anonymous">
    </script>
