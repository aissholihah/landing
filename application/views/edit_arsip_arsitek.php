<!-- class="badge bg-primary text-wrap" -->
<div class="content-wrapper" > 
<section class="content-header" >
    <h1>
      Data Arsip Kearsitekturan 
      <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">Data Album</li>
    </ol>
  </section> -->

  <section class="content">
	<?php foreach($arsip as $arsp) 	{	 ?>
		<?php echo form_open_multipart('arsip_arsitek/update');?>
		<!--  inputan --> 
		


			<div class="form-group">
				<label>Nama Bangunan</label>
				<input type="hidden" name="idp" class="form-control" value="<?php echo $arsp->idp ?>">
				<input type="text" id="nama_bangunan" name="nama_bangunan" class="form-control" value="<?php echo $arsp->nama_bangunan ?> " required>	<!-- name harus sama dengan panah di value -->
			</div>

			<div class="form-group">
				<label>Unit Kerja</label>			
				<input type="text" id="unit_kerja" name="unit_kerja" class="form-control" value="<?php echo $arsp->unit_kerja ?>" required>	
			</div>

			<div class="form-group">
				<label>Pencipta Kode Instansi</label>				
				<input type="text" id="pencipta_kode_instansi" name="pencipta_kode_instansi" class="form-control" value="<?php echo $arsp->pencipta_kode_instansi ?>" required>				
			</div>

			<div class="form-group">
				<label>No Kerja</label>				
				<input type="text" id="no_kerja" name="no_kerja" class="form-control" value="<?php echo $arsp->no_kerja ?>" required>				
			</div>

			<div class="form-group">
				<label>Arsitek Perusahaan</label>				
				<input type="text" id="arsitek_perusahaan" name="arsitek_perusahaan" class="form-control" value="<?php echo $arsp->arsitek_perusahaan ?>" required>				
			</div>

			<div class="form-group">
				<label>Tanggal</label>				
				<input type="text" id="tanggal" name="tanggal" class="form-control" value="<?php echo $arsp->tanggal ?>" required>				
			</div>

			<div class="form-group">
				<label>Lokasi</label>				
				<input type="text" id="lokasi" name="lokasi" class="form-control" value="<?php echo $arsp->lokasi ?>" required>				
			</div>

			<!-- <div class="form-group">
				<label>Nama Bangunan</label>				
				<input type="text" id="nama_bangunan" name="nama_bangunan" class="form-control" value="<?php echo $arsp->nama_bangunan ?>" required>				
			</div> -->

			<div class="form-group">
				<label>Tipe Bangunan</label>				
				<input type="text" id="tipe_bangunan" name="tipe_bangunan" class="form-control" value="<?php echo $arsp->tipe_bangunan ?>" required>				
			</div>

			<div class="form-group">
				<label>Keterangan</label>				
				<input type="text" id="keterangan" name="keterangan" class="form-control" value="<?php echo $arsp->keterangan ?>" required>				
			</div>

			<div class="form-group">
				<label>Skala</label>				
				<input type="text" id="skala" name="skala" class="form-control" value="<?php echo $arsp->skala ?>" required>				
			</div>

			<div class="form-group">
				<label>Satuan</label>				
				<input type="text" id="satuan" name="satuan" class="form-control" value="<?php echo $arsp->satuan ?>" required>				
			</div>

			<div class="form-group">
				<label>Tingkat Perkembangan</label>				
				<input type="text" id="tingkat_perkembangan" name="tingkat_perkembangan" class="form-control" value="<?php echo $arsp->tingkat_perkembangan ?>" required>				
			</div>

			<div class="form-group">
				<label>Kondisi</label>				
				<input type="text" id="kondisi" name="kondisi" class="form-control" value="<?php echo $arsp->kondisi ?>" required>				
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
  // document.getElementById("idp").value = "";		// harus sesuai dengan id di form nya
  document.getElementById("unit_kerja").value = "";
  document.getElementById("pencipta_kode_instansi").value = "";
  document.getElementById("no_kerja").value = "";
  document.getElementById("arsitek_perusahaan").value = "";
  document.getElementById("tanggal").value = "";
  document.getElementById("lokasi").value = "";
  document.getElementById("nama_bangunan").value = "";
  document.getElementById("tipe_bangunan").value = "";
  document.getElementById("keterangan").value = "";
  document.getElementById("skala").value = "";
  document.getElementById("satuan").value = "";
  document.getElementById("tingkat_perkembangan").value = "";
  document.getElementById("kondisi").value = "";

}

/* NOTE 
jadi kalo mo ngedit tombol reset
1. atur di botton riset
2. bikin fungsi tombolnya
3. type tombol resetnta ganti ke button. 
*/

</script>
