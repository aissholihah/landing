<!-- class="badge bg-primary text-wrap" -->
<div class="content-wrapper" > 
	<section class="content-header" >
    <h1>
      Data Grup Album
      <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">Data Grup Album</li>
    </ol>
  </section>

  <section class="content">
	<?php foreach($grup_album as $grp) 	{	 ?>
		<form action="<?php echo base_url().'grup_album/update'; ?>"
		method="POST">
		<!--  inputan -->   
			<div class="form-group">
				<label>Nama Grup Album </label>
				<input type="hidden" id="id" name="id_grup_album" class="form-control" value="<?php echo $grp->id_grup_album ?>" required>
				<input type="text" id="nama_grup_album"  name="nama_grup_album" class="form-control" value="<?php echo $grp->nama_grup_album ?>" required>
				<!-- <label>Tahun Grup Album </label>
				<input type="" id="" name="tahun_grup_album" class="form-control" value="<?php echo $grp->tahun_grup_album ?>" required>	
 -->
			</div>
			 <div class="form-group">
			 	<label>Tahun Grup Album </label>
				<input type="" id="tahun_grup_album" name="tahun_grup_album" class="form-control" value="<?php echo $grp->tahun_grup_album ?>" required>	

			 	
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
  document.getElementById("nama_grup_album").value = "";		// harus sesuai dengan id di form nya
  document.getElementById("tahun_grup_album").value = "";
  //document.getElementById("email_user").value = "";

}
</script>