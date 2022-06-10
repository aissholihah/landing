<script src="<?php echo base_url('assets/ckeditor/ckeditor.js'); ?>"></script>  <!-- koneksi ke ckeditor -->

<!-- class="badge bg-primary text-wrap" -->
<div class="content-wrapper" > 
  <section class="content-header" >
    <h1>
      PROFIL
      <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">Data Foto</li>
    </ol>
  </section>

  <section class="content">
   <button class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-plus"></i>Tambah Profil</button>
   <!-- bikin search  -->
   <div class="navbar-form navbar-right">
     <?php echo form_open('profil/search') ?>        <!-- (controller/method) -->
     <!-- input untuk pencarian data -->
     <input type="text" name="keyword" class="form-control" placeholder="search">


     <button type="submit" class="btn btn-success">Cari</button>




     <?php echo form_close() ?>
   </div>
   
   <!-- end search -->


   <!-- bikin kontainer form modal-->
   <table class="table">
    <tr>
     <th>NO</th>
     <th>NAMA</th>
     <th>JABATAN</th>
     <th>ATASAN</th>
     <th>FOTO</th>
     <th>EMAIL</th>
     <th>PROFIL</th>
     <th>TUGAS</th>
     <th colspan="2">AKSI</th>
   </tr>
   <?php
   $no=($this->uri->segment(2)=='search')? $this->uri->segment(4)+1 :$this->uri->segment(3)+1;
  
   foreach ($profil as $p ) :?>

    <tr>
     <td><?php echo $no++ ?></td>
     <td><?php echo $p->nama ?></td>
     
     <td><?php echo $p->jabatan ?></td>

     <td><?php echo $p->nama_atasan ?></td>
     <td><img width="100"  src="<?php echo base_url(); ?>/assets/profil/images/<?php echo $p->foto ?>"/></td>
     <td><?php echo $p->email ?></td>
     <td><?php echo word_limiter($p->profil, 15); ?></td>
     <td><?php echo word_limiter($p->tugas, 15); ?></td>

     <td onclick="javascript: return confirm ('Anda Yakin Data Ini Akan Di Hapus?')"><?php echo anchor ('profil/hapus/'.$p->id_profil,'<div class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></div>') ?></td>
     <td> <?php echo anchor ('profil/edit/'.$p->id_profil,'<div class="btn btn-primary btn-sm"><i class="fa fa-edit"></i></div>')?></td>  
     

   </tr>
 <?php endforeach ?>
</table>

<!-- nampilin pagination -->
<div class="row">
  <div class="col">
    <?php echo $pagination; ?>
    
  </div>  
</div> 
<!-- end pagination -->

</section>



<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="exampleModalLabel">Tambah Profil</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <?php echo form_open_multipart('profil/tambah_aksi');?>
          <!-- <div class="form-group">
            <label>Gambar Bagan</label>
            <input type="file" name="gambar" accept="image/*" class="form-control" required>
          </div> -->
          <div class="form-group">
            <label>Nama dan Gelar</label>
            <input type="text" name="nama" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Jabatan</label>
            <input type="text" name="jabatan" class="form-control">
          </div>
          <div class="form-group">
          <label>Atasan</label>
          <select class="form-select" aria-label="Default select example" name="id_atasan">
            <?php foreach ($profil as $ratasan) :
              echo "<option value='".$ratasan->id_profil."'>".$ratasan->nama." - ".$ratasan->jabatan."</option>";
            
            endforeach ?>
          </select>
        </div>
          <div class="form-group">
            <label>Email</label>
            <input type="email" name="email" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Kontak</label>
            <input type="text" name="kontak" class="form-control" required>
          </div>
          <div class="form-group">
          <label>Foto</label>
          <input type="file" name="foto" accept="image/*" class="form-control" required>
        </div>
          <div class="form-group">
            <label>Profil</label>
            <textarea name="profil" id="profil" name="profil" class="form-control" required> </textarea>
          </div>
          <div class="form-group">
            <label>Tugas</label>
            <textarea name="tugas" id="tugas" name="tugas" class="form-control" required> </textarea>
          </div>

          <!-- <div class="form-group">
            <label>URL Artikel</label>
            <input type="text" name="url_artikel" class="form-control" required>
          </div> -->
          
          <button type="reset" class="btn btn-danger" data-bs-dismiss="modal">Reset</button>
          <button type="submit" class="btn btn-primary">Save changes</button>
          
        <?php echo form_close(); ?>
      </div>
      <div class="modal-footer">

      </div>
    </div>
  </div>
</div>

 
</div> <!-- end content wrapper -->


<script>
 CKEDITOR.replace( 'tugas', {
    filebrowserBrowseUrl: '<?php echo base_url(); ?>assets/ckfinder/ckfinder.html',
    filebrowserUploadUrl: '<?php echo base_url(); ?>assets/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
    filebrowserWindowWidth: '1000',
    filebrowserWindowHeight: '700'
} );

 CKEDITOR.replace( 'profil', {
    filebrowserBrowseUrl: '<?php echo base_url(); ?>assets/ckfinder/ckfinder.html',
    filebrowserUploadUrl: '<?php echo base_url(); ?>assets/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
    filebrowserWindowWidth: '1000',
    filebrowserWindowHeight: '700'
} );
</script>

