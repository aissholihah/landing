<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type"content="text/html; charset=utf-8"/>
		<meta name="viewport"content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
		<title>Binary Tree Structure</title>
		<link href="<?php echo base_url(); ?>/assets/profil/css/style.css"rel="stylesheet"type="text/css"/>
	</head> -->
	<br>	<br>	<br><br><br><br>	
	<body> 
		
		
		<div class="container-fluid">
			<div class="row col-lg-12">
                        <h1 class="text-center mt-3 mb-3 portfolio-modal-title text-secondary text-uppercase mb-0"><b>Struktur Organisasi<br> UPT KEARSIPAN UNS</b></h1>
				<!--<div class="tree">
					<ul>
						<li><a href="<?php echo base_url(); ?>pabout/detail_profil"><img src="<?php echo base_url(); ?>/assets/profil/images/1.png"><span>Kepala UPT Kearsipan</span></a>
						<ul>
							<li><a href="https://www.youtube.com/"><img src="<?php echo base_url(); ?>/assets/profil/images/2.jpg"><span>Kelompok Jabatan <br>Fungsional Arsiparis</span></a></li>
							<li><a href="https://www.youtube.com/"><img src="<?php echo base_url(); ?>/assets/profil/images/2.jpg"><span>Koordinator Bidang</span></a>	
							</li>
							<li><a href="https://www.youtube.com/"><img src="<?php echo base_url(); ?>/assets/profil/images/2.jpg"><span>SubKoordinator <br>Tata Usaha</span></a>
							<ul>
								<li> <a href="#"><img src="<?php echo base_url(); ?>/assets/profil/images/6.jpg">Pranata<br> Kearsipan></a> </li>
								<li> <a href="#"><img src="<?php echo base_url(); ?>/assets/profil/images/7.jpg"><span>Pengolah<br> Data</span></a> </li>
								
								<li> <a href="#"><img src="<?php echo base_url(); ?>/assets/profil/images/8.jpg"><span>Penyusun<br> Arsip</span></a> </li>
								<li> <a href="#"><img src="<?php echo base_url(); ?>/assets/profil/images/8.jpg"><span>Pengadministrasi <br>Umum</span></a> </li>
							</ul>							
							</li>
							<li> <a href="#"><img src="<?php echo base_url(); ?>/assets/profil/images/5.jpg"><span>Unit Kearsipan II <br> Biro/Fakultas/Lembaga</span></a>
							
							</li>
					
				</ul>
				
			</li>
		</ul>
	</div>-->

	<?php //var_dump($profil[0]->nama); ?>
    <div id="custom-colored"> --@-- </div>
    <script src="<?php echo base_url(); ?>/assets/profil/treantjs/vendor/raphael.js"></script>
    <script src="<?php echo base_url(); ?>/assets/profil/treantjs/Treant.js"></script>
    
    <!--<script src="<?php echo base_url(); ?>/assets/profil/treantjs/examples/custom-colored/custom-colored.js"></script>-->
    <script>
    	var config = {
        container: "#custom-colored",

        nodeAlign: "BOTTOM",
        
        connectors: {
            type: 'step'
        },
        node: {
            HTMLclass: 'nodeExample1'
        }
    },
    <?php

    	foreach($profil as $pr):
    		//if($pr->id_profil=='8' or $pr->id_profil=='7'){
            if($pr->id_atasan!='0'){
    			$atas='parent: at'.$pr->id_atasan.',';
    		}else{
    			$atas='';    		}
    	echo 'at'.$pr->id_profil.' = {
        '.$atas.'
        text: {
            name: "'.$pr->nama.'",
            title: "'.$pr->jabatan.'",
            contact: "'.$pr->kontak.'",
            
        },
        image: "'.base_url("assets/profil/images/").$pr->foto.'",
        
        link: { 
            //val: "contact me",
            href: "'.base_url("pabout/detail_profil/").$pr->id_profil.'",
            target: "_blank"
        }
    },';
    //}
   		endforeach;
     ?>
    /*ceo = {
        text: {
            name: "aaaaa",
            title: "Chief executive officer",
            contact: "Tel: 01 213 123 134",
            
        },
        image: "../headshots/2.jpg",
        
        link: { 
            //val: "contact me",
            href: '<?php echo base_url("pabout/detail_profil/".$profil[0]->id_profil); ?>',
            target: "_blank"
        }
    },

    cto = {
        parent: ceo,
        HTMLclass: 'light-gray',
        text:{
            name: "Joe Linux",
            title: "Chief Technology Officer",
        },
        image: "../headshots/1.jpg"
    },
    cbo = {
        parent: ceo,
        //childrenDropLevel: 2,
        HTMLclass: 'blue',
        text:{
            name: "Linda May",
            title: "Chief Business Officer",
        },
        image: "../headshots/5.jpg"
    },
    cdo = {
        parent: ceo,
        HTMLclass: 'gray',
        text:{
            name: "John Green",
            title: "Chief accounting officer",
            contact: "Tel: 01 213 123 134",
        },
        image: "../headshots/6.jpg"
    },
    cdo2 = {
        parent: ceo,
        HTMLclass: 'gray',
        text:{
            name: "John Green2",
            title: "Chief accounting officer",
            contact: "Tel: 01 213 123 134",
        },
        image: "../headshots/6.jpg"
    },
    cio = {
        parent: cto,
        HTMLclass: 'light-gray',
        text:{
            name: "Ron Blomquist",
            title: "Chief Information Security Officer"
        },
        image: "../headshots/8.jpg"
    },
    ciso = {
        parent: cto,
        HTMLclass: 'light-gray',
        text:{
            name: "Michael Rubin",
            title: "Chief Innovation Officer",
            contact: "we@aregreat.com"
        },
        image: "../headshots/9.jpg"
    },
    cio2 = {
        parent: cdo,
        HTMLclass: 'gray',
        text:{
            name: "Erica Reel",
            title: "Chief Customer Officer"
        },
        link: {
            href: "http://www.google.com"
        },
        image: "../headshots/10.jpg"
    },
    ciso2 = {
        parent: cbo,
        HTMLclass: 'blue',
        text:{
            name: "Alice Lopez",
            title: "Chief Communications Officer"
        },
        image: "../headshots/7.jpg"
    },
    ciso3 = {
        parent: cbo,
        HTMLclass: 'blue',
        text:{
            name: "Mary Johnson",
            title: "Chief Brand Officer"
        },
        image: "../headshots/4.jpg"
    },
    ciso4 = {
        parent: cbo,
        HTMLclass: 'blue',
        text:{
            name: "Kirk Douglas",
            title: "Chief Business Development Officer"
        },
        image: "../headshots/11.jpg"

    },*/

    chart_config = [
        config,
        <?php 
        foreach($profil as $pr):
        	echo 'at'.$pr->id_profil.',';
        endforeach;
        ?>
        //ceo,cto,cbo,
        //cdo,
        //ciso2,ciso3,ciso4,cdo2
    ];
        new Treant( chart_config );
    </script>
</div>
</div>

</body>
    
<!-- </html> -->