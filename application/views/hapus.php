<form method="post" id="form">
    <p>Yakin ingin menghapus mahasiswa <?php echo $hasil->id_arsip_tekstual;?> - <?php echo $hasil->unit_kerja;?> </p>
    <input type="hidden" name="id_arsip_tekstual" value="<?php echo $hasil->id_arsip_tekstual;?>">
    <button id="tombol_hapus" type="button" class="btn btn-danger" data-dismiss="modal" >Hapus</button>
</form>
<script type="text/javascript">
        $(document).ready(function(){
            $("#tombol_hapus").click(function(){
                var data = $('#form').serialize();
                $.ajax({
                    type	: 'POST',
                    url	: "<?php echo base_url(); ?>/arsip_teks/hapus",
                    data: data,

                    cache	: false,
                    success	: function(data){
                        $('#tampil').load("<?php echo base_url(); ?>/arsip_teks/tampil");
                      
                    }
                });
            });
        });
</script> 