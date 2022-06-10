<div class="content-wrapper" > 
  <section class="content-header" >
    <h1>
      Data Arsip Tekstual
      <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">Data Arsip Tekstual</li>
    </ol>
  </section>

  <section class="content">
   <button class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-plus"></i>Tambah Arsip Tekstual</button>

   <!-- bikin search  -->
  <!--  <div class="navbar-form navbar-right"> -->
     <!-- <?php echo form_open('arsip_tekstual/search') ?>  -->       <!-- (controller/method) -->
      <!-- input untuk pencarian data -->
      <!-- <input type="text" name="keyword" class="form-control" placeholder="search"> -->
      
      <!-- <button type="submit" class="btn btn-success">Cari</button> -->

     <!-- <?php echo form_close() ?> -->
   <!-- </div>--> 

   <!-- end bikin search -->



     <!-- bikin kontainer form modal-->
     <div class="table">
                                <table class="table table-bordered" id="table" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                             <th>NO</th>
                                             <th>Unit Kerja</th>
                                             <th>Kode Klasifikasi</th>
                                             <th>Tanggal</th>
                                             <th>Isi Informasi</th>
                                             <th>Masalah</th>
                                             <th>Retensi Aktif</th>
                                             <th>Retensi Inaktif</th>
                                             <th>File</th>
                                            <th>Hapus</th>
                                              
                                            <th>Edit</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>NO</th>
                                             <th>Unit Kerja</th>
                                             <th>Kode Klasifikasi</th>
                                             <th>Tanggal</th>
                                             <th>Isi Informasi</th>
                                             <th>Masalah</th>
                                             <th>Retensi Aktif</th>
                                             <th>Retensi Inaktif</th>
                                             <th>File</th>
                                            <th>Hapus</th>

                                            <th>Edit</th>
                                        </tr>
                                    </tfoot>
                                    
                                </table>
                            </div>

 <!-- nampilin pagination -->
<!-- end pagination -->
</section>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="exampleModalLabel">Tambah Arsip tekstual</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

        <?php echo form_open_multipart('arsip_tekstual/tambah');?>
          
          <div class="form-group">
            <label>Unit Kerja</label>
            <input type="text" name="unit_kerja" class="form-control" required> <!-- inget name di input = field di tabelnya -->
          </div>
          <div class="form-group">
            <label>Kode Klasifikasi</label>
            <input type="text" name="kode_klasifikasi" class="form-control" required>
          </div>

          <div class="form-group">
            <label>Tanggal</label>
            <input type="text" name="tanggal" class="form-control" required>
          </div>

          <div class="form-group">
            <label>Isi Informasi</label>
            <input type="text" name="isi_informasi" class="form-control" required>
          </div>

          <div class="form-group">
            <label>Masalah</label>
            <input type="text" name="masalah" class="form-control" required>
          </div>

          <div class="form-group">
            <label>Retensi Aktif</label>
            <input type="text" name="retensi_aktif" class="form-control" required>
          </div>

          <div class="form-group">
            <label>Retensi Inaktif</label>
            <input type="text" name="retensi_inaktif" class="form-control" required>
          </div>

          <div class="form-group">
            <label>File Arsip Tekstual</label>
            <input type="file" name="file_url" accept="application/pdf" class="form-control" required>
          </div>

          <div class="form-group">
            <input type="radio" id="wm" name="watermark" value="1" checked>
            <label for="wm">Watermark</label>
            <input type="radio" id="bukan_wm" name="watermark" value="0">
            <label for="bukan_wm">Tanpa Watermark</label><br>
        </div>

          <button type="reset" class="btn btn-danger" data-bs-dismiss="modal">Reset</button>
          <button type="submit" class="btn btn-primary">Save changes</button>

          <?php echo form_close(); ?>
        
      </div>
      <div class="modal-footer">
        
      </div>
    </div>
  </div>
</div>  

<!-- modal hapus -->
<?php //foreach ($arsip as $a) : ?>
    <div class="modal fade" id="modal-hapus"  role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">  
                    <h5 class="modal-title">Apakah Anda Yakin?</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-sm-12">
                            <a type="button" id="linkhapus" class="btn btn-primary" href="<?= base_url(); ?>arsip_tekstual/hapus/">Hapus</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php //endforeach; ?>
<!-- end modal hapus -->


<!-- Modal Edit -->
<?php //foreach ($arsip as $a) : ?>
    <div class="modal fade" id="modal-edit" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <?php echo validation_errors(); ?>
                    <?php echo form_open_multipart('arsip_tekstual/update'); ?>
                    <form id="formData">
                        <div class="row">
                            <input type="hidden" id="id_arsip_tekstual" name="id_arsip_tekstual" value="">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label class="floating-label" for="unit_kerja">Unit Kerja</label>
                                    <input type="text" class="form-control" id="unit_kerja" name="unit_kerja" value="" placeholder="">
                                    
                                <div class="form-group">
                                    <label class="floating-label" for="kode_klasifikasi">Kode Klasifikasi</label>
                                    <input type="text" class="form-control" id="kode_klasifikasi" name="kode_klasifikasi" value="" placeholder="">                                    
                                </div>
                                <div class="form-group">
                                    <label class="floating-label" for="tanggal">Tanggal</label>
                                    <input type="text" class="form-control" id="tanggal" name="tanggal" value="" placeholder="">                             
                                </div>
                                <div class="form-group">
                                    <label class="floating-label" for="isi_informasi">Isi Informasi</label>
                                    <input type="text" class="form-control" id="isi_informasi" name="isi_informasi" value="" placeholder="">                                    
                                </div>
                                <div class="form-group">
                                    <label class="floating-label" for="masalah">Masalah</label>
                                    <input type="text" class="form-control" id="masalah" name="masalah" value="" placeholder="">                                   
                                </div>
                                <div class="form-group">
                                    <label class="floating-label" for="retensi_aktif">Retensi Aktif</label>
                                    <input type="text" class="form-control" id="retensi_aktif" name="retensi_aktif" value="" placeholder="">                                   
                                </div>
                                <div class="form-group">
                                    <label class="floating-label" for="retensi_inaktif">Retensi Inaktif</label>
                                    <input type="text" class="form-control" id="retensi_inaktif" name="retensi_inaktif" value="" placeholder="">                                   
                                </div>
                                <div class="form-group">
                                    <label>Upload File Baru</label>       
                                    <input type="file" id="file_url" name="file_url" accept="application/pdf" class="form-control"> 
                                  </div>
                                <div class="form-group">
                                    <label class="floating-label" for="nama_file">File</label>
                                    <a href="" target="_blank" id="nama_file"></a>                                  
                                </div>
                            </div>
                       
                            
                            <div class="col-sm-12">
                                <button type="submit" class="btn btn-primary" id="btnSave">Submit</button>
                                <!--<a type="button" id="linkedit" class="btn btn-primary" href="<?= base_url(); ?>arsip_tekstual/update/">Edit</a>-->
                                <button type="reset" class="btn btn-danger">Clear</button>
                            </div>
                        </div>
                    </div>
                    </form>
                    <?php echo form_close() ?>
                </div>
            </div>
        </div>
    </div>
<?php //endforeach; ?>
<!-- End Modal edit-->



<!-- modal AIR -->
<?php //foreach ($arsip as $a) : ?>
    <div class="modal fade" id="modal-air"  role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">  
                    <h5 class="modal-title">Lihat Detail File</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-sm-12">
                            <a type="button" id="linkair" class="btn btn-primary" href="<?= base_url(); ?>arsip_tekstual/watermark/">lihat file</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php //endforeach; ?>
<!-- end modal AIR -->







</div>    <!-- end div content-wrapper -->
<script src="<?= base_url();?>assets/x/vendor/jquery/jquery.min.js"></script>

    <!-- Core plugin JavaScript-->

    <!-- Custom scripts for all pages-->
<script src="<?= base_url();?>assets/x/vendor/datatables/jquery.dataTables.min.js"></script>
<script src="<?= base_url();?>assets/x/vendor/datatables/dataTables.bootstrap4.min.js"></script>

        <script type="text/javascript">

function hapusrow(id){
    //alert(id);
    $("#modal-hapus").modal();
    document.getElementById('linkhapus').href= "<?php echo base_url('arsip_tekstual/hapus/'); ?>"+id;
}
function linkfile(id){
    //alert(id);
    $("#modal-air").modal();
    document.getElementById('id').href= "<?php echo base_url('arsip_tekstual/watermark/'); ?>"+id;
    document.getElementById('nama_file').href = "<?php echo base_url('assets/arsip/'); ?>" + document.getElementById(id).parentNode.parentNode.childNodes[8].innerHTML;
}
function editrow(id){
    //alert(id);
    $("#modal-edit").modal();
    
    //document.getElementById('linkedit').href= document.getElementById('linkedit').href+id;
    document.getElementById('id_arsip_tekstual').value=id;
    document.getElementById('unit_kerja').value = document.getElementById(id).parentNode.parentNode.childNodes[1].innerHTML;
    document.getElementById('kode_klasifikasi').value = document.getElementById(id).parentNode.parentNode.childNodes[2].innerHTML;
    document.getElementById('tanggal').value = document.getElementById(id).parentNode.parentNode.childNodes[3].innerHTML;
    document.getElementById('isi_informasi').value = document.getElementById(id).parentNode.parentNode.childNodes[4].innerHTML;
    document.getElementById('masalah').value = document.getElementById(id).parentNode.parentNode.childNodes[5].innerHTML;
    
    document.getElementById('retensi_aktif').value = document.getElementById(id).parentNode.parentNode.childNodes[6].innerHTML;
    document.getElementById('retensi_inaktif').value = document.getElementById(id).parentNode.parentNode.childNodes[7].innerHTML;
    document.getElementById('nama_file').href = "<?php echo base_url('assets/arsip/'); ?>" + document.getElementById(id).parentNode.parentNode.childNodes[8].innerHTML;
    document.getElementById('nama_file').innerHTML = document.getElementById(id).parentNode.parentNode.childNodes[8].innerHTML;
    //document.getElementById('file_url').value = document.getElementById(id).parentNode.parentNode.childNodes[9].innerHTML;
    //document.getElementById('linkedit').href= document.getElementById('linkedit').href+id;

}
var table;

$(document).ready(function() {

    //datatables
    table = $('table').DataTable({ 

        "processing": true, //Feature control the processing indicator.
        "serverSide": true, //Feature control DataTables' server-side processing mode.
        "order": [], //Initial no order.

        // Load data for the table's content from an Ajax source
        "ajax": {
            "url": "<?php echo base_url('arsip_tekstual/ajax_list')?>",
            "rowId": 'id_arsip_tekstual',
            "type": "POST"
        },

        //Set column definition initialisation properties.
        "columnDefs": [
        { 
            "targets": [ 0 ], //first column / numbering column
            "orderable": true, //set not orderable
        },
        ],

    });

});





</script>