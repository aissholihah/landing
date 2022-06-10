
<script src="<?php echo base_url('assets/ckeditor/ckeditor.js'); ?>"></script>  <!-- koneksi ke ckeditor -->

<div class="content-wrapper" > 
	<section class="content-header" >
    <h1>
      Data Artikel
      <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">Data Artikel</li>
    </ol>
  </section>

  <section class="content">
   <a class="btn btn-primary" href="<?php echo base_url('artikel/baru'); ?>"><i class="fa fa-plus"></i>Tambah Artikel</a>

   <!-- bikin search  -->
   <div class="navbar-form navbar-right">
     <?php echo form_open('artikel/search') ?>        <!-- (controller/method) -->
     <!-- input untuk pencarian data -->
     <input type="text" name="keyword" class="form-control" placeholder="search">


     <button type="submit" class="btn btn-success">Cari</button>




     <?php echo form_close() ?>
   </div>




   <!-- bikin kontainer form modal-->
   <table class="table">
    <tr>
     <th>NO</th>
     <th>GAMBAR</th>
     <th>JENIS ARTIKEL</th>
     <th>TANGGAL PUBLIKASI ARTIKEL</th>
     <th>JUDUL ARTIKEL</th>
     <th>AUTHOR</th>
     <th>ISI</th>
     <!-- <th>URL</th> -->
     <th colspan="2">AKSI</th>
   </tr>
   <?php
   $no=($this->uri->segment(2)=='search')? $this->uri->segment(4)+1 :$this->uri->segment(3)+1;
   foreach ($artikel as $artkl ) :?>

    <tr>
     <td><?php echo $no++ ?></td>
     <td><img width="100 " src="<?php echo base_url(); ?>/assets/gambar_artikel/<?php echo $artkl->gambar ?>"/></td>
     <!-- <td><?php echo $artkl->gambar ?></td> -->
     <td><?php echo $artkl->jenis_artikel ?></td>
     <td><?php echo $artkl->tgl_publikasi_artikel ?></td>
     <td><?php echo $artkl->judul_artikel ?></td>
     <td><?php echo $artkl->author ?></td>
     <td><?php echo word_limiter($artkl->isi, 15); ?></td>
     <!--  <td><?php echo $artkl->url_artikel ?></td> -->
     <td onclick="javascript:return confirm ('Anda Yakin Data Ini Akan Di Hapus?')"><?php echo anchor ('artikel/hapus/'.$artkl->id_artikel,'<div class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></div>') ?></td>
     <td><?php echo anchor('artikel/edit/'.$artkl->id_artikel,'<div class="btn btn-primary btn-sm"><i class="fa fa-edit"></i></div>')?></td>     
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

<!-- MODAL -->
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="exampleModalLabel">Tambah Artikel</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <?php echo form_open_multipart('artikel/tambah_aksi');?>
          <div class="form-group">
            <label>Gambar</label>
            <input type="file" name="gambar" accept="image/*" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Jenis Artikel</label>
            <input type="text" name="jenis_artikel" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Tanggal Publikasi</label>
            <input type="date" name="tgl_publikasi_artikel" class="form-control">
          </div>
          <div class="form-group">
            <label>Judul Artikel</label>
            <input type="text" name="judul_artikel" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Penulis</label>
            <input type="text" name="author" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Isi</label>
            <textarea name="isi" id="isi" name="isi" class="form-control" required> </textarea>
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




</div>  <!-- end div -->
<script>
 CKEDITOR.replace( 'isi', {
    filebrowserBrowseUrl: '<?php echo base_url(); ?>assets/ckfinder/ckfinder.html',
    filebrowserUploadUrl: '<?php echo base_url(); ?>assets/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
    filebrowserWindowWidth: '1000',
    filebrowserWindowHeight: '700'
} );
</script>


