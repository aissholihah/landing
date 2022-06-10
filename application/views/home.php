<!doctype html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>/mycss.css"><link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Caveat&display=swap" rel="stylesheet">

  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Caveat&family=Saira+Semi+Condensed:wght@800&display=swap" rel="stylesheet">
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
  <script src="https://kit.fontawesome.com/467d24f8a0.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" type="text/css" href="mycss.css"> 

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@splidejs/splide@2.4.21/dist/css/themes/splide-skyblue.min.css">

  <script src="https://cdn.jsdelivr.net/npm/@splidejs/splide@latest/dist/js/splide.min.js"></script>
  <script>
    document.addEventListener( 'DOMContentLoaded', function () {
      new Splide( '#image-slider', {
        type  : 'fade',
        rewind: true,
        autoplay: true,
        'cover'      : true,
        'heightRatio': 0.5,
      } ).mount();
    } );
  </script>
  <title>UPT KEARSIPAN UNS</title>
</head>
<body >

  <!-- Optional JavaScript; choose one of the two! -->
  <!-- Option 1: Bootstrap Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>  <!-- gawan bootsrap -->




  <div class="container-fluid" style= "background: /*#99B898*/ #ffffff; color: black"><!-- kontainer header -->
   <!-- NAVBAR -->
   <div class="container-fluid px-0">
    <div class="row" style="background-image: url('img/pattern.png');">
      <div class="col-lg-8 mx-auto">
        <nav class="navbar navbar-expand-lg navbar-primary bg-light fixed-top px-5" id="mainNav">
          <a class="navbar-brand" href="#">
            <img src="<?php echo base_url(); ?>/img/uns.png" alt="" width="30" height="30" class="d-inline-block align-text-top"/>
            <b>UPT KEARSIPAN UNS</b></a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                  <a class="nav-link active js-scroll-trigger" aria-current="page" href="<?php echo base_url(); ?>pabout">About</a>
                </li>
                <!-- home>articles -->
                <li class="nav-item"> 
                  <a class="nav-link js-scroll-trigger" aria-current="page" href="#artikel">Artikel</a>
                </li>
                <!-- home> albums -->
                <li class="nav-item">          
                  <a class="nav-link active js-scroll-trigger" aria-current="page" href="#album">Album</a>
                </li>
                <!-- about -->
                <li class="nav-item">          
                  <a class="nav-link active js-scroll-trigger" aria-current="page" href="<?php echo site_url('p_arsip_tekstual'); ?>">Arsip</a>
                </li><!-- end arsip -->

                <!-- regulasi  -->
                <li class="nav-item">          
                  <a class="nav-link active js-scroll-trigger" aria-current="page" href="<?php echo base_url(); ?>pregulasi">Regulasi</a>
                </li><!-- end regulasi -->

                <li class="nav-item">          
                  <a class="nav-link active js-scroll-trigger" aria-current="page" href="#kontak">Contact Us</a>
                </li>   

              </ul>   <!-- end tulisan di navbar -->       
            </div>    <!-- end kotak nav -->
          </nav>    <!-- end nav -->

          <!-- bikin curosel -->
          <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3" aria-label="Slide 4"></button>
            </div>
            <div class="carousel-inner">

              <div class="carousel-item active">
                <img src="<?php echo base_url(); ?>/img/b2.jpg" class="d-block img-fluid g-co" alt="...">
                <div class="carousel-caption d-none d-md-block">
                 <a href="<?php echo base_url(); ?>pabout"><h5>ABOUT</h5></a>
                  <p class="text-center">Universitas Sebelas Maret sebagai salah satu perguruan tinggi terkemuka mempunyai komitmen dan kesadaran akan tertib arsip. Mendasari hal tersebut, maka telah ditetapkan Peraturan Mendikbud Nomor 82 tahun 2014 tentang SOTK UNS yang salah satunya mengesahkan berdirinya UPT Kearsipan UNS pada tanggal 3 Juli 2015 dengan tugas utama melakukan pembinaan kearsipan di lingkungan Universitas Sebelas Maret.</p>
                </div>
              </div>
              <?php foreach ($berita as $brt) :
                ?>
                <div class="carousel-item">
                  <img src="<?php echo base_url(); ?>/assets/gambar_artikel/<?php echo $brt->gambar ?>" class="d-block img-fluid g-co" alt="...">
                  <div class="carousel-caption d-none d-md-block">
                    <h5><?php echo $brt->judul_artikel; ?></h5>
                    <p>Some representative placeholder content for the first slide.</p>
                  </div>
                </div>
              <?php endforeach; ?>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>














          <!--  <H3>HOLAAAA</H3> -->
      <!-- <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
      -->
    </div>
  </div>
</div> <!-- end kontainer header -->

<!-- kontainer artikel -->
<!-- <div class="container-fluid" style= "background:#D09C8E; color: black"  > -->
  <div class="container">
    <div class="row">
      <div class="col-lg-5" id="artikel">
        <h3 class="text-right mt-3 mb-3"><b>BERITA</b></h3>

        <!-- bikin card  -->
        <?php  //for ($i=0; $i<3; $i++):


        ?>
        <?php
        
        foreach ($berita as $brt) :
          ?>
          <div class="card">
            <div class="row g-0 p-0">
              <div class="col-md-2 kontainergambar">
                <img src="<?php echo base_url(); ?>/assets/gambar_artikel/<?php echo $brt->gambar ?>" class="gambarberita">
              </div>
              <div class="col-md-10 ">
                <div class="card-body" >
                  <h5 class="card-title teksberita"><?php echo $brt->judul_artikel; ?></h5>
              <!-- <p class="card-text mb-0">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                <p class="card-text"> --><small class="text-muted"><?php echo $brt->tgl_publikasi_artikel ?></small></p>
                <a href="<?php echo site_url('pberita/detail/'. $brt->id_artikel); ?>">read more</a>

              </div>

            </div>
          </div>
        </div>
      <?php endforeach ?>


      <!-- end card -->

      <div class="mt-3 mb-3 justify-content-md-end">
        <a type="submit" class="btn btn-primary" href="<?php echo base_url(); ?>pberita"; >More News</a>
      </div>
    </div>


   <!-- end col lg-6 -->

    <div class="col-lg-5">
      <!-- artikel dengan perulangan -->
      <h3 class="mt-3 mb-3"><b >ARTIKEL</b></h3>
          <?php  //for ($i=0; $i<3; $i++):


          ?>

          <?php
          foreach ($artikel as $artkl ) :
            ?>
            <div class="card">
              <div class="row g-0 p-0">
                <div class="col-md-2 kontainergambar" >
                  <img src="<?php echo base_url(); ?>/assets/gambar_artikel/<?php echo $artkl->gambar ?>" class="gambarberita" >
                </div>
                <div class="col-md-10 ">
                  <div class="card-body" >
                    <h5 class="card-title teksberita"><?php echo $artkl->judul_artikel; ?></h5>
              <!-- <p class="card-text mb-0">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                <p class="card-text"> --><small class="text-muted"><?php echo $artkl->tgl_publikasi_artikel ?></small></p>
                <a href="<?php echo site_url('partikel/detail/'. $artkl->id_artikel); ?>">read more</a>

              </div>

            </div>
          </div>
        </div>
      <?php endforeach; ?>




         <!--  <div class="card mb-3" style="max-width: 540px;">
            <div class="row g-0">
              <div class="col-lg-4">
                <img src="img/pic.png" alt="...">
              </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title">ditemukan sebuah ikan mati di kali</h5>
                  <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                  <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                  <a href="">read more</a>
                </div>
              </div>
            </div>
          </div> -->


          


          <!-- end card -->

          <div class="mt-3 mb-3">
            <a type="submit" class="btn btn-primary" href="<?php echo base_url(); ?>partikel";>More Artichels</a>

          </div>
          </div>

          <!-- end artikel dengan perulangan -->

          <div class="col-lg-2">
            <!-- INI EVENT -->
            <?php
          foreach ($event as $eve ) :
            ?>
            
            <div class="card text-black bg-warning border-warning mb-3" style="max-width: 18rem;">
              <div class="card-header bg-danger text-center text-white" style="font-size: 24px">
                <i class="fa fa-calendar-plus"></i><b><?php echo $eve->tanggal_event ?></b></div>
                <div class="card-body">
                  <h6 class="card-title"><i class="fa fa-thumbtack"></i>   event : <?php echo $eve->nama_event ?></h6>
                  <h6 class="card-title"><i class="fa fa-map-marker-alt"></i>   lokasi : <?php echo $eve->lokasi ?> </h6>
                  <h6 class="card-title"><i class="fa fa-clock"></i>    waktu : <?php echo $eve->waktu ?></h6>
                  
                  <!-- <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p> -->
                </div>
              </div>
              <?php endforeach; ?>
            </div>

            







          <!-- <div>
            <button type="submit" class="btn btn-primary">More Artikel</button>
          </div> -->
          <!-- </div> --> <!-- end col lg 6 -->
        </div>
      </div>
      <!-- </div> end kontainer artikel -->


      <!-- kontainer album -->
      <div id="album" class="container-fluid"  >
        <div class="row">
          <div class="col-lg-8">
            <!-- nanti diisi carousel --> 

            <div id="image-slider" class="splide">
              <div class="splide__track">
                <ul class="splide__list">
                 <?php 
                 foreach ($album as $albm) :
                  ?>
                  <li class="splide__slide rounded-pill"><img src="<?php echo base_url(); ?>assets/foto/<?php echo $albm->foto ?>"></li>
                <?php  endforeach; ?>
              </ul>
            </div>
          </div>

        </div>
        <div class="col-lg-4 text-right">

          <p style="font-family: 'Caveat', cursive;
          font-family: 'Saira Semi Condensed', sans-serif; font-size: 63px; text-align: center;" >THINGS END <br> BUT MEMORIES LAST FOREVER</p>

          <div class="mt-5 text-center">
            <button type="submit" class="btn btn-primary" onclick="window.location.replace('palbum')">explore</button>
          </div>
          

        </div>
      </div>



    </div>





    <!-- </div> --> <!-- end kontainer album -->


    <!-- kontainer COBA1 -->
    <!-- <div id="kontak" class="container-fluid" style= "background:#2A563b; color: blue">
      <div class="row">


        <div class="col-lg-3">
          <img src="img/uns.png" class="card-img-top" height="300px" width="50px" alt="...">
          <div>
            <p class="text-center">
              <h3> ARSIP UNIVERSITAS SEBELAS MARET</h3><br>
              Arsip Universitas Sebelas Maret

              Gedung L7 Lantai 2, Komplek Perpustakaan UGM <br>

              Kentingan, Surakarta – 57126 <br>

              Indonesia <br>

              Email. arsip[at]ugm.ac.id <br>

            Telp. (+62-274) 582907 (fax), 6492151, 6492152 </h1>
          </p>
        </div>


        
      </div>


      <div class="col-lg-5">
        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15820.577620936769!2d110.856466!3d-7.5592296!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x6542bb885f916f40!2sUPT%20kearsipan%20UNS!5e0!3m2!1sen!2sid!4v1620280138480!5m2!1sen!2sid" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>

        <i class="fa-market"></i> <!ngga mau muncul -->
        
        <!-- </div> -->


        <!-- <div class="col-lg-3"> <h2><b>Contact Us</b></h2></div> -->









        <!-- </div>  end class row -->



        <!-- <h3 class="text-center">kontainer COBA1 bagusan ini apa card?</h3> -->




        <!-- </div> end kontainer COBA1 -->


        <!-- kontainer contact us -->
        <!-- <div class="container-fluid" style= "background: #FF847C; color: black"> -->

          <div class="card-group mt-3 me-3">
            <div class="card text-black ">
              <div >
                <img src="<?php echo base_url(); ?>/img/uns.png" class="card-img-top w-25 mx-auto d-block mt-3"  alt="...">
              </div>
              <div class="card-body">
                <!-- <h5 class="card-title">Card title</h5> -->
                <p class="card-text "><h3> KEARSIPAN UNIVERSITAS SEBELAS MARET</h3><br>
                 Unit Pelaksana Teknis Kearsipan Universitas Sebelas Maret

                 Jl. Ir. Sutami No. 36 A Kentingan  <br>

                 Komplek Perpustakaan UNS<br>

                 Surakarta 57126 <br>

                 Email. arsip[at]uns.ac.id <br>

               Telp. (0271) 646994 Faksimile : (0271) 646655</h1>
             </p></p>
             <!-- <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p> -->
           </div>
         </div>
         <div class="card text-black ">
          <!-- <img src="..." class="card-img-top" alt="..."> -->
          <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15820.577620936769!2d110.856466!3d-7.5592296!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x6542bb885f916f40!2sUPT%20kearsipan%20UNS!5e0!3m2!1sen!2sid!4v1620280138480!5m2!1sen!2sid" width="600" height="350" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        </div>
        <div class="card text-black  ">
          <!-- <img src="" class="card-img-top" alt="...">
            <a href=""></a> -->

            <div class="card-body">
              <h5 class="card-title"><h2><b>Contact Us</b></h2></h5>
              <p class="card-text">
                <div class="mb-3"><i class="fab fa-instagram fa-2x"></i><span class="ms-3 fs-5">uptarsipuns</span></div>

                <!--<div class="mb-3"><i class="fab fa-facebook fa-2x"></i><span class="ms-3 fs-5">uptarsipuns</span></div>
                
                  <div class="mb-3"><i class="fab fa-twitter fa-2x mr-4"></i><span class="ms-3 fs-5" >@uptarsipuns</span></div>-->
                  <div class="mb-3"><i class="fas fa-envelope fa-2x"></i><span class="ms-3 fs-5">uptarsipuns@gmail.com</span></div>
                  <div class="mb-3"><i class="fas fa-phone-square-alt fa-2x"><span class="ms-3 fs-5 ">0009495</span></i></div>
                  <div class="mb-3"><i class="fas fa-map-marker-alt fa-2x"><a href="https://www.google.com/maps/place/UPT+kearsipan+UNS/@-7.5592296,110.856466,15z/data=!4m5!3m4!1s0x0:0x6542bb885f916f40!8m2!3d-7.5592296!4d110.856466" class="ms-3 fs-5">Komplek Perpustakaan UNS</a></i></div>

                </p>
                <!-- <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p> -->
              </div>
            </div>
          </div>




          <!-- </div>  --> <!-- end kontainer contact us-->



          <!-- kontainer footer -->
          <!-- <div class="container-fluid" style= "background: #00001a; color: white"> -->
            <div class="footer mt-2">
              <p class="text-center"> Copyright © 2021, <a href="#">Arsip Universitas Sebelas Maret</a> </p>
            </div>




            <!-- </div>  end kontainer footer -->



            <!-- ini adalah cdn  -->







          </body>
          </html>