<div class="content-wrapper" > 
	<section class="content-header" >
    <h1>
      Data Arsip Publikasi
      <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">Data Arsip Publikasi</li>
    </ol>
  </section>

  <section class="content">
   <button class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-plus"></i>Tambah Arsip Publikasi</button>

   <!-- bikin search  -->
   <div class="navbar-form navbar-right">
     <?php echo form_open('arsip_publikasi/search') ?>        <!-- (controller/method) -->
      <!-- input untuk pencarian data -->
      <input type="text" name="keyword" class="form-control" placeholder="search">
      
      <button type="submit" class="btn btn-success">Cari</button>

     <?php echo form_close() ?>
   </div>

   <!-- end bikin search -->



     <!-- bikin kontainer form modal-->
     <table class="table">
      <tr>
       <th>NO</th>
       <th>JUDUL ARSIP</th>
       <th>TANGGAL PUBLIKASI</th>
       <th>UNIT KERJA</th>
       <th>File Arsip</th>
       <th colspan="2">AKSI</th>
     </tr>
     <?php
     $no=($this->uri->segment(2)=='search')? $this->uri->segment(4)+1 :$this->uri->segment(3)+1;

     foreach ($arsip as $arsp) :?>

      <tr>
       <td><?php echo $no++ ?></td>
       <td><?php echo $arsp->judul_arsip ?></td>
       <td><?php echo $arsp->tgl_publikasi_arsip ?></td>
       <td><?php echo $arsp->unit_kerja ?></td>
       <td><?php echo $arsp->file_arsip ?></td>
       <td onclick="javascript: return confirm ('Anda Yakin Data Ini Akan Di Hapus?')"><?php echo anchor ('arsip_publikasi/hapus/'.$arsp->id,'<div class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></div>') ?> </td>
       
       <td> <?php echo anchor ('arsip_publikasi/edit/'.$arsp->id,'<div class="btn btn-primary btn-sm"><i class="fa fa-edit"></i></div>')?></td>   
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
        <h4 class="modal-title" id="exampleModalLabel">Tambah Arsip Publikasi</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">

        <?php echo form_open_multipart('arsip_publikasi/tambah_aksi');?>
          <div class="form-group">
            <label>Judul Arsip</label>
            <input type="text" name="judul_arsip" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Tanggal Publikasi</label>
            <input type="date" name="tgl_publikasi_arsip" class="form-control" required> <!-- inget name di input = field di tabelnya -->
          </div>
          <div class="form-group">
            <label>Unit Kerja</label>
            <input type="text" name="unit_kerja" class="form-control" required>
          </div>

          <div class="form-group">
            <label>File Arsip</label>
            <input type="file" name="file_arsip" accept="application/pdf" class="form-control" required>
          </div>

          <button type="reset" class="btn btn-danger" data-bs-dismiss="modal">Reset</button>
          <button type="submit" class="btn btn-primary">Save changes</button>

          <?php echo form_close(); ?>
          
        </form>
      </div>
      <div class="modal-footer">
        
      </div>
    </div>
  </div>
</div>


</div>    <!-- end div content-wrapper -->