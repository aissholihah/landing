

<section class="content">
   <button class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-plus"></i>Tambah Arsip Tekstual</button>

           <!-- DIBAWAH ADALAH TABEL -->

                <!-- Begin Page Content -->
                <div class="container">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-white"><b>Arsip Tekstual</b></h1>
                    <p class="mb-4"> <a target="_blank"
                            href="https://datatables.net"><!-- official DataTables documentation --></a>.</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4 bg-white">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold "></h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="table" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Unit Kerja</th>
                                            <th>Tanggal </th>
                                            <th>Isi Informasi</th>
                                            <th>Masalah </th>
                                            <th>Retensi Aktif</th>
                                            <th>Retensi Inaktif</th>
                                            <th>File</th>
                                            
                                            <th>Action</th>
                                            <th>Edit</th>
                                            <th>Hapus</th>

                                            
                                            
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>No</th>
                                            <th>Unit Kerja</th>
                                            <th>Tanggal</th>
                                            <th>Isi Informasi</th>
                                            <th>Masalah </th>
                                            <th>Retensi Aktif</th>
                                            <th>Retensi Inaktif</th>
                                            <th>File</th>
                                            
                                            <th>Action</th>
                                            <th>Edit</th>
                                            <th>Hapus</th>
                                        </tr>
                                    </tfoot>
                                    
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->
 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <link href="<?= base_url();?>assets/x/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

<!-- Bootstrap core JavaScript-->
    <script src="<?= base_url();?>assets/jquery/jquery.min.js"></script>
    <script src="<?= base_url();?>assets/x/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="<?= base_url();?>assets/x/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
     <!-- <script src="<?= base_url();?>assets/x/js/sb-admin-2.min.js"></script> -->

    <!-- Page level plugins -->
    <script src="<?= base_url();?>assets/x/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="<?= base_url();?>assets/x/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="<?= base_url();?>assets/x/js/demo/datatables-demo.js"></script>


    <script type="text/javascript">

var table;

$(document).ready(function() {

    //datatables
    table = $('table').DataTable({ 

        "processing": true, //Feature control the processing indicator.
        "serverSide": true, //Feature control DataTables' server-side processing mode.
        "order": [], //Initial no order.

        // Load data for the table's content from an Ajax source
        "ajax": {
            "url": "<?php echo base_url('arsipTekstual/ajax_list')?>",
            "type": "POST"
        },

        //Set column definition initialisation properties.
        "columnDefs": [
        { 
            "targets": [ 0 ], //first column / numbering column
            "orderable": false, //set not orderable
        },
        ],

    });

});

</script>


