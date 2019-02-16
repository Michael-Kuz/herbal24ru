<div id="call_back" >
	<img class="close_button" />
	<div class="clear"></div>
	<form name="call_back" method="post" action="http://no_online.ru/function.php" >
		<input type='hidden' name="func" value="call_back" />
		<label>Ваше имя</label><br/>
		<input type="text" name="name" required maxlength="100" value="" /><br/>
		<label>Контактный телефон<br/><i>(10 цифр без пробелов)</i></label><br/>
		<input type='tel' pattern='[0-9]{10}' name="phone" value="" required /><br/>
		<div class="message"></div>
		<label>"Введите код с картинки:</label>
		<input type="text" name="captcha" value="" autocomplete="off" required />
		<div class="captcha">
			<img src="/images/update.png" alt="Обновить" />
			<img src="../captcha.php" alt="Капча" />
		</div>
		<input type="submit" name="call_back" value="Отправить" >
	</form>
</div>
<div class="success" >
	<img class="close_button" />
	<div class="clear"></div>
	<div></div>
</div>