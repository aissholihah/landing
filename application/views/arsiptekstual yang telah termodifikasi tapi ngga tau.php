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
   <button class="btn btn-primary mb-5" onclick="add()"><i class="fa fa-plus"></i>Tambah Arsip Tekstual</button>

   <!-- bikin search  -->
   <!-- <div class="navbar-form navbar-right"> -->
     <!-- <?php echo form_open('arsip_tekstual/search') ?> -->      <!-- (controller/method) -->
      <!-- input untuk pencarian data -->
      <!-- <input type="text" name="keyword" class="form-control" placeholder="search">
      
      <button type="submit" class="btn btn-success">Cari</button>

     <?php echo form_close() ?>
   </div>  -->

   <!-- end bikin search -->



     
                                <table class="table table-bordered mt-5" id="table" width="100%" cellspacing="0">
                                    <thead>
                                        <th>No</th>
                                            <th>Unit Kerja</th>
                                            <th>Kode Klasifikasi</th>
                                            <th>Tanggal </th>
                                            <th>Isi Informasi</th>
                                            <th>Masalah </th>
                                            <th>Retensi Aktif</th>
                                            <th>Retensi Inaktif</th>
                                            <th>File</th>
                                            
                                            <!-- <th>Action</th> -->
                                            <th>Edit</th>
                                            <th>Hapus</th>

                                            
                                            
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>No</th>
                                            <th>Unit Kerja</th>
                                            <th>Kode Klasifikasi</th>
                                            <th>Tanggal</th>
                                            <th>Isi Informasi</th>
                                            <th>Masalah </th>
                                            <th>Retensi Aktif</th>
                                            <th>Retensi Inaktif</th>
                                            <th>File</th>
                                            
                                            <!-- <th>Action</th> -->
                                            <th>Edit</th>
                                            <th>Hapus</th>
                                        </tr>
                                    </tfoot>
                                    
                                </table>
                            

 <!-- nampilin pagination -->
<!-- <div class="row">
  <div class="col">
    <?php echo $pagination; ?>
    
  </div>  
</div> -->
<!-- end pagination -->
</section>

<!-- Modal -->
<div class="modal fade" id="modalData" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="modalTitle">Tambah Arsip tekstual</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">

        <?php echo form_open_multipart('arsip_tekstual/tambah');?> 
         <form id="formData"> 
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

          <button type="reset" class="btn btn-danger" data-bs-dismiss="modal">Reset</button>
          <button type="submit" class="btn btn-primary" id="btnSave" onclick="">Save changes</button>

          <?php echo form_close(); ?>
          
        </form>
      </div>
      <div class="modal-footer">
        
      </div>


    </div>
  </div>
</div>   <!-- end modal add -->

<!-- Modal Hapus -->
<?php foreach ($arsip as $a) : ?>
    <div class="modal fade" id="modal-hapus<?= $a->id_arsip_tekstual; ?>" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Apakah Anda Yakin?</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="a">
                        <div class="col-sm-12">
                            <a type="button" class="btn btn-primary" href="<?= base_url(); ?>arsip_tekstual/hapus/<?= $a->id_arsip_tekstual; ?>">Lanjut</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php endforeach; ?>



</div>    <!-- end div content-wrapper -->


<!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script> -->
<!-- <script src="https://code.jquery.com/jquery-3.5.1.js"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script> -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>




<!-- <script src="https://code.jquery.com/jquery-3.5.1.js"></script> -->
<!-- <script src="https://cdn.datatables.net/1.11.2/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.11.2/js/dataTables.bootstrap4.min.js"></script> -->
<!-- <script src="https://cdn.datatables.net/select/1.3.3/js/dataTables.select.min.js"></script> -->

 -->

  <link href="<?= base_url();?>assets/x/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" -->> 


     <script src="<?= base_url();?>assets/x/vendor/jquery/jquery.min.js"></script>
    <script src="<?= base_url();?>assets/x/vendor/bootstrap/js/bootstrap.bundle.min.js"></script> 
 
    <!-- Core plugin JavaScript -->
    <script src="<?= base_url();?>assets/x/vendor/jquery-easing/jquery.easing.min.js"></script> 
 
   <!--   Custom scripts for all pages -->
     <script src="<?= base_url();?>assets/x/js/sb-admin-2.min.js"></script>  
   <!--  Page level plugins  -->
    <script src="<?= base_url();?>assets/x/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="<?= base_url();?>assets/x/vendor/datatables/dataTables.bootstrap4.min.js"></script> 

    Page level custom scripts 
    <script src="<?= base_url();?>assets/x/js/demo/datatables-demo.js"></script> 
 


<script type="text/javascript">

var table;
var modal =$('#modalData');   // biar modalnya ke pop up
var formData = $('#formData') ;  // biar pas ngeklik modal form nya kosong lagi (ngereset)
var modalTitle = $('#modalTitle');
var btnSave = $('#btnSave');
$(document).ready(function() {

    //datatables
    table = $('table').DataTable({ 

        "processing": true, //Feature control the processing indicator.
        "serverSide": true, //Feature control DataTables' server-side processing mode.
        "order": [], //Initial no order. tanda [] adalah array

        // Load data for the table's content from an Ajax source
        "ajax": {
            "url": "<?php echo base_url('arsip_tekstual/ajax_list')?>",
            "type": "POST"
        },

        //Set column definition initialisation properties.
        "columnDefs": [
        { 
            "targets": [ 0 ], //first column / numbering column
            "orderable": false, //set not orderable
        }]
        

    });

});

function add(){
  //formData[0].reset();
  modal.modal('show');
  modalTitle.text['Tambah Data'];

}

// function add() {
//         // alert('Oke');
//         formData[0].reset();

//         modal.modal('show');
//         modalTitle.text('Tambah Data Arsip Tekstual');
//     }

    function save() {
        btnSave.html('<i class="spinner-border spinner-border-sm" role="status"></i>');
        btnSave.attr('disabled'.true);
    }



function save(){
  btnSave.text('Mohon tunggu...');
  btnSave.attr('disabled',true);
  url ="<?php echo base_url('arsip_tekstual/tambah'); ?>"

  $.ajax({
    type : "POST",
    url : url,
    data : formData.serialize(),    //datanya pake formData yg di formtadi
    dataType :"JSON",
    success : function(response){

    }
  })

}





 //$(document).ready(function(){

//                 $('.tambah').click(function(){
//                 var aksi = 'Tambah Mahasiswa';
//                 $.ajax({
//                     url: '<?php echo base_url(); ?>/arsipTekstual/tambah',
//                     method: 'post',
//                     data: {aksi:aksi},
//                     success:function(data){
//                         $('#myModal').modal("show");
//                         $('#tampil_modal').html(data);
//                         document.getElementById("judul").innerHTML='Tambah Data';

//                     }
//                 });
//                 });

</script>


