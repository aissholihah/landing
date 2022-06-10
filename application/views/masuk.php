

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center mt-5">

            <div class="col-lg-7">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            
                            <div class="col-lg">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Selamat Datang!</h1>
                                    </div>
                                            <?php if($this->session->flashdata('gagal')): ?>
            <div class="alert bg-danger text-light">
                    <?= $this->session->flashdata('gagal') ?>
            </div>
        <?php endif ?>
                                 <form class="user" method="POST" action="<?php echo base_url(). 'masuk/cek' ?>">                  
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user"
                                                aria-describedby="emailHelp"
                                                placeholder="Masukkan Username Anda" name="username">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control form-control-user"
                                                 placeholder="Masukkan Password Anda" name="password">
                                        </div>
                                        
                                        <!-- <a href="index.html" class="btn btn-primary btn-user btn-block">
                                            Login
                                        </a> -->
                                        <button class="btn btn-primary btn-user btn-block" type="submit" >Log in</button>

                                        <hr>
                                        <!-- <a href="index.html" class="btn btn-google btn-user btn-block">
                                            <i class="fab fa-google fa-fw"></i> Login with SSO
                                        </a> -->
                                        <a class="btn btn-google btn-user btn-block" href="<?php echo $login_button; ?>" role="button"><i class="fab fa-google" aria-hidden="true"></i> Login with Google</a>

                                     
                                    </form>
                                    <hr>
                                    
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

