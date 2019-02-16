<?php
	//=== готовим строку с телефонами ===
	$phones = file_get_contents("phones.txt");
	$order   = array("\r\n", "\n", "\r", "\t");
	$replace = "";
	$phones = str_replace( $order, $replace, $phones ); 
	$phones_parse = explode(";",$phones);
	$count_ph = count($phones_parse);
	for( $i=0; $i<$count_ph; $i++ ){
		$phones_parse[$i] = trim($phones_parse[$i]);
	}
	$duration = $count_ph * 3;
	$duration .= "s";
	$phones = implode( "\t",$phones_parse );
	$phones = trim($phones);
	$count_ch = strlen($phones);
	$len_in_px = ($count_ch - ($count_ph - 1) ) * 10 +  ($count_ph - 1) * 10;
	$left = "-".$len_in_px."px";
	$right = $len_in_px."px";
	//=== готовим строку с правой ссылкой
	$link = file_get_contents("link.txt"); 
	$order   = array("\r\n", "\n", "\r");
	$replace = "<br/>";
	$link = str_replace( $order, $replace, $link ); 
?>
<!DOCTYPE html>
<html>
<head>
	<title>Удача в твоих цифрах.</title>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<meta name="description" content="Удача в твоих цифрах." />
	<meta name="keywords" content="удача, цифры, удача в цифрах" />
	<link rel="stylesheet" href="style/main.css" type="text/css" />
	<script type="text/javascript" src="js/jquery_1_11_1_min.js"></script>
	<script type="text/javascript" src="js/functions.js"></script>
	<link href="favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<body>
	<style>
		#string {
			animation: ticker <?=$duration?> linear 3s infinite;
		}
		@keyframes ticker{
			0%{
				left: 605px;
				right: -605px;	
			}
			
			100%{
				left: <?=$left?>;
				right: <?=$right?>;
			}
		}
	</style>
	<div id="wrap">
		<header>
			<div id="container_header">
				<img src="images/title_main.png" alt="Удача в твоих цифрах" />
				<q>Иногда Маленький Нюанс<br/>Решает Многое...</q>
			</div>
		</header>
		<div class="clear"></div>
		<div id="left">
		</div>
		<div id="right">
			<?=$link?>
		</div>
		<div id="center">
			<img src="images/sup_num_img_big.png" alt="логотип super-numbers.ru" title="логотип super-numbers.ru">
		</div>
		<div id="phone_numbers">
			<p id="string"><?=$phones?></p>
		</div>
		<a id="link_page2" href="page2.php">
			<img src="images/arrow_down.png" alt="стрелка вниз" />
		</a>
	</div>
</body>
</html>
