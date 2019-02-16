<div class="center_block" >
	<div class="center_header">
		<h1><?=$title?></h1>
	</div>
	<?=$hornav?>	
	<div class="center_content">
		<form <?php if ($name) { ?>name="<?=$name?>"<?php } ?> action="<?=$action?>" method="<?=$method?>" >
			<div id="cart_trust-1" >
				<div class="section_notice">
					Получить всю информацию о продуктах Гербалайф возможно только непосредственно у Независимого партнера Гербалайф. Напишите Ваш вопрос или закажите обратный звонок, а также Вы можете связаться со мной по телефону +7(965)284-15-09
				</div>
				<div class="wrap" id="block_form">
					<div class="cart_trust-1">
						<?php if( $message && $error_code == "003" ) { ?>
							<p class="message"><?=$message?></p>
						<?php } ?>
						<label class="label" for="name" >Ф.И.О.</label>
						<input class="line_gap" type="text" name="name" value="<?=$name?>" maxlength="100" pattern="^[0-9a-zA-Zа-яА-ЯёЁ_ ]+$" title="Допустимы буквы и цифры" maxlength="100" required />
						<br/>
						<label class="label" for="phone" >Телефон<br/><i class="label">(10 цифр без пробелов):</i></label>
						<input class="line_gap" type="tel" name="phone" value="<?=$phone?>" pattern="[0-9]{10}" required />
						<br/>
						<?php if( $message && $error_code == "004" ) { ?>
							<p class="message"><?=$message?></p>
						<?php } ?>
						<label class="label" for="email" >E-mail:</label>
						<input class="line_gap" type="email" name="email" value="<?=$email?>" pattern='^[a-z0-9_][a-z0-9\._-]*@([a-z0-9]+([a-z0-9-]*[a-z0-9]+)*\.)+[a-z]+$' title="Некорректный e-mail" />
						<br/>
						<p class="label">Ваш вопрос:</p>
						<textarea class="line_gap" name="comment" ><?=$comment?></textarea>
						<br/>
						<?php if( $message && $error_code == "001" ) { ?>
							<p class="message"><?=$message?></p>
						<?php } ?>
						<label class="label" for="captcha">Введите код с картинки:</label>
						<input class="line_gap" type="text" name="captcha" value="" autocomplete="off" required />
						<div class="captcha">
							<img src="/images/update.png" alt="Обновить" />
							<img src="../captcha.php" alt="Капча" />
						</div>
						<label for="agreement">Я прочитал(а) <a href="#block_form" class="win-security-policy">Политика Безопасности</a><br>и согласен с условиями</label>
						<button class="button_consultation" type="submit" name="addorder" value="ОТПРАВИТЬ">ОТПРАВИТЬ</button>
					</div>	
				</div>
			</div>
		</form>
	</div>	
</div>