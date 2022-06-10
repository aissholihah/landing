<!-- class="badge bg-primary text-wrap" -->
<div class="content-wrapper" > 
	<section class="content-header" >
    <h1>
      Data Album
      <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">Data Album</li>
    </ol>
  </section>

  <section class="content">
	<?php foreach($album as $albm) 	{	 ?>
		<?php echo form_open_multipart('album/update');?>
		<!--  inputan -->   
			<div class="form-group">
				<label>Judul Album</label>
				<input type="hidden" name="id_album" class="form-control" value="<?php echo $albm->id_album ?>" required>
				<!-- yg dibawah yg ditampilin -->
				<input type="text" id="judul_album" name="judul_album" class="form-control" value="<?php echo $albm->judul_album ?>" required>	
			</div>

			<div class="form-group">
				<label>Foto</label>			
				<input type="file" id="foto" name="foto" accept="image/*" class="form-control" value="<?php echo $albm->foto ?>" >	
				<!--  -->
			</div>
			<!-- biar gambar tampil di file edit. -->
			<div class="form-group">
			<img width="500 " src="<?php echo base_url(); ?>/assets/foto/<?php echo $albm->foto ?>"/>
			<input type="text" readonly name="namafoto" class="form-control" value="<?php echo $albm->foto ?>" required>	
			</div>

			<div class="form-group">
				<label>Narasi</label>				
				<input type="text" id="narasi_album" name="narasi_album" class="form-control" value="<?php echo $albm->narasi_album ?>" required>				
			</div>
			<div class="form-group">
          <label>Grup</label>
          
          <select class="form-select" aria-label="Default select example" name="grup" id="grup">
          	<option value="0">-</option>
            <?php foreach ($grupalbum as $ratasan) :
            	if($albm->grup==$ratasan->id_grup_album){
            		$select=" selected ";
            	}else{
            		$select=" ";
            	}
              echo "<option value='".$ratasan->id_grup_album."' ".$select.">".$ratasan->nama_grup_album." - ".$ratasan->tahun_grup_album."</option>";
            
            endforeach ?>
          </select>
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
  document.getElementById("judul_album").value = "";		// harus sesuai dengan id di form nya
  document.getElementById("foto").value = "";
  document.getElementById("narasi_album").value = "";
  ocument.getElementById("grup").value = "";

}

/* NOTE 
jadi kalo mo ngedit tombol reset
1. atur di botton riset
2. bikin fungsi tombolnya
3. type tombol resetnta ganti ke button. 
*/

</script>
