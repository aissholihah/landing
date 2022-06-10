          <div class="col-md-3 card text-primary bg-secondary border-primary px-0 " style="">
            <div class="card-header bg-primary text-white" style="font-size: 24px">
              <p class="text-start"><i class="fas fa-bolt mx-3"></i>UPCOMING EVENT</p></div>

              <div class="card-body text-start">
                <?php 
                $i=1;
                foreach ($event as $eve) :
                  ?>
                  <p class=""><i class="fas fa-arrow-alt-circle-right mx-1"></i><?php echo $eve->nama_event ?></p>
                  <p ><i class="fa fa-clock mx-1"></i><?php echo $eve->tanggal_event  ."  - ". $eve->waktu ?></p>

                  <p><i class="fa fa-map-marker-alt mx-1"></i><?php echo $eve->lokasi ?></p>
                  <div id="DateCountdown<?= $i; ?>" data-date="<?php echo $eve->tanggal_event; ?> <?php echo $eve->waktu; ?>" class="DateCountdown" ></div>
                  <hr>
                  <?php 
                  $i++;
                endforeach ?>
              </div>
            </div>
          </div> <!-- jangan dihapus -->
        </div>    <!-- jangan dihapus -->
        <br><br><br>
        <script >
          $("#DateCountdown1").TimeCircles();
        </script>
        <script >
          $("#DateCountdown2").TimeCircles();
        </script>
        <script >
          $("#DateCountdown3").TimeCircles();
        </script>