<!-- class="badge bg-primary text-wrap" -->
<div class="content-wrapper" > 
	<section class="content-header" >
    <h1>
      Data Administrator
      <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">Data Administrator</li>
    </ol>
  </section>

  <section class="content">
   <button class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-plus"></i>Tambah Admin</button>
   
   <!-- bikin search  -->
   <div class="navbar-form navbar-right">
     <?php echo form_open('administrator/search') ?>        <!-- (controller/method) -->
      <!-- input untuk pencarian data -->
      <input type="text" name="keyword" class="form-control" placeholder="search">     
      <button type="submit" class="btn btn-success">Cari</button>
     <?php echo form_close() ?>
   </div>

   <!-- bikin kontainer form modal-->
   <table class="table">
    <tr>
     <th>NO</th>
     <th>USERNAME ADMIN</th>
     <!-- <th>PASSWORD</th> -->
     <th>EMAIL</th>
     <th colspan="2">AKSI</th>
   </tr>
   <?php
   
   $no=($this->uri->segment(2)=='search')? $this->uri->segment(4)+1 :$this->uri->segment(3)+1;
   foreach ($administrator as $admn ) :?>

    <tr>
     <td><?php echo $no++ ?></td>
     <td><?php echo $admn->username_administrator ?></td>
     <!-- <td><?php echo $admn->password_administrator ?></td> -->
     <td><?php echo $admn->email_administrator ?></td>
     <td onclick="javascript: return confirm ('Anda Yakin Data Ini Akan Di Hapus?')"><?php echo anchor ('administrator/hapus/'.$admn->id,'<div class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></div>') ?></td>
     <td> <?php echo anchor ('administrator/edit/'.$admn->id,'<div class="btn btn-primary btn-sm"><i class="fa fa-edit"></i></div>')?></td>   
    
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
        <h4 class="modal-title" id="exampleModalLabel">Tambah Admin</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="POST" action="<?php echo base_url(). 'administrator/tambah_aksi' ?>">
          <div class="form-group">
            <label>Username</label>
            <input type="text" name="username_administrator" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Password</label>
            <input type="password" name="password_administrator" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Email</label>
            <input type="email" name="email_administrator" class="form-control" required>
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

