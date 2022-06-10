<!-- class="badge bg-primary text-wrap" -->
<div class="content-wrapper" > 
  <section class="content-header" >
    <h1>
      ARSIP VIDEO
      <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">Data Arsip Video</li>
    </ol>
  </section>

  <section class="content">
   <button class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-plus"></i>Tambah Arsip Video</button>
   <!-- bikin search  -->
   <div class="navbar-form navbar-right">
     <?php echo form_open('arsip_video/search') ?>        <!-- (controller/method) -->
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
     <th>JUDUL</th>
     <!-- <th>VIDEO</th> -->
     <th>TAHUN</th>
     <th>NARASI</th>
     <th>GRUP</th>
     <th>DETAIL</th>
     <th colspan="2">AKSI</th>
   </tr>
   <?php
   $no=($this->uri->segment(2)=='search')? $this->uri->segment(4)+1 :$this->uri->segment(3)+1;  // harus sesuai dengan seturi di controller.
   foreach ($arsip_video as $albm ) :?>

    <tr>
     <td><?php echo $no++ ?></td>
     <td>
       <?php echo $albm->judul ?>
     </td>
     
     <td><?php echo $albm->tahun ?></td>
     <td><?php echo $albm->narasi ?></td>
     <td><?php echo $albm->nama_grup_arsip_video ?></td>
     <td><a data-toggle="modal" data-target="#video"><div onclick="document.getElementById('videosrc').src='<?php echo base_url(); ?>assets/arsip_video/<?php echo $albm->video ?>'; document.getElementById('videoplay').load()" style="text-decoration: none"><span style="color : red"><i class="fa fa-eye"></i></span></div></a></td>
     <td onclick="javascript: return confirm ('Anda Yakin Data Ini Akan Di Hapus?')"><?php echo anchor ('arsip_video/hapus/'.$albm->id_arsip_video,'<div class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></div>') ?></td>
     <td> <?php echo anchor ('arsip_video/edit/'.$albm->id_arsip_video,'<div class="btn btn-primary btn-sm"><i class="fa fa-edit"></i></div>')?></td>   

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
        <h4 class="modal-title" id="exampleModalLabel">Tambah Arsip video</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <!-- karena upload video maka pake form uupload multi_part(controller/fungsi tambah aksi) -->
        <?php echo form_open_multipart('arsip_video/tambah_aksi');?>

        
        <div class="form-group">
          <label>Judul</label>
          <input type="text" name="judul" class="form-control" required>
        </div>
        <div class="form-group">
          <label>Video</label>
          <!-- <input type="file" name="video" accept="image/*" class="form-control" required> -->
          <input type="file" name="video" accept="video/*" class="form-control" required>
        </div>
        <div class="form-group">
          <label>Narasi</label>
          <input type="text" name="narasi" class="form-control" required>
        </div>
        <div class="form-group">
          <label>Grup</label>
          <select class="form-select" aria-label="Default select example" name="grup">
           
            <?php foreach ($gruparsipvideo as $gavideo) :
              echo "<option value='".$gavideo->id_grup_arsip_video."'>".$gavideo->nama_grup_arsip_video." ".$gavideo->tahun."</option>";
            
            endforeach ?>
          </select>
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



<!-- VIDEO  -->
<div class="modal fade" id="video" tabindex="-1" aria-labelledby="video" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">Tambah Arsip Foto</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <video id="videoplay" width="480" height="360" style ="width: 100%;"controls>
        <source id="videosrc" src="" type="video/mp4">
        </video>
      </div>
      <div class="modal-footer">

      </div>
    </div>
  </div>
</div>


<!-- end div --> 
</div> 

