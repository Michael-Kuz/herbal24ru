<div id="auth">	
	<?php if($message) { ?><p><?=$message?></p><?php } ?>
	<div id="login">
		<form name="auth" action="<?=$action?>" method="post" >
			<input type="text" name="login"  placeholder="Логин или Email" />
			<input type="password" name="password"  placeholder="Пароль" />
			<input type="submit" name="auth" value="ВХОД" />
		</form>
	</div>
	<!--<div id="links_reset">
		<a id="l_login" href="<?=$link_remind?>">Забыли логин?</a>
		<a id="l_password" href="<?=$link_reset?>">Забыли пароль?</a>
		<a id="l_registr" href="<?=$link_register?>">РЕГИСТРАЦИЯ</a>
	</div>-->
</div>