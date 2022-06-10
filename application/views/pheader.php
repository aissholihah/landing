<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body>
    <h1>Hello, world!</h1>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    -->

    <div class="container-fluid px-0">
    <div class="row" style="background-image: url('img/pattern.png');">
      <div class="col-lg-12 mx-auto">
        <nav class="navbar navbar-expand-lg navbar-primary bg-light fixed-top px-5" id="mainNav">
          <a class="navbar-brand" href="<?php echo site_url('home'); ?>">
            <img src="<?php echo base_url(); ?>img/uns.png" alt="" width="30" height="30" class="d-inline-block align-text-top"/>
            <b>UPT KEARSIPAN UNS</b></a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                  <a class="nav-link active js-scroll-trigger" aria-current="page" href="<?php echo site_url('home'); ?>">About</a>
                </li>
                <!-- home>articles -->
                <li class="nav-item"> 
                  <a class="nav-link js-scroll-trigger" aria-current="page" href="<?php echo site_url('partikel'); ?>">Artikel</a>
                </li>
                <!-- home> albums -->
                <li class="nav-item">          
                  <a class="nav-link active js-scroll-trigger" aria-current="page" href="<?php echo site_url('palbum'); ?>">Album</a>
                </li>
                <!-- about -->
                <li class="nav-item">          
                  <a class="nav-link active js-scroll-trigger" aria-current="page" href="<?php echo site_url('parsip'); ?>">Arsip</a>
                </li><!-- end arsip -->

                <!-- regulasi  -->
                <li class="nav-item">          
                  <a class="nav-link active js-scroll-trigger" aria-current="page" href="<?php echo site_url('pregulasi'); ?>">Regulasi</a>
                </li><!-- end regulasi -->

                <li class="nav-item">          
                  <a class="nav-link active js-scroll-trigger" aria-current="page" href="#kontak">Contact Us</a>
                </li>   

              </ul>   <!-- end tulisan di navbar -->       
            </div>    <!-- end kotak nav -->
          </nav>    <!-- end nav -->

  </body>
</html>