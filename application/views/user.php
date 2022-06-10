<!-- class="badge bg-primary text-wrap" -->
<div class="content-wrapper" > 
	<section class="content-header" >
    <h1>
      Data user
      <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">Data user</li>
    </ol>
  </section>

  <section class="content">
   <!-- <button class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-plus"></i>Tambah User</button> -->
   <!-- bikin search  -->
   <div class="navbar-form navbar-right">
     <?php echo form_open('user/search') ?>        <!-- (controller/method) -->
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
     <th>USERNAME</th>
     <th>EMAIL</th>
     <th>NAMA</th>
     <!-- <th>TANGGAL LAHIR</th> -->
     <th colspan="2">AKSI</th>
     <!-- <th>ALAMAT</th> -->
     <!-- <th>PEKERJAAN</th> -->
     <!-- <th>INSTANSI</th> -->
   </tr>
   <?php
   $no=($this->uri->segment(2)=='search')? $this->uri->segment(4)+1 :$this->uri->segment(3)+1;
   foreach ($user as $usr ) :?>

    <tr>
     <td><?php echo $no++ ?></td>
     <td><?php echo $usr->username ?></td>
     <td><?php echo $usr->email ?></td>
     <td><?php echo $usr->nama ?></td>
     <!-- <td><?php echo $usr->tgl_lahir ?></td> -->
     <!-- <td><?php echo $usr->alamat ?></td> -->
     <!-- <td><?php echo $usr->pekerjaan ?></td> -->
     <!-- <td><?php echo $usr->institusi ?></td> -->

     <td onclick="javascript: return confirm ('Anda Yakin Data Ini Akan Di Hapus?')"><?php echo anchor ('user/hapus/'.$usr->id_user,'<div class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></div>') ?></td>
     <!-- <td> <?php echo anchor ('user/edit/'.$usr->id_user,'<div class="btn btn-primary btn-sm"><i class="fa fa-edit"></i></div>')?></td> -->
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
        <h4 class="modal-title" id="exampleModalLabel">Tambah User</h4>
       <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="POST" action="<?php echo base_url(). 'user/tambah_aksi' ?>">
          <div class="form-group">
            <label>Username</label>
            <input type="text" name="username" class="form-control" required>
          </div>
           <div class="form-group">
            <label>Email</label>
            <input type="email" name="email" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Nama</label>
            <input type="nama" name="nama" class="form-control" required>
          </div>
          
          <div class="form-group">
            <label>Tanggal Lahir</label>
            <input type="date" name="tgl_lahir" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Alamat</label>
            <input type="text" name="alamat" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Pekerjaan</label>
            <input type="text" name="pekerjaan" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Instansi</label>
            <input type="text" name="institusi" class="form-control" required>
          </div>
          <button type="reset" class="btn btn-danger" data-bs-dismiss="modal">Reset</button>
          <button type="submit" class="btn btn-primary">Tambah Data</button>
          
        </form>
      </div>
      <div class="modal-footer">
        
      </div>
    </div>
  </div>
</div>

<!-- end div --> 
</div> 

