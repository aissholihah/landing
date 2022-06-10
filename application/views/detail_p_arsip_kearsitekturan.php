<div class="container-fluid">
  <div class="alert alert-success" role="alert"></div>

<table class="table table hover table-bordered table-striped">
  <?php foreach ($detail as $dt) : ?>
    
  <tr>
    <td>Unit Kerja</td>
    <td><?= $dt['unit_kerja']; ?></td>
  </tr>
  <tr>
    <td>Pencipta Kode Instansi</td>
    <td><?= $dt['pencipta_kode_instansi']; ?></td>
  </tr>
  <tr>
    <td>No Kerja</td>
    <td><?= $dt['no_kerja']; ?></td>
  </tr>
  <tr>
    <td>Arsitek Perusahaan</td>
    <td><?= $dt['arsitek_perusahaan']; ?></td>
  </tr>
  <tr>
    <td>Tanggal</td>
    <td><?= $dt['tanggal']; ?></td>
  </tr>

  <tr>
    <td>Lokasi</td>
    <td><?= $dt['lokasi']; ?></td>
  </tr>
  <tr>
    <td>Nama Bangunan</td>
    <td><?= $dt['nama_bangunan']; ?></td>
  </tr>
  <tr>
    <td>Tipe Bangunan</td>
    <td><?= $dt['tipe_bangunan']; ?></td>
  </tr>
  <tr>
    <td>Keterangan</td>
    <td><?= $dt['keterangan']; ?></td>
  </tr>
  <tr>
    <td>Skala</td>
    <td><?= $dt['skala']; ?></td>
  </tr>
  <tr>
    <td>Satuan</td>
    <td><?= $dt['satuan']; ?></td>
  </tr>
  <tr>
    <td>Tingkat Perkembangan</td>
    <td><?= $dt['tingkat_perkembangan']; ?></td>
  </tr>

  <tr>
    <td>Kondisi</td>
    <td><?= $dt['kondisi']; ?></td>
  </tr>

<?php endforeach ; ?>
</table>


</div>
