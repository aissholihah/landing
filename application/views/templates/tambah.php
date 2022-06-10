<form method="post" id="form">
    <div class="form-group">
        <label for="email">Unit Kerja:</label>
        <input type="text" class="form-control"  name="unit_kerja" placeholder="Masukan NIM">
    </div>
    <div class="form-group">
         <label for="email">Kode Klasifikasi</label>
        <input type="text" class="form-control"  name="kode_klasifikasi" placeholder="Masukan nama" >
    </div>
    <div class="form-group">
         <label for="email">Tanggal</label>
        <input type="text" class="form-control"  name="tanggal" placeholder="Masukan nama" >
    </div>
    <!-- <div class="form-group">
            <label>Jurusan:</label>
        <select class="form-control" name="jurusan">
            <option value="TI">Teknik Informatika</option>
            <option value="SI">Sistem Informasi</option>
            <option value="TK">Teknik Komputer</option>
            <option value="MI">Manajemen Informatika</option>
        </select>
    </div>
    <button id="tombol_tambah" type="button" class="btn btn-primary" data-dismiss="modal" >Tambah</button>
</form> -->
<script type="text/javascript">
        $(document).ready(function(){
            $("#tombol_tambah").click(function(){
                var data = $('#form').serialize();
                $.ajax({
                    type	: 'POST',
                    url	: "<?php echo base_url(); ?>/arsip_teks/simpan",
                    data: data,
                    cache	: false,
                    success	: function(data){
                        $('#tampil').load("<?php echo base_url(); ?>/arsip_teks/tampil");
                    }
                });
            });
        });
</script> 