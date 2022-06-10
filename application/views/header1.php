<!DOCTYPE html>
<html lang="en">
    <head>

        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" >
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>UPT KEARSIPAN</title>
        <!-- Favicon-->
        <link rel="icon" type="image/png" href="<?php echo base_url(); ?>/uns.png" >
        <!-- Font Awesome icons (free version)-->
        <script src="<?php echo base_url(); ?>/assets/homepage/js/all.js"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" >
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" >
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="<?= base_url();?>assets/homepage/css/styles.css" rel="stylesheet" >
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Caveat&family=Saira+Semi+Condensed:wght@800&display=swap" rel="stylesheet">

        <!-- jquery search -->
        <!-- <script src="https://code.jquery.com/jquery-3.5.1.js" 
        integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" 
        crossorigin="anonymous"></script> -->
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>/mycss.css">
        <script src="https://kit.fontawesome.com/cb4778956c.js" crossorigin="anonymous"></script>
        <link href="<?php echo base_url(); ?>assets/dist/pattern.min.css" rel="stylesheet">
        <!-- jquery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="<?php echo base_url(); ?>/assets/bootstrap/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@splidejs/splide@3.1.6/dist/css/splide.min.css"/> 
        <!--<link href="<?php echo base_url(); ?>/assets/profil/css/style.css"rel="stylesheet"type="text/css"/>-->
        <link href="<?php echo base_url(); ?>/assets/profil/treantjs/treant.css"rel="stylesheet"type="text/css"/>
        <link rel="stylesheet" href="<?php echo base_url(); ?>/assets/profil/treantjs/examples/custom-colored/custom-colored.css">
        <!--<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/@splidejs/splide@3.1.5/dist/js/splide.cjs.min.js">-->
    <?php if(strpos(current_url(),'palbum')){ ?>
    <style>
    .card:hover{
     transform: scale(1.05);
  box-shadow: 0 10px 20px rgba(0,0,0,.12), 0 4px 8px rgba(0,0,0,.06);
}
  </style>
<?php } ?>
    
    <!-- countdown jquery -->

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/countdown/inc/TimeCircles.js"></script>
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/countdown/inc/TimeCircles.css" />
    
    </head>
    <body id="page-top">
        <!-- Navigation-->

        <nav class="navbar navbar-expand-lg bg-primary text-uppercase fixed-top py-1" id="mainNav">
            <div class="container">
                <a class="navbar-brand" href="<?php echo base_url(); ?>homepage">
                <img src="<?php echo base_url(); ?>uns.png" alt="..." height="56">
                UPT KEARSIPAN</a>               

                <ul class="navbar-nav" >
						<li class="nav-item dropdown mx-0 mx-lg-1">
							<a class="nav-link dropdown-toggle py-3 px-0 px-lg-3 rounded" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							  Profil
							</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown1">
							  <a class="dropdown-item" href="<?php echo base_url(); ?>pabout">Tentang Kami</a>
							  <a class="dropdown-item" href="<?php echo base_url('pabout/profil'); ?>">Struktur Organisasi</a>
							  <a class="dropdown-item" href="#contact">Hubungi Kami</a>
							</div>
						  </li>
						<li class="nav-item dropdown mx-0 mx-lg-1">
							<a class="nav-link dropdown-toggle py-3 px-0 px-lg-3 rounded" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							  Khazanah
							</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown2">
							  <a class="dropdown-item" href="<?php echo base_url(); ?>palbum">Album UPT Kearsipan</a>
							  <div class="dropdown-divider"></div>
							  <a class="dropdown-item" href="<?php echo site_url('p_arsip_tekstual'); ?>">Arsip Tekstual</a>
							  <a class="dropdown-item" href="<?php echo site_url('p_arsip_foto'); ?>">Arsip Foto</a>
							  <a class="dropdown-item" href="<?php echo site_url('p_arsip_video'); ?>">Arsip Video</a>
							</div>
						</li>
						<li class="nav-item dropdown mx-0 mx-lg-1">
							<a class="nav-link dropdown-toggle py-3 px-0 px-lg-3 rounded" href="#" id="navbarDropdown3" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							  Rilis
							</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown3">
							  <a class="dropdown-item" href="<?php echo site_url('partikel'); ?>">Artikel</a>
							  <a class="dropdown-item" href="<?php echo base_url(); ?>pberita">Berita</a>
							  <a class="dropdown-item" href="<?php echo base_url(); ?>pregulasi">Regulasi</a>
							</div>
						</li>
                        <!-- <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="#contact">Contact</a></li> -->
                        <li class="nav-item mx-0 mx-lg-1">
							<div class="nav-link py-3 px-0 px-lg-3 rounded">
                            <?php echo form_open('homepage/search', 'class="row g-3"') ?>
                                    <input type="text" class="form-control" id="myinput" style="margin-top:10px;" name="keyword" value="" placeholder="cari...">
                            <?php echo form_close() ?>
							</div>
                        </li>
                   <!--      <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="#contact">Contact</a></li> -->
                        <!-- <li class="nav-item mx-0 mx-lg-1">
                            <div class="middle">
                                <form class="search-box" action="index.html" method="post">
                                  <input type="text" class="input">
                                  <button type="button" class="btn" name="button"></button>
                              </form>
                          </div>
                        </li> -->
                    </ul>
                </div>
            </div>
        </nav>


<!-- <script >
    // $(document).ready(function()){
    //     $('#icon').click(function(){
    //         $('#kotak').hide(1000);
    //     });
    // }
    $(".btn").on("click",function(){
    $(".input").toggleClass("inclicked");
    $(".btn").toggleClass("close");
})
</script>   -->
<script type="text/javascript">
        $(".btn").on("click",function(){
            $(".input").toggleClass("inclicked");
            $(".btn").toggleClass("close");
        });
</script>  

  <!-- search sebelem about  -->
  <script>
        $(".btn").click(function() {
            $(".input").toggleClass("click")
            $("span").toggleClass("click")
        })
    </script>