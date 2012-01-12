<html>
<head>
<meta http-equiv="Pragma" content="no-cache">
<title>My aquarium</title>
<script type='text/javascript' src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type='text/javascript'>
$(document).ready(function() {
	setInterval(function(){
	  $('#webcam_img').attr({'src': "/webcam/webcam.jpeg?foo=" + new Date().getTime()});
	}, 6000);
});
</script>
</head>
<body style="background:black">
	<center style='margin-top:50px'><img id="webcam_img" src="/webcam/webcam.jpeg" /></center>
</body>
</html>
