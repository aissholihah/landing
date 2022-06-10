
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width , initial-scale=1.0">

	<title>TES SERVERSIDE</title>
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.2/css/dataTables.bootstrap4.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/select/1.3.3/css/select.bootstrap4.min.css">
</head>

<body>
	<div class="container mt-3">
        <h3>Arsip Tekstual </h3>
		<div class="card">
			<div class="card-body">
                <table class="table table-bordered" id="Mytable" width="100%" cellspacing="0">
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
	
    




    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script type="srchttps://cdn.datatables.net/1.11.2/js/jquery.dataTables.min.js"></script>
    <script type="https://cdn.datatables.net/1.11.2/js/dataTables.bootstrap4.min.js"></script>
   <!--  <script src="https://cdn.datatables.net/select/1.3.3/js/dataTables.select.min.js"></script> -->
    <script>
            $(document).ready(function() {
        $('#myTable').DataTable( {
            select: true
        } );
    } );
    </script>


</body>
</html>