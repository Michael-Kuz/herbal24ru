<!DOCTYPE html>
<html prefix="og: http://ogp.me/ns# 
          profile: http://ogp.me/ns/profile#">
<?=$header?>
<body>
	<div id="interactive_message"></div>
	<?php
		if( !session_id() ) session_start();
		$_SESSION["js"] = true;
	?>
	<noscript>
		<?php
			$_SESSION["js"] = false;
		?>
	</noscript>
	<?php include_once("analyticstracking.php") ?>
	<div id="container">
		<header>
			<?=$logo?>
			<?=$auth?>	
			<?=$cart?>	
		</header>	
		<div class="clear"></div>
		<?=$top?>
		<div class="clear"></div>
		<div id="content">
			<div id="promo_left">
				<?=$promo_image?>
			</div>
			<div id="promo_right">
				<?=$inquiry?>
			</div>
			<div id="promo_center">
				<?=$promo_info?>
			</div>
			<div class="clear"></div>
			<div class="flex">
				<div id="left_col">
					<?=$left?>
				</div>
				<div id="center_col">
					<?=$center?>
				</div>
				<div id="right_col">
					<?=$right?>
				</div>
			</div>	
			<div class="clear"></div>
		</div>
		<div class="clear"></div>
		<?=$footer?>
	</div>
	
	<div id="security-policy">
		<div class="security-policy-child">
			<a class="close_button"></a>
			<div>
				<h2>Конфиденциальность и защита персональных данных</h2>
				
				При оформлении вопроса или заявки на обратный звонок, посетитель сайта предоставляет следующую информацию: Имя, номер контактного телефона, адрес электронной почты. 
				
				Предоставляя свои персональные данные на сайте http://herbal24.ru, Посетитель сайта соглашается на их обработку в течение неопределенного срока для исполнения Независемым партнером Гербалайф своих обязательств перед Посетителем сайта по предоставлению услуг консультационного характера, предоставления Посетителю сайта справочной информации, а также в целях продвижения продуктов компании Гербалайф. 
			</div>
		</div>
	</div>
	
</body>
</html>
