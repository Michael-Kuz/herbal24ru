<div id="auth_1">	
	<?php if($message) { ?><p class="message"><?=$message?></p><?php } ?>
	<div id="login">
		<form name="auth" action="<?=$action?>" method="post" >
			<label>Логин(Email):<input type="text" name="login" /></lable><br/>
			<lable>Пароль:<input type="password" name="password" /></lable><br/>
			<input type="submit" name="auth" value="ВОЙТИ" />
		</form>
	</div>
	<div id="links_reset">
		<a id="l_login" href="<?=$link_remind?>">Забыли логин?</a>
		<a id="l_password" href="<?=$link_reset?>">Забыли пароль?</a>
		<a id="l_registr" href="<?=$link_register?>">РЕГИСТРАЦИЯ</a>
	</div>
</div>