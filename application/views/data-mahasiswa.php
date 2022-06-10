<table class="table table-bordered">
    <thead>
        <tr>
            <th> No</th>
            <th>Unit Kerja</th>
            <th>Kode Klasifikasi</th>
            <th>Tanggal</th>
            <th colspan='2'>Aksi</th>
        </tr>
    </thead>
    <tbody>
        <?php
            $no=1;
            foreach ($hasil as $item)
            {
        ?>
        <tr>
            <td><?php echo $no;?></td>
            <td><?php echo $item->unit_kerja;?></td>
            <td><?php echo $item->kode_klasifikasi;?></td>
            <td><?php echo $item->tanggal;?></td>
            <td> <button type="button" id_arsip_tekstual="<?php echo $item->id_arsip_tekstual; ?>" class="edit btn btn-warning">Edit</button></td>
            <td> <button type="button" id_arsip_tekstual="<?php echo $item->id_arsip_tekstual; ?>" class="hapus btn btn-danger">Hapus</button></td>
        </tr>
        <?php
                $no++;
                }
                 ?>
    </tbody>
</table>
   <!-- Button to Open the Modal -->
   <button type="button" class="tambah btn btn-primary" data-toggle="modal" data-target="#myModal">
       Tambah
        </button>
        <!-- The Modal -->
        <div class="modal fade" id="myModal">
            <div class="modal-dialog">
                <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title" id="judul"></h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <!-- Modal body -->
                <div class="modal-body">
                    <div id="tampil_modal">
                        <!-- Data akan di tampilkan disini-->
                    </div>
                </div>
                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-light" data-dismiss="modal">Batal</button>
                </div>

                </div>
            </div>
        </div>

        <script>
            $(document).ready(function(){

                $('.tambah').click(function(){
                var aksi = 'Tambah Arsip';
                $.ajax({
                    url: '<?php echo base_url(); ?>/arsip_teks/tambah',
                    method: 'post',
                    data: {aksi:aksi},
                    success:function(data){
                        $('#myModal').modal("show");
                        $('#tampil_modal').html(data);
                        document.getElementById("judul").innerHTML='Tambah Data';

                    }
                });
                });

                $('.edit').click(function(){

                    var id_arsip_tekstual = $(this).attr("id_arsip_tekstual");
                    $.ajax({
                        url: '<?php echo base_url(); ?>/arsip_teks/edit',
                        method: 'post',
                        data: {id_arsip_tekstual:id_arsip_tekstual},
                        success:function(data){
                            $('#myModal').modal("show");
                            $('#tampil_modal').html(data);
                            document.getElementById("judul").innerHTML='Edit Data';  
                        }
                    });
                });

                $('.hapus').click(function(){

                    var id_arsip_tekstual = $(this).attr("id_arsip_tekstual");
                    $.ajax({
                        url: '<?php echo base_url(); ?>/arsip_teks/hapus',
                        method: 'post',
                        data: {id_arsip_tekstual:id_arsip_tekstual},
                        success:function(data){
                            $('#myModal').modal("show");
                            $('#tampil_modal').html(data);
                            document.getElementById("judul").innerHTML='Hapus Data';
                        }
                    });
                    });
            });
        </script>