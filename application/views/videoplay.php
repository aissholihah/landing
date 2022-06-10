<!-- <!DOCTYPE html>
<html>
<head>
	<title>403 Forbidden</title>
</head>
<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>mycss.css">
<body> -->

<h3 class="heading"> Arsip Video </h3>

<div class="container">
	<div class="main-video">
		<div class="video">
			<video src="<?php echo base_url('/assets/arsip_video/'.$video_arsip[0]->video); ?>" controls muted>					
			</video>
			<h3 class="title"><?php echo $video_arsip[0]->judul; ?></h3>	
		</div>
	</div> <!-- end main-video -->	

	<div class="video-list">
		<h3 class="heading"> <?php echo $video_arsip[0]->nama_grup_arsip_video; ?> </h3>
		<?php $n=1; foreach ($video_arsip as $albm ) : ?>
		<div class="vid">
			<video src="<?php echo base_url('/assets/arsip_video/'.$albm->video); ?>" >			
			</video>
			<h3 class="title"><?php echo $n.". ".$albm->judul; ?> </h3>
		</div>
	<?php $n++; endforeach; ?>
		<!--<div class="vid">
			<video src="<?php echo base_url('/assets/arsip_video/WhatsApp_Video_2021-10-20_at_1_21_21_PM.mp4'); ?>" >			
			</video>
			<h3 class="title">02 nnnnnnnnnnnnnn</h3>
		</div>
		<div class="vid">
			<video src="<?php echo base_url('/assets/arsip_video/Access_forbidden!_-_Google_Chrome_2021-09-10_02-20-07.mp4'); ?>" >			
			</video>
			<h3 class="title">03kkkkkkkkkkkkk </h3>
		</div>
		<div class="vid">
			<video src="<?php echo base_url('/assets/arsip_video/WhatsApp_Video_2021-10-12_at_6_32_19_PM.mp4'); ?>" >			
			</video>
			<h3 class="title">04 llllllllllll</h3>
		</div>-->
	</div> <!-- end video-list -->
</div> <!-- end container -->



<!-- TAB and content -->
<div class="py-5 col-xl-8 col-md-10 col-11 mx-auto">
<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="daftarAlbum-tab" data-bs-toggle="tab" data-bs-target="#a-daftarAlbum" type="button" role="tab" aria-controls="a-daftarAlbum" aria-selected="false">Daftar Album</button>
  </li>
  <?php foreach ($tahun as $thn) : ?>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="<?php echo $thn->tahun; ?>-tab" data-bs-toggle="tab" data-bs-target="#a-<?php echo $thn->tahun; ?>" type="button" role="tab" aria-controls="a-<?php echo $thn->tahun; ?>" aria-selected="false"><?php echo $thn->tahun; ?></button>
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
        <a href='<?php echo site_url('p_arsip_video/index/'.$dcard->grup); ?>' style="text-decoration: none">
          <div class="card text-secondary" style="width:100%; height:auto; position:relative;">
          <video class="thumbvid" src="<?php echo base_url().'assets/arsip_video/'.$dcard->video; ?>" type="video/mp4">
     </video>
          <div class="card-body">
            <h5 class="card-title"><?php echo $dcard->nama_grup_arsip_video; ?></h5>
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
  <div class="tab-pane fade" id="a-<?php echo $thn->tahun; ?>" role="tabpanel" aria-labelledby="<?php echo $thn->tahun; ?>-tab">
    <div class='row row-cols-1 row-cols-md-4 g-4 py-5'>
    <?php foreach ($daftar_card as $dcard ) : 
          if($dcard->tahun==$thn->tahun){
      ?>
        <div class="col">
        <a href='<?php echo site_url('p_arsip_video/index/'.$dcard->grup); ?>' style="text-decoration: none">
          <div class="card text-secondary">
          <video class="thumbvid" src="<?php echo base_url().'assets/arsip_video/'.$dcard->video; ?>" type="video/mp4">
     </video>
          <div class="card-body">
            <h5 class="card-title"><?php echo $dcard->nama_grup_arsip_video; ?></h5>
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

 <script src="<?= base_url();?>assets/x/vendor/jquery/jquery.min.js"></script>
    <script src="<?= base_url();?>assets/x/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="<?= base_url();?>assets/x/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="<?= base_url();?>assets/x/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="<?= base_url();?>assets/x/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="<?= base_url();?>assets/x/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="<?= base_url();?>assets/x/js/demo/datatables-demo.js"></script>

<script>
	let listVideo = document.querySelectorAll('.video-list .vid');
	let mainVideo = document.querySelector('.main-video video');
	let title = document.querySelector('.main-video .title');


	listVideo.forEach(video=>{
		video.onclick = () =>{
			listVideo.forEach(vid=> vid.classList.remove('active'));
			video.classList.add('active');
			if(video.classList.contains('active')){
				let src = video.children[0].getAttribute('src'); //sync thum dan main content 
				mainVideo.src = src;
				let text = video.children[1].innerHTML;
				title.innerHTML = text;
			};
		};

	});
	// document.getElementById("tojudul").innerHTML=document.getElementById("judul").innerHTML;
</script>

<script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
      crossorigin="anonymous">
    </script>

<!-- </body>
</html> -->
