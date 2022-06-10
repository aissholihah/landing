


           <!-- DIBAWAH ADALAH TABEL -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-primary"><b>Arsip Kearsitekturan</b></h1>
                    <p class="mb-4"><a target="_blank"
                            href="https://datatables.net"></a>.</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary"></h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="table" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Unit Kerja</th>
                                            <th>No Kerja</th>
                                            <th>Arsitek Perusahaan </th>
                                            <th>Tanggal</th>
                                            <th>Lokasi</th>
                                            <th>Nama Bangunan</th>
                                            <th>Kondisi</th>
                                            <th>Action</th>
                                            <!-- <th>Action</th> -->
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>No</th>
                                            <th>Unit Kerja</th>
                                            <th>No Kerja</th>
                                            <th>Arsitek Perusahaan </th>
                                            <th>Tanggal</th>
                                            <th>Lokasi</th>
                                            <th>Nama Bangunan</th>
                                            <th>Kondisi</th>
                                            <th>Action</th>
                                        </tr>
                                    </tfoot>
                                 
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

<!-- Bootstrap core JavaScript-->
    <script src="<?= base_url();?>assets/x/vendor/jquery/jquery.min.js"></script>
    <script src="<?= base_url();?>assets/x/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="<?= base_url();?>assets/x/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="<?= base_url();?>assets/x/js/sb-admin-2.min.js"></script>

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
            "url": "<?php echo base_url('p_arsip_kearsitekturan/ajax_list')?>",
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


      </body>
</html>