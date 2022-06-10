<!-- class="badge bg-primary text-wrap" -->
<div class="content-wrapper" > 
	<section class="content-header" >
    <h1>
      Data Grup Arsip Foto
      <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">Data Grup Arsip Foto</li>
    </ol>
  </section>

  <section class="content">
	<?php foreach($grup_arsip_foto as $grp) 	{	 ?>
		<form action="<?php echo base_url().'grup_arsip_foto/update'; ?>"
		method="POST">
		<!--  inputan -->   
			<div class="form-group">
				<label>Nama Grup Album </label>
				<input type="hidden" id="id" name="id_grup_arsip_foto" class="form-control" value="<?php echo $grp->id_grup_arsip_foto ?>" required>
				<input type="text" id="id_grup_arsip_foto"  name="nama_grup_arsip_foto" class="form-control" value="<?php echo $grp->nama_grup_arsip_foto ?>" required>	

				<label>Tahun Grup Arsip Foto </label>
				<input type="" id="" name="tahun" class="form-control" value="<?php echo $grp->tahun ?>" required>	
			</div>


		<!-- 
			<div class="form-group">
				<label>Email</label>				
				<input type="email" id="email_user" name="email_user" class="form-control" value="<?php echo $grp->email_user ?>" required>				
			</div> -->

			<button type="button" onclick="resetteks()" class="btn btn-danger">Reset</button>
			<button type="submit" class="btn btn-primary">Simpan</button>			
		</form>
		<?php  } ?>

</section>

<!-- end div --> 
</div> 

<script>
function resetteks() {
  document.getElementById("nama_grup_arsip_foto").value = "";		// harus sesuai dengan id di form nya
  // document.getElementById("password_user").value = "";
  //document.getElementById("email_user").value = "";

}
</script>