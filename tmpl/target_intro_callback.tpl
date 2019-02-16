<div class="product">
	<img class="product_img" src="<?=$product->img?>" alt="<?=$product->name?>" title="<?=$product->title?>" />
	<table>
		<tr>
			<td colspan="2">
				<p><b>Каталог:</b> <?=$section?></p>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<p><b>Название:</b> <?=$product->name?></p>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<?php if( $auth_user ) {?>
					<div class="price_product"><?=$product->{$auth_user->discount}?> РУБ.</div>
				<?php }else {?>
					<div class="price_product">
						<span class="rub">Р</span>
						<span class="rub">Р</span>
						<span class="rub">Р</span>
						<span>&nbsp;РУБ.</span>
					</div>
				<?php }?>
			</td>
		</tr>
		<tr>
			<td>
				<?php if( $product->exist ) { ?>
					<p class="exist_product">В наличии</p>
				<?php } else { ?>
					<p class="no_exist_product">Нет в наличии</p>
				<?php } ?>
			</td>
			<td>
			</td>
		</tr>
		<?php if( !$auth_user ) {?>
			<tr>
				<td colspan="2">
					<div class="price_advertising">
						<b><span class="red">Чтобы узнать цену, необходимо</span> <noindex><a rel="nofollow" class="login" href="authorization">ВОЙТИ НА САЙТ</a></noindex></b></br>
						Для получения пароля <noindex><a rel="nofollow" class="registr" href="register">ЗАРЕГИСТРИРУЙТЕСЬ</a></noindex> или обратитесь к Независимому партнеру Гербалайф в разделе <noindex><a rel="nofollow" class="contacts" href="contacts">КОНТАКТЫ.</a></noindex>
					</div>
				</td>
			</tr>
		<?php } ?>
	</table>
	<div class="clear"></div>
</div>	

	
