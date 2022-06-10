<!-- class="badge bg-primary text-wrap" -->
<div class="content-wrapper" > 
	<section class="content-header" >
    <h1>
      Data regulasi
      <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">Data regulasi</li>
    </ol>
  </section>

  <section class="content">
   <button class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-plus"></i>Tambah regulasi</button>
   <!-- bikin search  -->
   <div class="navbar-form navbar-right">
     <?php echo form_open('regulasi/search') ?>        <!-- (controller/method) -->
      <!-- input untuk pencarian data -->
      <input type="text" name="keyword" class="form-control" placeholder="search">     
      <button type="submit" class="btn btn-success">Cari</button>
     <?php echo form_close() ?>
   </div>
   <!-- end searh -->


   <!-- bikin kontainer form modal-->
   <table class="table">
    <tr>
     <th>NO</th>
     <th>JUDUL REGULASI</th>
     <!-- <th>PASSWORD</th> -->
     <th>FILE REGULASI</th>
   </tr>
   <?php
   $no=($this->uri->segment(2)=='search')? $this->uri->segment(4)+1 :$this->uri->segment(3)+1;
   foreach ($regulasi as $rgl ) :?>

    <tr>
     <td><?php echo $no++ ?></td>
     <td><?php echo $rgl->judul_regulasi ?></td>
     <!-- <td><?php echo $rgl->password_regulasi ?></td> -->
     <td><?php echo $rgl->file_regulasi ?></td>
     <td onclick="javascript: return confirm ('Anda Yakin Data Ini Akan Di Hapus?')"><?php echo anchor ('regulasi/hapus/'.$rgl->id_regulasi,'<div class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></div>') ?></td>
     <td> <?php echo anchor ('regulasi/edit/'.$rgl->id_regulasi,'<div class="btn btn-primary btn-sm"><i class="fa fa-edit"></i></div>')?></td>
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
        <h4 class="modal-title" id="exampleModalLabel">Tambah regulasi</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <?php echo form_open_multipart('regulasi/tambah_aksi'); ?>
          <div class="form-group">
            <label>Judul Regulasi</label>
            <input type="text" name="judul_regulasi" class="form-control" required>
          </div>
          
          <div class="form-group">
            <label>File Regulasi</label>
            <input type="file" name="file_regulasi" accept="application/pdf" class="form-control" required>
          </div>

          <button type="reset" class="btn btn-danger" data-bs-dismiss="modal">Reset</button>
          <button type="submit" class="btn btn-primary">Save changes</button>
          
        <?php echo form_close(); ?>
      </div>
      <div class="modal-footer">
        
      </div>
    </div>
  </div>
</div>

<!-- end div --> 
</div> 

