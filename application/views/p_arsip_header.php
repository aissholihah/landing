<!DOCTYPE html>
<html>
     <head>
         <title><?= $title; ?></title>
     </head>
    <link rel="icon" type="image/uns.png" href="<?php echo base_url(); ?>/img/uns.png" >
     <!-- Custom fonts for this template -->
    <link href="<?= base_url();?>assets/x/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<?= base_url();?>assets/x/css/sb-admin-2.min.css" rel="stylesheet">
    <?php if(strpos(current_url(),'p_arsip_video')){ ?>
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>vidplay.css">
    <?php }?>
    <!-- Custom styles for this page -->
    <link href="<?= base_url();?>assets/x/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

    
    <?php if(strpos(current_url(),'p_arsip_foto')){ ?>
    <style>
    .card:hover{
     transform: scale(1.05);
  box-shadow: 0 10px 20px rgba(0,0,0,.12), 0 4px 8px rgba(0,0,0,.06);
}
  </style>
<?php } ?>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@splidejs/splide@3.1.6/dist/css/splide.min.css"/> 
    
     <body> 
          <!-- <h1>Login</h1>
          <form action="<?php echo site_url('login/proses'); ?>" method="POST">
              <label>username</label>
              <input type="text" name="username">
              <br>
              <br>
              <label>Password</label>
              <input type="password" name="password">
              <br>
              <br>
              <input type="submit" value="Login">
           </form> -->

           <!-- DIBAWAH ADALAH TOPBAR -->

                           <!-- Topbar -->
                <nav class="navbar navbar-expand  bg-gray-400 topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <form class="form-inline">
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>
                    </form>

                    <!-- Topbar Search -->
                    <div>
                         <a class="navbar-brand " href="<?php echo site_url('homepage'); ?> ">
                         <img src="<?php echo base_url(); ?>img/uns.png" alt="" width="50" height="" class="d-inline-block align-text-top"/>
                         <h1 class="h3 mb-4 text-primary"><b>UPT KEARSIPAN UNS</b></h1>
                         </a>
                    </div>
                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                         <ul class="navbar-nav ms-auto">
                            <li class="nav-item">
                                   <a class="nav-link active js-scroll-trigger" aria-current="page" href="<?php echo site_url('p_khasanah'); ?>">Khasanah</a>
                              </li>
                              <div class="topbar-divider d-none d-sm-block"></div>
                              <li class="nav-item">
                                   <a class="nav-link active js-scroll-trigger" aria-current="page" href="<?php echo site_url('p_arsip_foto'); ?>">Arsip Foto</a>
                              </li>
                              <div class="topbar-divider d-none d-sm-block"></div>
                              <li class="nav-item">
                                   <a class="nav-link active js-scroll-trigger" aria-current="page" href="<?php echo site_url('p_arsip_tekstual'); ?>">Arsip Tekstual</a>
                              </li>
                              <div class="topbar-divider d-none d-sm-block"></div>
                              <li class="nav-item">
                                   <a class="nav-link active js-scroll-trigger" aria-current="page" href="<?php echo site_url('p_arsip_kearsitekturan'); ?>">Arsip Kearsitekturan</a>
                              </li>
                              <div class="topbar-divider d-none d-sm-block"></div>
                              <li class="nav-item">
                                   <a class="nav-link active js-scroll-trigger" aria-current="page" href="<?php echo site_url('p_arsip_video'); ?>">Arsip Video</a>
                              </li>
                              <div class="topbar-divider d-none d-sm-block"></div>
                              <!-- <li class="nav-item">
                                  <img src="<?php echo base_url()?>img/profile.svg" class="img-circle" alt="User Image">
                              </li> -->
                              <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"><span class="mx-1"><img src="<?php echo $this->session->userdata('user_data')["fprofil"]; ?>" width="50px"class="rounded-circle" alt="User Image" referrerpolicy="no-referrer"></span><?php echo ucfirst($this->session->userdata('user_data')["username"]); ?></a>
                            

                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <!--<a class="dropdown-item" href="#">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Settings
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Activity Log
                                </a>
                                <div class="dropdown-divider"></div>-->
                                <a class="dropdown-item" href="<?php echo base_url('masuk/edit');?>" >
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Edit Profil
                                </a>


                                <a class="dropdown-item" href="<?php echo base_url('masuk/logout');?>" >
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Keluar
                                </a>

                                
                            </div>
                        </li>
                         </ul>
                    
                       
                       

                        

                    

                </nav>