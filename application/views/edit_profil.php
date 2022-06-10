 

<!-- class="badge bg-primary text-wrap" -->
<div class="content-wrapper" > 
	<section class="content-header" >
    <h1>
      Data Profil
      <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">Data Profil</li>
    </ol>
  </section>

  <section class="content">
	<?php foreach($profil as $p) 	{	 ?>
		<?php echo form_open_multipart('profil/update');?>
		<!--  inputan -->   
			<div class="form-group">
				<label>Nama</label>
				<input type="hidden" id="nama" name="id_profil" class="form-control" value="<?php echo $p->id_profil ?>">
				<input type="text"  name="nama" class="form-control" value="<?php echo $p->nama ?>">	
			</div>

		
			<div class="form-group">
			<label>Foto</label>			
			<input type="file" id="foto" name="foto" accept="image/*" class="form-control" value="<?php echo $p->foto ?>" >					
			</div>
			<!-- biar gambar tampil di file edit. -->
			<div class="form-group">
			<img width="500 " src="<?php echo base_url(); ?>/assets/profil/images/<?php echo $p->foto ?>"/>
			<input type="text" readonly name="namafoto" class="form-control" value="<?php echo $p->foto ?>" required>	
			</div>

			<div class="form-group">
				<label>Jabatan</label>			
				<input type="text" id="jabatan" name="jabatan" class="form-control" value="<?php echo $p->jabatan ?>">	
			</div>

			<!-- <div class="form-group">
          <label>Atasan</label>
          <select class="form-select" aria-label="Default select example" name="id_atasan" id="id_atasan">
            <?php foreach ($profil as $ratasan) :
              echo "<option value='".$ratasan->id_profil."'>".$ratasan->nama." - ".$ratasan->jabatan."</option>";
            
            endforeach ?>
          </select>
     	</div> -->
     	<!--<div class="form-group">
          <label>Atasan</label>
     	<select class="form-select" >
            <?php
            $koneksi =mysqli_connect("localhost", "root", "", "sikepan")or die(mysql_error());
            $result = mysqli_query($koneksi,"SELECT * FROM tb_profil");
      //looping data
            while($row = mysqli_fetch_assoc($result)){
              echo "<option value='$row[id_profil]'>$row[nama]</option>";
            } 
            ?>
          </select>
        </div>-->
        <?php //var_dump($profil) ?>
        <div class="form-group">
          <label>Atasan</label>
          <select class="form-select" aria-label="Default select example" name="id_atasan">
          	<option value="0">-</option>
            <?php foreach ($allprofil as $ratasan) :
            	if($p->id_atasan==$ratasan->id_profil){
            		$select=" selected ";
            	}else{
            		$select=" ";
            	}
              echo "<option value='".$ratasan->id_profil."' ".$select.">".$ratasan->nama." - ".$ratasan->jabatan."</option>";
            
            endforeach ?>
          </select>
        </div>

			<div class="form-group">
				<label>Email</label>				
				<input type="text" id="email" name="email" class="form-control" value="<?php echo $p->email ?>">				
			</div>

			<div class="form-group">
				<label>Kontak</label>				
				<input type="text" id="kontak" name="kontak" class="form-control" value="<?php echo $p->kontak ?>">				
			</div>

			<!-- <div class="form-group">
				<label>Isi</label>				
				<textarea id="isi" name="isi" class="form-control" ><?php echo htmlspecialchars($p->isi); ?>	
				</textarea>		
			</div> -->

			<div class="form-group">
				<label>Profil</label>				
				<textarea id="profil" name="profil" class="form-control" ><?php echo htmlspecialchars($p->profil); ?>	
				</textarea>		
			</div>
			<div class="form-group">
				<label>Tugas</label>				
				<textarea id="tugas" name="tugas" class="form-control" ><?php echo htmlspecialchars($p->tugas); ?>	
				</textarea>		
			</div>
			

			<button type="button" onclick="resetteks()" class="btn btn-danger">Reset</button>
			<button type="submit" class="btn btn-primary">Simpan</button>			
		<?php echo form_close(); ?>
		<?php  } ?>

</section>

<!-- end div --> 
</div> 
<script src="<?php echo base_url('assets/ckeditor/ckeditor.js'); ?>"></script>
<script>
function resetteks() {
  document.getElementById("nama").value = "";		
  // harus sesuai dengan id di form nya
  document.getElementById("jabatan").value = "";
 // document.getElementById("id_atasan").value = "";
  document.getElementById("foto").value = "";
  document.getElementById("email").value = "";
  document.getElementById("kontak").value = "";
  document.getElementById("profil").value = "";
  document.getElementById("tugas").value = "";


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
 CKEDITOR.replace( 'profil', {
    filebrowserBrowseUrl: '<?php echo base_url(); ?>assets/ckfinder/ckfinder.html',
    filebrowserUploadUrl: '<?php echo base_url(); ?>assets/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
    filebrowserWindowWidth: '1000',
    filebrowserWindowHeight: '700'
} );
</script>

<script>
 CKEDITOR.replace( 'tugas', {
    filebrowserBrowseUrl: '<?php echo base_url(); ?>assets/ckfinder/ckfinder.html',
    filebrowserUploadUrl: '<?php echo base_url(); ?>assets/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
    filebrowserWindowWidth: '1000',
    filebrowserWindowHeight: '700'
} );
</script>
