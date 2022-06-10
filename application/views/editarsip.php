<!-- class="badge bg-primary text-wrap" -->
<div class="content-wrapper" > 
	<section class="content-header" >	<!-- kalo "content" kemaren ancur --> 
    <h1>
      Data Arsip
      <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">Data Arsip Publikasi</li>
    </ol>
  </section>

  <section class="content">
	<?php foreach($arsip as $arsp) 	{	 ?> <!-- $arsip nanti bakal diganti jadi $data di controller -->
		<?php echo form_open_multipart('arsip_tekstual/update');?>
		<!--  inputan -->   
			<div class="form-group">
				<label>Judul Arsip</label>
				<input type="hidden" name="id" class="form-control" value="<?php echo $arsp->id_arsip_tekstual ?>">
				<input type="text" id="judul_arsip" name="judul_arsip" class="form-control" value="<?php echo $arsp->isi_informasi ?>">	<!-- name harus sama dengan panah di value -->
			</div>

			<div class="form-group">
				<label>Tanggal Publikasi Arsip</label>			
				<input type="date" id="tanggal" name="tanggal" class="form-control" value="<?php echo $arsp->tanggal ?>">	
			</div>

			<div class="form-group">
				<label>Unit Kerja</label>				
				<input type="text" id="unit_kerja" name="unit_kerja" class="form-control" value="<?php echo $arsp->unit_kerja ?>">				
			</div>

			<div class="form-group">
				<label>File Arsip</label>				
				<input type="file" id="file_url" name="file_url" accept="application/pdf" class="form-control">	
			</div>

			<div class="form-group">			
			<input type="text" readonly name="namafile" class="form-control" value="<?php echo $arsp->file_url ?>" required>	
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
  document.getElementById("id_arsip_tekstual").value = "";		// harus sesuai dengan id di form nya
  document.getElementById("unit_kerja").value = "";
  document.getElementById("kode_klasifikasi").value = "";
  document.getElementById("tanggal").value = "";
  document.getElementById("isi_informasi").value = "";
  document.getElementById("masalah").value = "";
  document.getElementById("retensi_aktif").value = "";
  document.getElementById("retensi_inaktif").value = "";
  document.getElementById("file_url").value = "";
  

}

/* NOTE 
jadi kalo mo ngedit tombol reset
1. atur di botton riset onklik="nama funsi"
2. bikin fungsi tombolnya eg resetteks()
3. ganti type tombol reset ke button. 
4. terus nggantinya mulai dari input type="teks" di username. 
*/

</script>

