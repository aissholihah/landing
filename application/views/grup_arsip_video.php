<!-- class="badge bg-primary text-wrap" -->
<div class="content-wrapper" > 
  <section class="content-header" >
    <h1>
      GRUP ARSIP VIDEO
      <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">Data Arsip Video</li>
    </ol>
  </section>

  <section class="content">
   <button class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-plus"></i>Tambah Grup Arsip Video</button>
   <!-- bikin search  -->
   <div class="navbar-form navbar-right">
     <?php echo form_open('grup_arsip_video/search') ?>        <!-- (controller/method) -->
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
     <th>NAMA GRUP ARSIP VIDEO</th>
     <th>TAHUN</th>
     <th>ID GRUP</th>
     <th colspan="2">AKSI</th>
   </tr>
   <?php
   $no=($this->uri->segment(2)=='search')? $this->uri->segment(4)+1 :$this->uri->segment(3)+1;  // harus sesuai dengan set uri di controller.
   foreach ($grup_arsip_video as $grp) :?>

    <tr>
     <td><?php echo $no++ ?></td>
     
     <td><?php echo $grp->nama_grup_arsip_video ?></td>
     <td><?php echo $grp->tahun ?></td>
     <td><?php echo $grp->id_grup_arsip_video ?></td>          
     <td onclick="javascript: return confirm ('Anda Yakin Data Ini Akan Di Hapus?')"><?php echo anchor ('grup_arsip_video/hapus/'.$grp->id_grup_arsip_video,'<div class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></div>') ?></td>
     <td> <?php echo anchor ('grup_arsip_video/edit/'.$grp->id_grup_arsip_video,'<div class="btn btn-primary btn-sm"><i class="fa fa-edit"></i></div>')?></td>    
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
        <h4 class="modal-title" id="exampleModalLabel">Tambah Grup Album</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <!-- karena upload foto maka pake form uupload multi_part(controller/fungsi tambah aksi) -->
        <?php echo form_open_multipart('grup_arsip_video/tambah_aksi');?>

        
          <div class="form-group">
            <label>Nama Grup Arsip Video</label>
            <input type="text" name="nama_grup_arsip_video" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Tahun</label>
            <input type="text" name="tahun" class="form-control" required>
          </div>
          <!-- </div>
          <div class="form-group">
            <label>Foto</label>
            <input type="file" name="foto" accept="image/*" class="form-control" required>
          </div>-->
          <button type="reset" class="btn btn-danger" data-bs-dismiss="modal">Reset</button>
          <button type="submit" class="btn btn-primary">Save changes</button>
          
        <?php echo form_close(); ?>
      
      <div class="modal-footer">
        
      </div>
    </div>
  </div>
</div>

<!-- end div --> 
</div> 

