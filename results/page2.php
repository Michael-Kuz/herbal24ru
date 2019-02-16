<?php
	//=== готовим строку с контентом на второй странице
	$content = file_get_contents("content.txt"); 
	$order   = array("\r\n", "\n", "\r");
	$replace = "<br/>";
	$content = str_replace( $order, $replace, $content ); 
?>
<!DOCTYPE html>
<html>
<head>
	<title>Статусные номера телефонов.</title>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<meta name="description" content="Удача в твоих цифрах." />
	<meta name="keywords" content="удача, цифры, удача в цифрах" />
	<link rel="stylesheet" href="style/main.css" type="text/css" />
	<script type="text/javascript" src="js/jquery_1_11_1_min.js"></script>
	<script type="text/javascript" src="js/functions.js"></script>
	<link href="favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<style>
	@-moz-document url-prefix() { 
		body {
			background: #172836;
		} 
	}
</style>
<body>
	<div id="wrap_2">
		<header>
			<div id="container_header_2">
				<img src="images/title_page2.png" alt="Статусные номера телефонов" />
			</div>
		</header>
		<div class="clear"></div>
		<div id="center_2">
			<?=$content?>
		</div>
		<div id="icon_small">
			<img src="images/sup_num_img_small.png" alt="эмблема маленькая" />
		</div>
		<a id="link_main" href="/">
			<img src="images/arrow_up.png" alt="стрелка вверх" />
		</a>
	</div>
	<footer>
		&copy; Copyright 2015 "super-numbers.ru" 
	</footer>
</body>
</html>
