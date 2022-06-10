<script src="<?php echo base_url('assets/ckeditor/ckeditor.js'); ?>"></script> 

<!-- class="badge bg-primary text-wrap" -->
<div class="content-wrapper" > 
	<section class="content-header" >
    <h1>
      Data artikel
      <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">Data artikel</li>
    </ol>
  </section>

  <section class="content">
	<?php foreach($artikel as $artkl) 	{	 ?>
		<?php echo form_open_multipart('artikel/update');?>
		<!--  inputan -->   
			<div class="form-group">
				<label>Jenis Artikel</label>
				<input type="hidden" id="jenis_artikel" name="id_artikel" class="form-control" value="<?php echo $artkl->id_artikel ?>">
				<input type="text"  name="jenis_artikel" class="form-control" value="<?php echo $artkl->jenis_artikel ?>">	
			</div>

			<div class="form-group">
			<label>gambar</label>			
			<input type="file" id="gambar" name="gambar" accept="image/*" class="form-control" value="<?php echo $artkl->gambar ?>" >	
				<!--  -->
			</div>
			<!-- biar gambar tampil di file edit. -->
			<div class="form-group">
			<img width="500 " src="<?php echo base_url(); ?>/assets/gambar_artikel/<?php echo $artkl->gambar ?>"/>
			<input type="text" readonly name="namagambar" class="form-control" value="<?php echo $artkl->gambar ?>" required>	
			</div>

			<div class="form-group">
				<label>Tanggal Publikasi Artikel</label>			
				<input type="date" id="tgl_publikasi_artikel" name="tgl_publikasi_artikel" class="form-control" value="<?php echo $artkl->tgl_publikasi_artikel ?>">	
			</div>

			<div class="form-group">
				<label>Judul_Artikel</label>				
				<input type="text" id="judul_artikel" name="judul_artikel" class="form-control" value="<?php echo $artkl->judul_artikel ?>">				
			</div>

			<div class="form-group">
				<label>Author</label>				
				<input type="text" id="author" name="author" class="form-control" value="<?php echo $artkl->author ?>">				
			</div>

			<div class="form-group">
				<label>Isi</label>				
				<textarea id="isi" name="isi" class="form-control" ><?php echo htmlspecialchars($artkl->isi); ?>	
				</textarea>		
			</div>
			<!--  
			<div class="form-group">
				<label>url</label>				
				<input type="text" id="url_artikel" name="url_artikel" class="form-control" value="<?php echo $artkl->url_artikel ?>">				
			</div>
			-->

			<button type="button" onclick="resetteks()" class="btn btn-danger">Reset</button>
			<button type="submit" class="btn btn-primary">Simpan</button>			
		<?php echo form_close(); ?>
		<?php  } ?>

</section>

<!-- end div --> 
</div> 
<script>
function resetteks() {
  document.getElementById("jenis_artikel").value = "";		// harus sesuai dengan id di form nya
  document.getElementById("tgl_publikasi_artikel").value = "";
  document.getElementById("judul_artikel").value = "";
  document.getElementById("author").value = "";
  document.getElementById("isi").value = "";

}

/* NOTE 
jadi kalo mo ngedit tombol reset
1. atur di botton riset onklik="nama fungsi"
2. bikin fungsi tombolnya eg resetteks()
3. ganti type tombol reset ke button. 
4. terus nggantinya mulai dari input type="teks" di username. 
*/

</script>
<script>
 CKEDITOR.replace( 'isi', {
    filebrowserBrowseUrl: '<?php echo base_url(); ?>assets/ckfinder/ckfinder.html',
    filebrowserUploadUrl: '<?php echo base_url(); ?>assets/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
    filebrowserWindowWidth: '1000',
    filebrowserWindowHeight: '700'
} );
</script>
