<!-- class="badge bg-primary text-wrap" -->
<div class="content-wrapper" > 
	<section class="content-header" >
    <h1>
      Data event
      <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">Data event</li>
    </ol>
  </section>

  <section class="content">
	<?php foreach($event as $eve) 	{	 ?>
		<form action="<?php echo base_url().'event/update'; ?>"
		method="POST">
		<!--  inputan -->   
			<div class="form-group">
				<label>Tanggal </label>
				<input type="hidden" id="id" name="id_event" class="form-control" value="<?php echo $eve->id_event ?>" required>
				<input type="date" id="tanggal_event"  name="tanggal_event" class="form-control" value="<?php echo $eve->tanggal_event ?>" required>	
			</div>

			

			<div class="form-group">
				<label>Nama Event</label>				
				<input type="text" id="nama_event" name="nama_event" class="form-control" value="<?php echo $eve->nama_event ?>" required>				
			</div>

			 <div class="form-group">
				<label>Lokasi</label>			
				<input type="text" id="lokasi" name="lokasi" class="form-control" value="<?php echo $eve->lokasi ?>" required>	
			</div>

			<div class="form-group">
				<label>Waktu</label>			
				<input type="time" id="waktu" name="waktu" class="form-control" value="<?php echo $eve->waktu ?>" required>	
			</div>

			<button type="button" onclick="resetteks()" class="btn btn-danger">Reset</button>
			<button type="submit" class="btn btn-primary">Simpan</button>			
		</form>
		<?php  } ?>

</section>

<!-- end div --> 
</div> 

<script>
function resetteks() {
  document.getElementById("id_event").value = "";		// harus sesuai dengan id di form nya
  document.getElementById("tanggal_event").value = "";
  document.getElementById("nama_event").value = "";
  document.getElementById("lokasi").value = "";
  document.getElementById("waktu").value = "";

}
</script>