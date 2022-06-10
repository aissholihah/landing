
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title><?= $title; ?></title>
    <link rel="icon" type="image/uns.png" href="<?php echo base_url(); ?>/img/uns.png" >

    <!-- Custom fonts for this template-->
    <link href="<?= base_url();?>assets/x/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<?= base_url();?>assets/x/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5 col-lg-7 mx-auto">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    
                    <div class="col-lg">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Buat Akun!</h1>
                            </div>
                            <?= $this->session->flashdata('message'); ?>
                            

                            <form class="user" method="POST" action="<?php echo base_url(). 'register/index' ?>">
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user" id=""
                                            placeholder="Username" name="username" value="<?php echo set_value('username');?>">
                                            
                                            <?php echo form_error('username','<small class="text-danger pl-3">','</small>'); ?>
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="password" class="form-control form-control-user" id=""
                                            placeholder="Password" name="password" >
                                            <?php echo form_error('password','<small class="text-danger pl-3">','</small>'); ?>
                                    </div>
                                </div> 
                                <div class="form-group">
                                    <input type="email" class="form-control form-control-user" id=""
                                        placeholder="Email" name="email" value="<?php echo set_value('email');?>" >
                                        <?php echo form_error('email','<small class="text-danger pl-3">','</small>'); ?>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" id=""
                                        placeholder="Nama lengkap" name="nama" value="<?php echo set_value('nama');?>" >
                                        <?php echo form_error('nama','<small class="text-danger pl-3">','</small>'); ?>
                                </div>
                                <div class="form-group">
                                    <input type="date" class="form-control form-control-user" id=""
                                        placeholder="Tanggal Lahir" name="tgl_lahir" value="<?php echo set_value('tgl_lahir');?>" >
                                        <?php echo form_error('tgl_lahir','<small class="text-danger pl-3">','</small>'); ?>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" id=""
                                        placeholder="Alamat" name="alamat" value="<?php echo set_value('alamat');?>" >
                                        <?php echo form_error('alamat','<small class="text-danger pl-3">','</small>'); ?>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" id=""
                                        placeholder="Pekerjaan" name="pekerjaan" value="<?php echo set_value('pekerjaan');?>" >
                                        <?php echo form_error('pekerjaan','<small class="text-danger pl-3">','</small>'); ?>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" id=""
                                        placeholder="Institusi" name="institusi" value="<?php echo set_value('institusi'); ?>"  >
                                        <?php echo form_error('institusi','<small class="text-danger pl-3">','</small>'); ?>
                                </div>
                                <!-- <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="password" class="form-control form-control-user"
                                            id="exampleInputPassword" placeholder="Password">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="password" class="form-control form-control-user"
                                            id="exampleRepeatPassword" placeholder="Repeat Password">
                                    </div>
                                </div> -->
                               <!--  <a href="login.html" class="">
                                    Registrasi
                                </a> -->
                                <button class="btn btn-primary btn-user btn-block" type="submit">Registrasi</button>
                                
                                <!-- <a href="index.html" class="btn btn-google btn-user btn-block">
                                    <i class="fab fa-google fa-fw"></i> Register with Google
                                </a>
                                <a href="index.html" class="btn btn-facebook btn-user btn-block">
                                    <i class="fab fa-facebook-f fa-fw"></i> Register with Facebook
                                </a> -->
                            </form>
                            
                           <!--  <div class="text-center">
                                <a class="small" href="forgot-password.html">Forgot Password?</a>
                            </div> -->
                            <div class="text-center">
                                <a class="small" href="<?php echo base_url('masuk'); ?>">Already have an account? Login!</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="<?= base_url();?>assets/x/vendor/jquery/jquery.min.js"></script>
    <script src="<?= base_url();?>assets/x/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="<?= base_url();?>assets/x/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="<?= base_url();?>assets/x/js/sb-admin-2.min.js"></script>

</body>

</html>