<!DOCTYPE html>
<html>
<head>
<title>CountDown</title>
<!--Import Google Icon Font-->
<link href="http:https://www.balidev.top/cloudme.fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!--Import materialize.css-->
<link type="text/css" rel="stylesheet" href="<?php echo base_url();?>/assets/materialize/css/materialize.min.css"  media="screen,projection"/>
<!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/chingyawhao/materialize-clockpicker/master/dist/css/materialize.clockpicker.css"/>
</head>
<body>
<!--Import jQuery before materialize.js-->
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>/assets/materialize/js/materialize.js"></script>
<script type="text/javascript" src="https://cdn.rawgit.com/chingyawhao/materialize-clockpicker/master/dist/js/materialize.clockpicker.js"></script>

<div class="container">
<div class="row"  style="margin-top: 80px;">
<div class="col s12">
<h2 class="center blue-text">MaInBack</h2>
</div>
</div>
<div class="row">
<div class="col s2 offset-s2">
<div class="card">
<div class="card-content" style="height: 90px;"><h5 id="hari" class="center"></h5></div>
</div>
</div>
<div class="col s2">
<div class="card">
<div class="card-content"  style="height: 90px;"><h5 id="jam" class="center"></h5></div>
</div>
</div>
<div class="col s2">
<div class="card">
<div class="card-content"  style="height: 90px;"><h5 id="menit" class="center"></h5></div>
</div>
</div>
<div class="col s2">
<div class="card">
<div class="card-content"  style="height: 90px;"><h5 id="detik" class="center"></h5></div>
</div>
</div>
</div>
</div>
<script>

CountDownTimer("<?php echo $timer->waktu;?>", 'hari', 'jam', 'menit', 'detik');
function CountDownTimer(dt, id1, id2, id3,id4)
{
var end = new Date(dt);

var _second = 1000;
var _minute = _second * 60;
var _hour = _minute * 60;
var _day = _hour * 24;
var timer;

function showRemaining() {
var now = new Date();
var distance = end - now;
var distance1 = now - end;
if(distance1 > 0){
clearInterval(timer);
return;
}
var days = Math.floor(distance / _day);
var hours = Math.floor((distance % _day) / _hour);
var minutes = Math.floor((distance % _hour) / _minute);
var seconds = Math.floor((distance % _minute) / _second);

document.getElementById(id1).innerHTML = days + ' Hari';
document.getElementById(id2).innerHTML = hours + ' Jam';
document.getElementById(id3).innerHTML = minutes + ' Menit';
document.getElementById(id4).innerHTML = seconds + ' Detik';
}

timer = setInterval(showRemaining, 1000);
}

</script>
</body>
</html>
