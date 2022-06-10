
<div class="content-wrapper" > 
  <section class="content-header" >
    <h1>
      Data Khasanah
      
    </h1>
    
  </section>

  <section class="content">
        <div class="card">
          <div class="card-body">
            <!-- <a href="javascript:;" onclick="tambah()" class="btn btn-primary mb-3">Tambah Data</a> -->
            
            <nav aria-label="breadcrumb">
              <ol id="bread" class="breadcrumb"></ol>
            </nav>
            
            <table id="tabel-siswa" class="display" style="width:100%">
              <thead>
                <tr>
                  <th>No</th>
                  <th >Nama Khasanah</th>
                  <th >Tahun </th>
                  
                  
                </tr>
            
              </thead>
            </table>
          </div>
        </div>

        
       

  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
  <!-- My Script -->
  <!-- <script>
    document.addEventListener("DOMContentLoaded", () =>{
      const rows = document.querySelectorAll ("tr[data-href]");
      
      rows.forEach(row => {
        row.addEventListener("click", () => {
          window.location.href = row.dataset.href;
        });
      });

    });
  </script> -->
  <script>
    $('input:radio[name=folder][value='+response.goldarah+']')[0].checked = true;
  </script>
  <script>
    let status; // Menampung status "tambah, edit dan hapus"
    let url; // Menampung url untuk save dan update
    let form_siswa = 'form-siswa';

    $(document).ready(function() {
      tampil_siswa();
    });

    // Fungsi untuk menampilkan data siswa
    function tampil_siswa(parent=0,nama="Home",back="false") {
      $('#tabel-siswa').DataTable({
        processing: true,
        serverSide: true,
        bDestroy: true,
        responsive: true,
        ajax: {
          url: "<?= base_url('p_khasanah/get_siswa'); ?>",
          type: "POST",
          data: {'parentid':parent},
        },
        columnDefs: [{
            targets: [0, -1, -2],
            orderable: true,
          },
          {
            width: "45%",
            targets: [ 1, 2],
          },
        ],
      });
      // document.getElementById('id_parent').value="'"+parent+"'";
      //ngatur breadcrum, kalo ngga nge klik <button>kembali</button>, yang tampil dibawah. 
      if(back=="false"){
      var li = document.createElement("LI");
      li.classList.add("breadcrumb-item");
      //var a = document.createElement("a");
      //a.href="javascript:tampil_siswa("+parent+")";
      var textnode = document.createTextNode(nama);
      //a.appendChild(textnode);
      li.appendChild(textnode);
      document.getElementById("bread").appendChild(li);
      }else{
        var select = document.getElementById("bread");
        select.removeChild(select.lastChild);
      }
    }

    // Check berdasarkan status yang aktif dan set button dan url
    function check_status() {
      switch (status) {
        case 'tambah':
          $('#btn-proses').text('Save Changes');
          url = "<?= base_url('index.php/khasanah/save_siswa'); ?>";
          break;
        case 'edit':
          $('#btn-proses').text('Update Changes');
          url = "<?= base_url('index.php/khasanah/update_siswa'); ?>";
          break;
        case 'hapus':
          url = "<?= base_url('index.php/khasanah/delete_siswa'); ?>";
          break;
        case 'notif' :
        $('#btn-proses').text('Save Changes');
          url = "<?= base_url('index.php/khasanah/save_siswa'); ?>";
          break;
      }
    }
    // Clear form
    function clear_form() {
      $('#' + form_siswa)[0].reset();
    }
    // Fungsi untuk menampilkan modal tambah data
    

    // Fungsi untuk menampilkan modal edit data
    
    // Fungsi untuk proses simpan dan update data siswa
    

    // Fungsi untuk proses hapus data siswa
    

    

    $(document).ready(function() {
    var table = $('#tabel-siswa').DataTable();
     
    $('#tabel-siswa tbody').on('click', 'tr', function() {
      //masukin id parent ke input yg id nnya = parent id
      // viewnya belum nampilin parent id, dari cntrl di set biar bisa nampilin parent id tanpa ditampilin ke tabel ?????
       // berartii nge sortir data kek artikel(?) tapi dia ngambil parent_id nya,, 
      // cntrlr nya nampilsin parent id tapi ngga ditampilin di view/tabelnya. 

      //var data = table.row( this ).data();
      //  alert( 'You clicked on '+data[0]+'\'s row' );
      //tampil_siswa()
    });
} );
  </script>
  <script>
    function goBack() {
        window.history.go(-1)

    }
</script>
<script>
  $(window).bind("popstate", function () {
  $.getScript(location.href);
});
</script>
<script>
  function success(response) {
    alert("Hi");

    $("option", $("#q_subject")).remove();
    var option = "<option>Subject1</option>"; 
    option += "<option value=1234>Subject2</option>"; 
    $("#q_subject").append(option); 
    $.ajax({
    url: "<?= base_url('khasanah/get_siswa'); ?>",
    type: 'POST',
    dataType: 'json',
    data: {
       id: id
    },
    async: true,
    cache: false,
    success: function(response) {
       localStorage.setItem("response", response);
       success(response);
    }
 });
  window.onpopstate = function(e) {
  var res = localStorage.getItem('response');
  success(res);
}
}
</script>
</section>
</div>
