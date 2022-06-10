<!-- class="badge bg-primary text-wrap" -->
<div class="content-wrapper" > 
	<section class="content-header" >
    <h1>
      Data Arsip Foto
      <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">Data Album</li>
    </ol>
  </section>

  <section class="content">
	<?php foreach($arsip_foto as $albm) 	{	 ?>
		<?php echo form_open_multipart('arsip_foto/update');?>
		<!--  inputan -->   
			<div class="form-group">
				<label>Judul Arsip Foto</label>
				<input type="hidden" name="id_arsip_foto" class="form-control" value="<?php echo $albm->id_arsip_foto ?>" required>
				<!-- yg dibawah yg ditampilin -->
				<input type="text" id="judul" name="judul" class="form-control" value="<?php echo $albm->judul ?>" required>	
			</div>

			<div class="form-group">
				<label>Foto</label>			
				<input type="file" id="foto" name="foto" accept="image/*" class="form-control" value="<?php echo $albm->foto ?>" >	
				<!--  -->
			</div>
			<!-- biar gambar tampil di file edit. -->
			<div class="form-group">
			<img width="500 " src="<?php echo base_url(); ?>/assets/arsip_foto/<?php echo $albm->foto ?>"/>
			<input type="text" readonly name="namafoto" class="form-control" value="<?php echo $albm->foto ?>" required>	
			</div>

			<div class="form-group">
				<label>Narasi</label>				
				<input type="text" id="narasi" name="narasi" class="form-control" value="<?php echo $albm->narasi ?>" required>				
			</div>
			<div class="form-group">
          <label>Grup</label>
         <select class="form-select" aria-label="Default select example" name="grup">
          	<option value="0">-</option>
            <?php foreach ($gruparsipfoto as $ratasan) :
            	if($albm->grup==$ratasan->id_grup_arsip_foto){
            		$select=" selected ";
            	}else{
            		$select=" ";
            	}
              echo "<option value='".$ratasan->id_grup_arsip_foto."' ".$select.">".$ratasan->nama_grup_arsip_foto." ".$ratasan->tahun." </option>";
            
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
  document.getElementById("id_arsip_foto").value = "";		// harus sesuai dengan id di form nya
  document.getElementById("foto").value = "";
  document.getElementById("narasi").value = "";
  document.getElementById("grup").value = "";

}

/* NOTE 
jadi kalo mo ngedit tombol reset
1. atur di botton riset
2. bikin fungsi tombolnya
3. type tombol resetnta ganti ke button. 
*/

</script>
