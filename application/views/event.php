<!-- class="badge bg-primary text-wrap" -->
<div class="content-wrapper" > 
	<section class="content-header" >
    <h1>
      Data event
      <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">Data event</li>
    </ol>
  </section>

  <section class="content">
   <button class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-plus"></i>Tambah Event</button>
   
   <!-- bikin search  -->
   <div class="navbar-form navbar-right">
     <?php echo form_open('event/search') ?>        <!-- (controller/method) -->
      <!-- input untuk pencarian data -->
      <input type="text" name="keyword" class="form-control" placeholder="search">     
      <button type="submit" class="btn btn-success">Cari</button>
     <?php echo form_close() ?>
   </div>

   <!-- bikin kontainer form modal-->
   <table class="table">
    <tr>
     <th>NO</th>
     <th>TANGGAL EVENT</th>
     <th>NAMA EVENT</th>
     <th>LOKASI</th>
     <th>WAKTU</th>
     <th colspan="2">AKSI</th>
   </tr>
   <?php
   $no=($this->uri->segment(2)=='search')? $this->uri->segment(4)+1 :$this->uri->segment(3)+1;
   foreach ($event as $eve ) :?>

    <tr>
     <td><?php echo $no++ ?></td>
     <td><?php echo $eve->tanggal_event ?></td>
     <td><?php echo $eve->nama_event ?></td>
     <td><?php echo $eve->lokasi ?></td>
     <td><?php echo $eve->waktu ?></td>
     <td onclick="javascript: return confirm ('Anda Yakin Data Ini Akan Di Hapus?')"><?php echo anchor ('event/hapus/'.$eve->id_event,'<div class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></div>') ?></td>
     <td><?php echo anchor ('event/edit/'.$eve->id_event,'<div class="btn btn-primary btn-sm"><i class="fa fa-edit"></i></div>')?></td>   
    
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
        <h4 class="modal-title" id="exampleModalLabel">Tambah Event</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="POST" action="<?php echo base_url(). 'event/tambah_aksi' ?>">
          <div class="form-group">
            <label>tanggal</label>
            <input type="date" name="tanggal_event" class="form-control" required>
          </div>
          <div class="form-group">
            <label>nama</label>
            <input type="text" name="nama_event" class="form-control" required>
          </div>
          <div class="form-group">
            <label>lokasi</label>
            <input type="text" name="lokasi" class="form-control" required>
          </div>
          <div class="form-group">
            <label>waktu</label>
            <input type="time" name="waktu" class="form-control" required>
          </div>
          <button type="reset" class="btn btn-danger" data-bs-dismiss="modal">Reset</button>
          <button type="submit" class="btn btn-primary">Save changes</button>
          
        </form>
      </div>
      <div class="modal-footer">
        
      </div>
    </div>
  </div>
</div>

<!-- end div --> 
</div> 

