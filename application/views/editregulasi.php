<!-- class="badge bg-primary text-wrap" -->
<div class="content-wrapper" > 
	<section class="content-header" >	<!-- kalo "content" kemaren ancur --> 
    <h1>
      Data regulasi
      <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">Data Regulasi </li>
    </ol>
  </section>

  <section class="content">
	<?php foreach($regulasi as $rgl) 	{	 ?> <!-- $regulasi nanti bakal diganti jadi $data di controller -->
		<?php echo form_open_multipart('regulasi/update');?>
		<!--  inputan -->   
			<div class="form-group">
				<label>Judul regulasi</label>
				<input type="hidden" name="id" class="form-control" value="<?php echo $rgl->id_regulasi ?>">
				<input type="text" id="judul_regulasi" name="judul_regulasi" class="form-control" value="<?php echo $rgl->judul_regulasi ?>">	<!-- name harus sama dengan panah di value -->
			</div>

			<div class="form-group">
				<label>File regulasi</label>				
				<input type="file" id="file_regulasi" name="file_regulasi" accept="application/pdf" class="form-control" >	

			</div>

			<div class="form-group">
			
			<input type="text" readonly name="namafile" class="form-control" value="<?php echo $rgl->file_regulasi ?>" required>	
			</div>

			<button type="button" onclick="resetteks()" class="btn btn-danger">Reset</button>
			<button type="submit" class="btn btn-primary">Simpan</button>			
		<?php echo form_close(); ?>
		<?php  } ?>

</section>

<!-- end div --> 
</div> 

<script>
function resetteks() {
  document.getElementById("judul_regulasi").value = "";		// harus sesuai dengan id di form nya
  
  document.getElementById("file_regulasi").value = "";


}

/* NOTE 
jadi kalo mo ngedit tombol reset
1. atur di botton riset onklik="nama funsi"
2. bikin fungsi tombolnya eg resetteks()
3. ganti type tombol reset ke button. 
4. terus nggantinya mulai dari input type="teks" di username. 
*/

</script>

