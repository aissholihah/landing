<!-- class="badge bg-primary text-wrap" -->
<div class="content-wrapper" > 
	

	<section class="content">
		<div class="row justify-content-center mt-5">


			<div class="col-lg-7">
				<div class="text-center">
				<h1 class="h4 text-gray-900 mb-4">Edit Profil </h1>
			</div>
  	
	<?php foreach($user as $usr) 	{	 ?>
		<form action="<?php echo base_url().'masuk/update'; ?>"
		method="POST">
		<!--  inputan -->   
			<div class="form-group">
				<label>Username </label>
				<input type="hidden" id="id" name="id_user" class="form-control" value="<?php echo $usr->id_user ?>" required>
				<input type="text" id="id_user"  name="username" class="form-control" value="<?php echo $usr->username ?>" required readonly>	
			</div>

			<div class="form-group">
				<label>Email</label>			
				<input type="email" id="email" name="email" class="form-control" value="<?php echo $usr->email ?>" required readonly>	
			</div> 

			<div class="form-group">
				<label>Nama</label>				
				<input type="text" id="nama" name="nama" class="form-control" value="<?php echo $usr->nama ?>" required>				
			</div>

			<div class="form-group">
				<label>Password</label>				
				<input type="password" id="password" name="password" class="form-control" value="" required>				
			</div>
			<!-- <div class="form-group">
            <label>Tanggal Lahir</label>
            <input type="date" name="tgl_lahir" class="form-control" required>
      </div>
      <div class="form-group">
            <label>Alamat</label>
            <input type="alamat" name="alamat" class="form-control" required>
       </div>

			<div class="form-group">
				<label>Pekerjaan</label>			
				<input type="pekerjaan" id="pekerjaan" name="pekerjaan" class="form-control" value="<?php echo $usr->pekerjaan ?>" required>	
			</div> 


			<div class="form-group">
				<label>Instansi</label>			
				<input type="institusi" id="institusi" name="institusi" class="form-control" value="<?php echo $usr->institusi ?>" required>	
			</div>  -->


			<button type="button" onclick="resetteks()" class="btn btn-danger">Reset</button>
			<button type="submit" class="btn btn-primary">Simpan</button>			
		</form>
		<?php  } ?>
	</div>
</div>

</section>

<!-- end div --> 
</div> 

<script>
function resetteks() {
  // document.getElementById("id_user").value = "";		// harus sesuai dengan id di form nya
  document.getElementById("id_user").value = "";
  // document.getElementById("email").value = "";
  document.getElementById("nama").value = "";
  // document.getElementById("tgl_lahir").value = "";
  // document.getElementById("alamat").value = "";
  // document.getElementById("pekerjaan").value = "";
  // document.getElementById("institusi").value = "";

}
</script>


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