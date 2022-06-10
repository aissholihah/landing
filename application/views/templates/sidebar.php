
<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
  <!-- sidebar: style can be found in sidebar.less -->
  <section class="sidebar">
    <!-- Sidebar user panel -->
    <div class="user-panel">
      <div class="pull-left image">
        
        <img src="<?php echo base_url()?>assets/animasi/profile.svg" class="img-circle" alt="User Image">
        <p class=""><?php echo ucfirst($this->session->userdata('username_administrator')); ?></p>
      </div>
      <div class="pull-left info">
        <p><?php echo ucfirst($this->session->userdata('username_administrator')); ?></p>
        
      </div>
    </div>
    <!-- search form -->
    <!-- <form action="#" method="get" class="sidebar-form">
      <div class="input-group">
        <input type="text" name="q" class="form-control" placeholder="Search...">
        <span class="input-group-btn">
          <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
          </button>
        </span>
      </div>
    </form> -->
    <!-- /.search form -->
    <!-- sidebar menu: : style can be found in sidebar.less -->
    <ul class="sidebar-menu">
      <li class="header">MAIN NAVIGATION</li>
      <li class=" treeview">
        <a href="<?php echo site_url('admin'); ?>">
          <i class="fa fa-dashboard"></i> <span>Dashboard</span>
        </a>
      </li>
       <li class="<?php $active = ($this->uri->segment(1)=='admin')? 'active' : ''; echo $active; ?> treeview">
        <a href="<?php echo site_url('user'); ?>">
          <i class="fa fa-users" aria-hidden="true"></i> <span>User</span>
        </a>
      </li>
      <li class="<?php $active = ($this->uri->segment(1)=='artikel')? 'active' : ''; echo $active; ?> treeview">
        <a href="<?php echo site_url('artikel'); ?>">
          <i class="fa fa-book"></i> <span>Artichels</span>
        </a>
      </li>
      <li class="<?php $active = ($this->uri->segment(1)=='album')? 'active' : ''; echo $active; ?> treeview">
        <a href="<?php echo site_url('album'); ?>">
          <i class="fa fa-camera-retro" aria-hidden="true"></i> <span>Album</span>
        </a>
        <li class="<?php $active = ($this->uri->segment(1)=='grup_album')? 'active' : ''; echo $active; ?> treeview">
          <a href="<?php echo site_url('grup_album'); ?>">
            <i class="fa fa-camera" aria-hidden="true"></i> <span>Grup Album</span>
          </a>
        </li>
      </li>
      <!-- <li class="<?php $active = ($this->uri->segment(1)=='arsip_publikasi')? 'active' : ''; echo $active; ?> treeview">
        <a href="<?php echo site_url('arsip_publikasi'); ?>">
          <i class="fa fa-folder-open"></i> <span>Arsip Publikasi</span>
        </a>
      </li> -->

      <li class="<?php $active = ($this->uri->segment(1)=='khasanah')? 'active' : ''; echo $active; ?> treeview">
        <a href="<?php echo site_url('khasanah'); ?>">
          <i class="fa fa-folder-open"></i> <span>Khasanah Arsip</span>
        </a>
      </li>

      <li class="<?php $active = ($this->uri->segment(1)=='arsip_tekstual')? 'active' : ''; echo $active; ?> treeview">
        <a href="<?php echo site_url('arsip_tekstual'); ?>">
          <i class="fa fa-folder-open"></i> <span>Arsip Tekstual</span>
        </a>
      </li>

      <li class="<?php $active = ($this->uri->segment(1)=='arsip_arsitek')? 'active' : ''; echo $active; ?> treeview">
        <a href="<?php echo site_url('arsip_arsitek'); ?>">
          <i class="fa fa-folder-open"></i> <span>Arsip Kearsitekturan</span>
        </a>
      </li>

      <li class="<?php $active = ($this->uri->segment(1)=='arsip_foto')? 'active' : ''; echo $active; ?> treeview">
        <a href="<?php echo site_url('arsip_foto'); ?>">
          <i class="fa fa-file-image-o"></i> <span>Arsip Foto</span>
        </a>
      </li>

      <li class="<?php $active = ($this->uri->segment(1)=='arsip_video')? 'active' : ''; echo $active; ?> treeview">
        <a href="<?php echo site_url('arsip_video'); ?>">
          <i class="fa fa-file-video-o" aria-hidden="true"></i> <span>Arsip Video</span>
        </a>
      </li>

      <li class="<?php $active = ($this->uri->segment(1)=='grup_arsip_video')? 'active' : ''; echo $active; ?> treeview">
        <a href="<?php echo site_url('grup_arsip_video'); ?>">
          <i class="fa fa-caret-square-o-right" aria-hidden="true"></i> <span>Grup Arsip Video</span>
        </a>
      </li>

      <li class="<?php $active = ($this->uri->segment(1)=='grup_arsip_foto')? 'active' : ''; echo $active; ?> treeview">
        <a href="<?php echo site_url('grup_arsip_foto'); ?>">
          <i class="fa fa-picture-o" aria-hidden="true"></i> <span>Grup Arsip Foto</span>
        </a>
      </li>

      <!-- <li class="<?php $active = ($this->uri->segment(1)=='regulasi')? 'active' : ''; echo $active; ?> treeview">
        <a href="<?php echo site_url('regulasi'); ?>">
          <i class="fa fa-file"></i> <span>Regulasi</span>
        </a>
      </li> -->

      <li class="<?php $active = ($this->uri->segment(1)=='event')? 'active' : ''; echo $active; ?> treeview">
        <a href="<?php echo site_url('event'); ?>">
          <i class="fa fa-calendar" aria-hidden="true"></i> <span>Event</span>
        </a>
      </li>

      <li class="<?php $active = ($this->uri->segment(1)=='profil')? 'active' : ''; echo $active; ?> treeview">
        <a href="<?php echo site_url('profil'); ?>">
          <<i class="fa fa-id-badge" aria-hidden="true"></i> <span>Profil</span>
        </a>
      </li>


      <li class="<?php $active = ($this->uri->segment(1)=='administrator')? 'active' : ''; echo $active; ?> treeview">
        <a href="<?php echo site_url('administrator'); ?>">
          <i class="fa fa-user" aria-hidden="true"></i> <span>Admin</span>
        </a>
      </li>
      <li class="<?php $active = ($this->uri->segment(1)=='login_admin')? 'active' : ''; echo $active; ?> treeview">
        <a href="<?php echo site_url('login_admin/logout');?>" >
          <i class="fa fa-sign-out"></i>
          <span>Logout</span>
        </a>        
      </li>
      <!-- end menu sidebar -->



    </ul>
  </section>
  <!-- /.sidebar -->
</aside>
