<!-- class="badge bg-primary text-wrap" -->
<div class="content-wrapper" > 
	<section class="content-header" >
      <h1>
        Data Pengguna
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Data Pengguna</li>
      </ol>
    </section>

    <section class="content">
    	<button class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-plus"></i>Tambah Data User</button>
    	<table class="table">
    		<tr>
    			<th>NO</th>
    			<th>USERNAME PENGGUNA</th>
    			<th>PASSWORD</th>
    			<th>EMAIL</th>
    		</tr>
    		<?php
    		$no=1;
    		foreach ($user as $usr ) :?>

    		<tr>
    			<td><?php echo $no++ ?></td>
    			<td><?php echo $usr->username_user ?></td>
    			<td><?php echo $usr->password_user ?></td>
    			<td><?php echo $usr->email_user ?></td>
    		</tr>
    	<?php endforeach ?>
    	</table>
    	
    </section>
    <!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Form Input Data User</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      	<!-- MAU BUAT FORM BUAT NGISI DATA -->
        <form action=vdfkjvlfdkgpkeragpker;'gke;r'></form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
<!-- end div -->
</div> 

 