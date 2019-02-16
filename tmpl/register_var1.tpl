<div class="center_content">	
	<form id="register" name="<?=$form_name?>" action="<?=$action?>" method="<?=$method?>">
		<?php if( $message && $error_code == "003" ) { ?>
			<p class="message"><?=$message?></p>
		<?php } ?>
		<label for="name">Имя:</label>
		<input type="text" name="name" value="<?=$name?>" required /><br>
		<div class="clear"></div>
		<?php if( $message && $error_code == "004" ) { ?>
			<p class="message"><?=$message?></p>
		<?php } ?>
		<label for="email">Email:</label>
		<input type="email" name="email" value="<?=$email?>" required /><br>
		<div class="clear"></div>
		<?php if( $message && $error_code == "006" ) { ?>
			<p class="message"><?=$message?></p>
		<?php } ?>
		<label for="password">Пароль:</label>
		<input type="password" name="password" value="" required /><br>
		<div class="clear"></div>
		<?php if( $message && $error_code == "005" ) { ?>
			<p class="message"><?=$message?></p>
		<?php } ?>
		<label for="password_conf">Подтвердите пароль:</label>
		<input type="password" name="password_conf" value="" required /><br>
		<div class="clear"></div>
		<?php if( $message && $error_code == "001" ) { ?>
			<p class="message"><?=$message?></p>
		<?php } ?>
		<label for="captcha">Введите код с картинки:</label>
		<input type="text" name="captcha" value="" autocomplete="off" required />
		<div class="clear"></div>
		<div class="captcha">
			<img src="/images/update.png" alt="Обновить" />
			<img src="../captcha.php" alt="Капча" />
		</div>
		<div class="clear"></div>
		<label for="agreement">Я прочитал <a>Политика Безопасности</a><br>и согласен с условиями</label>
		<input id="agreement" type="checkbox" name="agreement" value="true" required <?php if( $checked ){ ?>checked<?php } ?> />
		<div class="clear"></div>
		<button type="submit" name="<?=$form_name?>" value="ОТПРАВИТЬ">Зарегистрироваться</button>
	</form>
</div>
	
