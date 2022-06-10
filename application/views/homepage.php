		<!-- Masthead-->
<section class=" page-section bg-secondary  text-black px-3" style="height:93vh;">
<div class="container ">
				<div class="row text-white text-center">
					
				<div id="carouselExampleCaptions" class="carousel slide col-md-8" data-bs-ride="carousel">
				<div class="carousel-inner">
					  <div class="carousel-item active">
					  	
						<img src="<?php echo base_url(); ?>assets/animasi/b2.jpg" class=" img-fluid  rounded-3  "style="height: 75vh; ">
						<div class="carousel-caption d-none d-md-block">
						   <a href="<?php echo base_url(); ?>pabout" style="text-decoration: none" class="text-light"><h5 style="font-size: 18px; ">TENTANG</h5></a>
						   <p class="text-center"></p>
					   </div>
				   </div>
				   <?php foreach ($berita as $brt) :
					?>
					<div></div>
					<div class="carousel-item">
					  <img src="<?php echo base_url(); ?>/assets/gambar_artikel/<?php echo $brt->gambar ?>" class=" img-fluid  rounded-3" style="height: 75vh;">
					  <div class="carousel-caption d-none d-md-block" >
					  	<a href="<?php echo site_url('pberita/detail/'. $brt->id_artikel); ?>" style="text-decoration: none" class="text-light"><h5 style="font-size: 18px;"><?php echo $brt->judul_artikel; ?></h5></a>						
						<!-- <p ><?php echo word_limiter($brt->isi, 15); ?><a href="<?php echo base_url().'/pberita/detail/'.$brt->id_artikel ?>" style="font-size: 8px;">read more</a></p> -->
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
  

  	<div class="col-md-4 card text-black bg-primary border-primary px-0" style="overflow-y:scroll; height: 75vh;">
  		<div class="card-header bg-secondary text-white" style="font-size: 24px">
  			<p class="text-start"><i class="fas fa-bolt mx-3"></i>ACARA MENDATANG</p></div>
  			
  			<div class="card-body text-start">
  				<?php 
  				$i=1;
			   foreach ($event as $eve) :
				  ?>
  				<p class=""><i class="fas fa-arrow-alt-circle-right mx-1"></i><?php echo $eve->nama_event ?></p>
  				<p ><i class="fa fa-clock mx-1"></i><?php echo $eve->tanggal_event  ."	-	". $eve->waktu ?></p>
  				<!-- <div class="countdown<?= $i; ?>" data-date="<?php echo $eve->tanggal_event; ?>" data-time="<?php echo $eve->waktu; ?>00:00:00">
					  <div class="day"><span class="num"></span><span class="word"></span></div>
					  <div class="hour"><span class="num"></span><span class="word"></span></div>
					  <div class="min"><span class="num"></span><span class="word"></span></div>
					  <div class="sec"><span class="num"></span><span class="word"></span></div>
					</div>	 -->
  				<p><i class="fa fa-map-marker-alt mx-1"></i><?php echo $eve->lokasi ?></p>
  				<div id="DateCountdown<?= $i; ?>" data-date="<?php echo $eve->tanggal_event; ?> <?php echo $eve->waktu; ?>" class="DateCountdown" ></div>
  				<hr>
  				<?php 
  				$i++;
  				endforeach ?>
  			</div>
  		</div>
  		</div>
</div>
</div>
</section>

<!-- About Section-->
<section class=" page-section text-black px-3" id="about">
	<div class="container  ">
		<!-- About Section Heading-->
		<h2 class="page-section-heading text-center text-uppercase text-secondary">TENTANG</h2>
		<!-- Icon Divider-->
		<div class="divider-custom divider-dark">
			<div class="divider-custom-line"></div>
			<!-- <div class="divider-custom-icon"><i class="fas fa-star"></i></div> -->
			<div class="divider-custom-line"></div>
		</div>
		<!-- About Section Content-->
		<div class="row">
			<div class="col-lg-4 ms-auto"><p class="lead">Universitas Sebelas Maret sebagai salah satu perguruan tinggi terkemuka mempunyai komitmen dan kesadaran akan tertib arsip. Mendasari hal tersebut, maka telah ditetapkan Peraturan Mendikbud Nomor 82 tahun 2014 tentang SOTK UNS yang salah satunya mengesahkan berdirinya UPT Kearsipan UNS pada tanggal 3 Juli 2015 dengan tugas utama melakukan pembinaan kearsipan di lingkungan Universitas Sebelas Maret.</p></div>
			<div class="col-lg-4 me-auto"><p class="lead">UPT. Kearsipan pertama kali berdiri dengan nama Pusat Arsip Universitas Sebelas Maret. Pusat Arsip Universitas Sebelas Maret diresmikan pada hari Kamis, 3 Maret 2005 oleh Pembantu Rektor I UNS. Peresmian Pusat Arsip Universitas Sebelas Maret diselenggarakan sekaligus dalam rangka memperingati Dies Natalis XXIX UNS Tahun 2005. </p></div>
		</div>
		<!-- About Section Button-->
		<div class="text-center mt-4">
			<a class="btn  btn-outline-dark" href="<?php echo base_url(); ?>pabout">
				<i class=""></i>
				telusuri
			</a>
		</div>
	</div>
</section>






<!-- Artikel Section-->
<section class=" page-section text-dark mb-0 bg-secondary" id="about">
	<div class="container">
		
		<!-- Artikel Section Content-->
		<div class="row">
			<div class="col-lg-6" id="artikel">
			   
		<div class="divider-custom divider-dark">
			<div class="divider-custom-line"></div>
			<h3 class="text-right mt-3 mb-3 page-section-heading text-center text-uppercase text-primary" style="font-size: px;"><b>BERITA</b></h3>
			
			<div class="divider-custom-line"></div>
		</div>


			   <?php

			   foreach ($berita as $brt) :
				  ?>
				  <div class="card mb-2 bg-white">
					<div class="row g-0 p-0">
					  <div class="col-md-4 kontainergambar">
						<img src="<?php echo base_url(); ?>/assets/gambar_artikel/<?php echo $brt->gambar ?>" class="img-thumbnail gambarberita rounded-start">
					</div>
					<div class="col-md-8 ">
						<div class="card-body" >
							<small class="text-muted tanggal"><?php echo $brt->tgl_publikasi_artikel ?></small>
						  <h5 class="card-title teksberita mb-0"><?php echo $brt->judul_artikel; ?></h5>
			  
				<a class="tekslink" href="<?php echo site_url('pberita/detail/'. $brt->id_artikel); ?>">selengkapnya</a>

			</div>

		</div>
	</div>
</div>
<?php endforeach ?>



 <div class="mt-3 mb-3">
            <a type="submit" class="btn btn-l btn-outline-dark text-primary" href="<?php echo base_url(); ?>pberita";>Berita Lain</a>

     </div>
</div> 		<!-- end kolom berita keknya :v -->

<div class="col-lg-6">
      <!-- artikel dengan perulangan -->
      
      <div class="divider-custom divider-dark">
			<div class="divider-custom-line"></div>
			<h3 class="text-right mt-3 mb-3 page-section-heading text-center text-uppercase text-primary"><b>ARTIKEL</b></h3>
			<div class="divider-custom-line"></div>
		</div>
          <?php  //for ($i=0; $i<3; $i++):


          ?>

          <?php
          foreach ($artikel as $artkl ) :
            ?>
            <div class="card mb-2 bg-white">
					<div class="row g-0 p-0">
					  <div class="col-md-4 kontainergambar ">
						<img src="<?php echo base_url(); ?>/assets/gambar_artikel/<?php echo $artkl->gambar ?>" class="img-thumbnail gambarberita">
					</div>
					<div class="col-md-8 ">
						<div class="card-body" >
							<small class="text-muted tanggal"><?php echo $artkl->tgl_publikasi_artikel ?></small>
						  <h5 class="card-title teksberita mb-0"><?php echo $artkl->judul_artikel; ?></h5>
			  
				<a class="tekslink" href="<?php echo site_url('partikel/detail/'. $artkl->id_artikel); ?>">selengkapnya</a>

			</div>

		</div>
	</div>
</div>
      <?php endforeach; ?>

      <div class="mt-3 mb-3">
            <a type="submit" class="btn btn-l btn-outline-dark text-primary" href="<?php echo base_url(); ?>partikel";>Artikel Lain</a>

     </div>
 </div>




</section>



<!-- Portfolio Section-->
<section class=" page-section portfolio bg" id="portfolio">
	<div class="container">
		<!-- Portfolio Section Heading-->
		<!-- <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Albums</h2> -->
		<!-- Icon Divider-->
		<!-- <div class="divider-custom">
			<div class="divider-custom-line"></div>
			<div class="divider-custom-icon"><i class="fas fa-star"></i></div>
			<div class="divider-custom-line"></div>
		</div> -->
		<!-- Portfolio Grid Items-->
		<div class="row justify-content-center">
		
			<div class="row">
          <div class="col-lg-8 " >
            <!-- nanti diisi carousel --> 

            <div id="image-slider" class="splide">
              <div class="splide__track">
                <ul class="splide__list">
                 <?php 
                 foreach ($daftar_card as $albm) :
                  ?>
                  <li class="splide__slide rounded-3"><img src="<?php echo base_url(); ?>assets/foto/<?php echo $albm->foto ?>">
                  	<div class="row fixed-bottom">
                  	<div class="col align-self-center text-center">
                  		
				            <p class="bg-secondary text-wrap text-primary" style="margin-bottom:25px; font-size: 20px;"><?php echo $albm->nama_grup_album; ?></p>
				          </div>
				        </div>
                  </li>
                <?php  endforeach; ?>
              </ul>
            </div>
          </div>

        </div>
        <div class="col-lg-4 align-middle">

          <!-- <p style="font-family: 'Caveat', cursive;
          font-family: 'Saira Semi Condensed', sans-serif; font-size: 43px; text-align: center;" >ARSIP YANG TERJAGA<br>ADALAH PONDASI<br>ORGANISASI YANG KOKOH</p> -->
          <h1 class="ml3">ARSIP YANG TERJAGA ADALAH PONDASI ORGANISASI YANG KOKOH</h1>

          <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>
          
          <div class="mt-5 text-center">
         
        <a type="submit" class="btn btn-l btn-outline-dark" href="<?php echo base_url(); ?>palbum"; >Telusuri</a>

          </div>
          

        </div>
      </div>
			
		
		</div>
	</div>
</section>






		
		<!-- Portfolio Modal 5-->
		<div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" aria-labelledby="portfolioModal5" aria-hidden="true">
			<div class="modal-dialog modal-xl">
				<div class="modal-content">
					<div class="modal-header border-0"><button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button></div>
					<div class="modal-body text-center pb-5">
						<div class="container">
							<div class="row justify-content-center">
								<div class="col-lg-8">
									<!-- Portfolio Modal - Title-->
									<h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Locked Safe</h2>
									<!-- Icon Divider-->
									<div class="divider-custom">
										<div class="divider-custom-line"></div>
										<div class="divider-custom-icon"><i class="fas fa-star"></i></div>
										<div class="divider-custom-line"></div>
									</div>
									<!-- Portfolio Modal - Image-->
									<img class="img-fluid rounded mb-5" src="<?= base_url();?>assets/homepage/assets/img/portfolio/safe.png" alt="..." />
									<!-- Portfolio Modal - Text-->
									<p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
									<button class="btn btn-primary" href="#!" data-bs-dismiss="modal">
										<i class="fas fa-times fa-fw"></i>
										Close Window
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Bootstrap core JS-->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
		<!-- Core theme JS-->
		<script src="assets/homepage/js/scripts.js"></script>
		<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
		<!-- * *                               SB Forms JS                               * *-->
		<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
		<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
		<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>




		<!-- Optional JavaScript; choose one of the two! -->
    <script src="https://cdn.jsdelivr.net/npm/@splidejs/splide@3.1.6/dist/js/splide.min.js"></script>
    <!-- Untuk sinkronisasi primary dan secondary -->
    <script>
      var secondarySlider = new Splide("#secondary-slider").mount();
      var primarySlider = new Splide("#primary-slider");
      primaryslider.sync(secondarySlider).mount();
    </script>
    <!-- Konfigurasi Splide -->
    
    
    	
  </script>
  <script >
  	function tampil_bunder(id){
  		$("#DateCountdown").TimeCircles();
  	
  	document.getElementById('linkhapus').href= "<?php echo base_url('arsip_tekstual/hapus/'); ?>"+id;
  	}

  	$("#DateCountdown").TimeCircles();
  	document.getElementsByTagName("div").innerHTML = $("#DateCountdown").TimeCircles();
  </script>
  <script >
  	$("#DateCountdown1").TimeCircles();
  </script>
  <script >
  	$("#DateCountdown2").TimeCircles();
  </script>
  <script >
  	$("#DateCountdown3").TimeCircles();
  </script>





  <!-- <script type="text/javascript">
	var x = document.querySelectorAll(".DateCountdown");
	x[0].$("#DateCountdown").TimeCircles();
	</script> -->
  <script>
    document.addEventListener( 'DOMContentLoaded', function () {
      new Splide( '#image-slider', {
        type  : 'fade',
        speed : 1000,
        rewind: true,
        autoplay: true,
        'cover'      : true,
        'heightRatio': 0.5,
      } ).mount();
    } );
  </script>
  
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
      crossorigin="anonymous">
    </script>

    <script src="<?php echo base_url(); ?>/assets/homepage/js/countdown.js"></script>
<script type="text/javascript">
	var textWrapper = document.querySelector('.ml3');
textWrapper.innerHTML = textWrapper.textContent.replace(/\S/g, "<span class='letter'>$&</span>");

anime.timeline({loop: true})
  .add({
    targets: '.ml3 .letter',
    opacity: [0,1],
    easing: "easeInOutQuad",
    duration: 2250,
    delay: (el, i) => 150 * (i+1)
  }).add({
    targets: '.ml3',
    opacity: 0,
    duration: 1000,
    easing: "easeOutExpo",
    delay: 1000
  });

function mytimer($tahun, $bulan, $tanggal){
	return countdown( new Date($tahun, $bulan, $tanggal) ).toString();
}

const myCountdown1 = new countdown({
  target: '.countdown1',
  dayWord: ' Hari',
  hourWord: ' Jam',
  minWord: ' Menit',
  secWord: ' Detik'
});

const myCountdown2 = new countdown({
  target: '.countdown2',
  dayWord: ' Hari',
  hourWord: ' Jam',
  minWord: ' Menit',
  secWord: ' Detik'
});

const myCountdown3 = new countdown({
  target: '.countdown3',
  dayWord: ' Hari',
  hourWord: ' Jam',
  minWord: ' Menit',
  secWord: ' Detik'
});
</script>

	</body>


	</html>
