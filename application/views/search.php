

<div class="container pt-5" style="width: 60%; margin: 0px auto;">
    <div class="mt-5">
        <h1> Hasil Pencarian</h1>
    </div>
<?php

      foreach ($globalS as $gs) :
        ?>
        <div class="card mb-2 col-lg-12">
          <div class="row g-0 p-0">
            <div class="col-md-4 kontainergambar" >
                
                <?php
                if ($gs->jenis =='berita'){$path=base_url()."/assets/gambar_artikel/".$gs->gambar;}
                    elseif ($gs->jenis =='gambar'){$path=base_url()."/assets/foto/".$gs->gambar;}
                        elseif ($gs->jenis =='regulasi'){$path=base_url()."/assets/gambar_artikel/".$gs->gambar;}
                            elseif($gs->jenis =='tentang'){$path=base_url()."/assets/gambar_artikel/".$gs->gambar;} 
                                else{
                                    //seng artikel
                                    $path=base_url()."/assets/gambar_artikel/".$gs->gambar;
                                }
                                  





                // if ($gs->jenis =='berita') {
                //     $path=base_url()."/assets/gambar_artikel/".$gs->gambar;
                // }else{
                //     $path=base_url()."/assets/foto/".$gs->gambar;
                // } ?>
              <img class="gambarberita" src="<?php echo $path; ?>" >
            </div>
            <div class="col-md-8 ">
              <div class="card-body" >
                <?php
                if ($gs->jenis =='berita'){$link=base_url().'/pberita/detail/'.$gs->id;}
                    elseif ($gs->jenis =='gambar'){$link=site_url('palbum/index/'.$gs->id);}
                        elseif ($gs->jenis =='regulasi'){$link=site_url('pregulasi/index/');}
                            elseif($gs->jenis =='tentang') {$link=site_url('about/index/');} 
                                else{
                                    //seng artikel
                                    $link=base_url().'/pberita/detail/'.$gs->id;
                                }
                                ?>                
                <h5 class="card-title teksberita text-secondary"><a href="<?php echo $link; ?>" style="text-decoration: none" class="text-secondary"><?php echo $gs->judul; ?></a></h5>
                
                <p class="card-text mb-0" ><?php echo word_limiter(strip_tags($gs->isi), 8); ?><a href="<?php echo $link; ?>">read more</a></p>
                         
                
              </div>

            </div>
          </div>
        </div>
<?php endforeach ?>
    <div class="row pt-3">
        <div class="col">
          <?php echo $pagination; ?>          
        </div>  
    </div>

</div>
?>