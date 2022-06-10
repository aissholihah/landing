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
	<?php foreach($administrator as $admn) 	{	 ?>
		<form action="<?php echo base_url().'administrator/update'; ?>"
		method="POST">
		<!--  inputan -->   
			<div class="form-group">
				<label>Username Admin</label>
				<input type="hidden" name="id" class="form-control" value="<?php echo $admn->id ?>" required>
				<input type="text" id="username_administrator" name="username_administrator" class="form-control" value="<?php echo $admn->username_administrator ?>" required>	
			</div>

			<!-- <div class="form-group">
				<label>Password</label>			
				<input type="password" id="password_administrator" name="password_administrator" class="form-control" value="<?php echo $admn->password_administrator ?>" required>	
			</div> -->

			<div class="form-group">
				<label>Email</label>				
				<input type="email" id="email_administrator" name="email_administrator" class="form-control" value="<?php echo $admn->email_administrator ?>" required>				
			</div>

			<button type="button" onclick="resetteks()" class="btn btn-danger">Reset</button>
			<button type="submit" class="btn btn-primary">Simpan</button>			
		</form>
		<?php  } ?>

</section>

<!-- end div --> 
</div> 
<script>
function resetteks() {
  document.getElementById("username_administrator").value = "";		// harus sesuai dengan id di form nya
  // document.getElementById("password_administrator").value = "";
  document.getElementById("email_administrator").value = "";

}

/* NOTE 
jadi kalo mo ngedit tombol reset
1. atur di botton riset
2. bikin fungsi tombolnya
3. type tombol resetnta ganti ke button. 
*/

</script>
