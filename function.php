<?php
require_once "start.php";

$manage = new Manage(); 
 
$link = false;
$func = "";
$func = $_REQUEST["func"];

if ( !session_id() ) session_start();
if( $func == "self")
	$manage->switchDisplayContent($func);
elseif( $func == "delivery")
	$manage->switchDisplayContent($func);
elseif($func == "add_cart") 
	$manage->addCart();
elseif($func == "delete_cart")
	$manage->deleteCart();
elseif($func == "update_cart")
	$manage->updateCart();
elseif($func == "likes")   // обрабатываем лайки
	$manage->updateLikes();
elseif($func == "save_composition") // сохраняем изменения в количестве месячных программ	
	$manage->save_composition();	
elseif($func == "add_complex_cart") // добавляем продукты комплексной программы в корзину	
	$manage->addComplexCart();	
elseif($func == "call_back") // обрабатываем данные из окна формы заказать обратный звонок
	$manage->call_back();
elseif($func == "wind_sec_policy") // Выдаем окно в браузер 'политика безопасности'
	$manage->windSecPolicy();	

if( $link === false )
	$link = $_SERVER["HTTP_REFERER"];
header("Location: $link");		
exit;
?>