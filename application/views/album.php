<!-- class="badge bg-primary text-wrap" -->
<div class="content-wrapper" > 
  <section class="content-header" >
    <h1>
      FOTO
      <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">Data Foto</li>
    </ol>
  </section>

  <section class="content">
   <button class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-plus"></i>Tambah Album</button>
   <!-- bikin search  -->
   <div class="navbar-form navbar-right">
     <?php echo form_open('album/search') ?>        <!-- (controller/method) -->
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
     <th>JUDUL ALBUM</th>
     <th>FOTO</th>
     <th>NARASI</th>
     <th>GRUP</th>
     <th>Tahun</th>
     <th colspan="2">AKSI</th>
   </tr>
   <?php
   $no=($this->uri->segment(2)=='search')? $this->uri->segment(4)+1 :$this->uri->segment(3)+1;  // harus sesuai dengan seturi di controller.
   foreach ($album as $albm ) :?>

    <tr>
     <td><?php echo $no++ ?></td>
     <td><?php echo $albm->judul_album ?></td>
     <td><img width="100 " src="<?php echo base_url(); ?>/assets/foto/<?php echo $albm->foto ?>"/></td>
     <td><?php echo $albm->narasi_album ?></td>
     <td><?php echo $albm->nama_grup_album ?></td>
     <td><?php echo $albm->tahun_grup_album ?></td>
     <td onclick="javascript: return confirm ('Anda Yakin Data Ini Akan Di Hapus?')"><?php echo anchor ('album/hapus/'.$albm->id_album,'<div class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></div>') ?></td>
     <td> <?php echo anchor ('album/edit/'.$albm->id_album,'<div class="btn btn-primary btn-sm"><i class="fa fa-edit"></i></div>')?></td>   

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
        <h4 class="modal-title" id="exampleModalLabel">Tambah Album</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <!-- karena upload foto maka pake form uupload multi_part(controller/fungsi tambah aksi) -->
        <?php echo form_open_multipart('album/tambah_aksi');?>

        
        <div class="form-group">
          <label>Judul Album</label>
          <input type="text" name="judul_album" class="form-control" required>
        </div>
        <div class="form-group">
          <label>Foto</label>
          <input type="file" name="foto" accept="image/*" class="form-control" required>
        </div>
        <div class="form-group">
          <label>Narasi</label>
          <input type="text" name="narasi_album" class="form-control" required>
        </div>
        <!-- <div class="form-group">
          <label>Tahun</label>
          <input type="text" name="tahun" class="form-control" required>
        </div> -->
        <div class="form-group">
          <label>Grup</label>
          <select class="form-select" aria-label="Default select example" name="grup">
            <?php
            /*$koneksi =mysqli_connect("localhost", "root", "", "sikepan")or die(mysql_error());
            $result = mysqli_query($koneksi,"SELECT * FROM tb_grup_album");
      //looping data
            while($row = mysqli_fetch_assoc($result)){
              echo "<option value='$row[id_grup_album]'>$row[nama_grup_album]</option>";
            } */
            ?>
            <?php foreach ($grupalbum as $galbum) :
              echo "<option value='".$galbum->id_grup_album."'>".$galbum->nama_grup_album."  ".$galbum->tahun_grup_album."</option>";
            
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

<!-- end div --> 
</div> 

