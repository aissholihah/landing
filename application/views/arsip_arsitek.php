<div class="content-wrapper" > 
	<section class="content-header" >
    <h1>
      Data Arsip Kearsitekturan
      <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">Data Arsip kearsitekturan</li>
    </ol>
  </section>

  <section class="content">
   <button class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-plus"></i>Tambah Arsip kearsitekturan</button>

   <!-- bikin search  -->
   <div class="navbar-form navbar-right">
     <?php echo form_open('arsip_arsitek/search') ?>        <!-- (controller/method) -->
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
       <th>Unit Kerja</th>
       <!-- <th>Pencipta Kode Instansi</th>
       <th>No Kerja</th>
       <th>Arsitek Perusahaan</th> -->
       <th>Tanggal</th>
       <th>Lokasi</th>
       <th>Nama Bangunan</th>
       <th>Tipe Bangunan</th>
       <th>Keterangan</th>
       <th>Skala</th>
       <th>Satuan</th>
       <th>Tingkat Perkembangan</th>
       <th>Kondisi</th>
       <th colspan="2">AKSI</th>
     </tr>
     <?php
     $no=($this->uri->segment(2)=='search')? $this->uri->segment(4)+1 :$this->uri->segment(3)+1;

     foreach ($arsip as $arsp) :?>

      <tr>
        <td><?php echo $no++ ?></td>
        <td><?php echo $arsp->unit_kerja         ?> </td> 
        <td><?php echo $arsp->tanggal ?>   </td>
        <td><?php echo $arsp->lokasi           ?></td>
        <td><?php echo $arsp->nama_bangunan     ?></td>   
        <td><?php echo $arsp->tipe_bangunan          ?></td>
        <td><?php echo $arsp->keterangan           ?></td>
         <td><?php echo $arsp->skala        ?></td>
        <td><?php echo $arsp->satuan        ?></td>
        <td><?php echo $arsp->tingkat_perkembangan         ?></td>
        <td><?php echo $arsp->kondisi            ?></td>
        

        <td onclick="javascript: return confirm ('Anda Yakin Data Ini Akan Di Hapus?')"><?php echo anchor ('arsip_arsitek/hapus/'.$arsp->idp,'<div class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></div>') ?> </td>
       
        <td> <?php echo anchor ('arsip_arsitek/edit/'.$arsp->idp,'<div class="btn btn-primary btn-sm"><i class="fa fa-edit"></i></div>')?></td>   
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
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

        <?php echo form_open_multipart('arsip_arsitek/tambah_aksi');?>
          

          <div class="form-group">
            <label>Unit Kerja</label>
            <input type="text" name="unit_kerja" class="form-control" required> <!-- inget name di input = field di tabelnya -->
          </div>
          <div class="form-group">
            <label>Pencipta Kode Instansi</label>
            <input type="text" name="pencipta_kode_instansi" class="form-control" required>
          </div>

          <div class="form-group">
            <label>No Kerja</label>
            <input type="text" name="no_kerja" class="form-control" required>
          </div>

          <div class="form-group">
            <label>Arsitek Perusahaan</label>
            <input type="text" name="arsitek_perusahaan" class="form-control" required>
          </div>

          <div class="form-group">
            <label>Tanggal</label>
            <input type="text" name="tanggal" class="form-control" required>
          </div>

          <div class="form-group">
            <label>Lokasi</label>
            <input type="text" name="lokasi" class="form-control" required>
          </div>

          <div class="form-group">
            <label>Nama Bangunan</label>
            <input type="text" name="nama_bangunan" class="form-control" required>
          </div>

          <div class="form-group">
            <label>Tipe Bangunan</label>
            <input type="text" name="tipe_bangunan" class="form-control" required>
          </div>

          <div class="form-group">
            <label>Keterangan</label>
            <input type="text" name="keterangan" class="form-control" required>
          </div>

          <div class="form-group">
            <label>Skala</label>
            <input type="text" name="skala" class="form-control" required>
          </div>

          <div class="form-group">
            <label>Satuan</label>
            <input type="text" name="satuan" class="form-control" required>
          </div>

          <div class="form-group">
            <label>Tingkat Perkembangan</label>
            <input type="text" name="tingkat_perkembangan" class="form-control" required>
          </div>

          <div class="form-group">
            <label>Kondisi</label>
            <input type="text" name="kondisi" class="form-control" required>
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