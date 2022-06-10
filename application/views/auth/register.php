<div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5 col-lg-7 mx-auto">
        <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">

                <div class="col-lg">
                    <div class="p-5">
                        <div class="text-center">
                            <h1 class="h4 text-gray-900 mb-4">Buat Akun!</h1>
                        </div>
                        <form class="user" method="POST" action="<?php echo base_url('auth/registration'); ?>">

                            <div class="form-group">
                                <input type="text" class="form-control form-control-user" id="username" placeholder="Full Name" name="username" value="<?php echo set_value('username'); ?>">
                                <!-- name="name" adalah atribut="value" -->
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control form-control-user" id="email" placeholder="Email" name="email" value="<?php echo set_value('email'); ?>">
                                <!-- type=text biar divalidasi sama CI nya -->
                            </div>
                            <div class="form-group">
                                <input type="date" class="form-control form-control-user" id="tgl_lahir" placeholder="Tanggal Lahir" name="tgl_lahir" value="<?php echo set_value('tgl_lahir'); ?>">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control form-control-user" id="alamat" placeholder="Alamat" name="alamat" value="<?php echo set_value('alamat'); ?>">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control form-control-user" id="pekerjaan" placeholder="Pekerjaan" name="pekerjaan" value="<?php echo set_value('pekejaan'); ?>">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control form-control-user" id="institusi" placeholder="Institusi" name="institusi" value="<?php echo set_value('institusi'); ?>">
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <input type="password" class="form-control form-control-user" id="password1" name="password1" value="<?php echo set_value('password1'); ?>" placeholder="Password">
                                </div>
                                <div class="col-sm-6">
                                    <input type="password" class="form-control form-control-user" id="password1" name="password2" value="<?php echo set_value('password2'); ?>" placeholder="Repeat Password">
                                </div>
                            </div>
                            <!--  <a href="login.html" class="">
                                    Registrasi
                                </a> -->
                            <button class="btn btn-primary btn-user btn-block" type="submit">Registrasi</button>

                            <!-- <a href="index.html" class="btn btn-google btn-user btn-block">
                                    <i class="fab fa-google fa-fw"></i> Register with Google
                                </a>
                                <a href="index.html" class="btn btn-facebook btn-user btn-block">
                                    <i class="fab fa-facebook-f fa-fw"></i> Register with Facebook
                                </a> -->
                        </form>

                        <!-- <div class="text-center">
                            <a class="small" href="forgot-password.html">Forgot Password?</a>
                        </div> -->
                        <div class="text-center">
                            <a class="small" href="<?php echo base_url('auth'); ?> ">Already have an account? Login!</a>
                            <!-- base_url('auth') dia menuju ke kontroller auth dan akan langsung ke method index yang mana dia adalah metod untuk loginnya. -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>