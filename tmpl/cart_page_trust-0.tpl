<div class="center_block" >
	<div class="center_header">
		<h1><?=$title?></h1>
	</div>
	<?=$hornav?>	
	<div class="center_content">
		<form <?php if ($name) { ?>name="<?=$name?>"<?php } ?> action="<?=$action?>" method="<?=$method?>" >
			<div id="cart_trust-0" >
				<table>
					<tr>
						<td></td>
						<td>Наименование</td>
						<td>Цена за 1 шт.</td>
						<td></td>
					</tr>
					<?php for( $i=0; $i<count($cart_list)-2; $i++ ) {?>
						<tr>
							<td>
								<img class="img" src="<?=$cart_list[$i]["img"]?>" alt="<?=$cart_list[$i]["title"]?>" />
							</td>	
							<td><?=$cart_list[$i]["name"]?></td>
							<td>
								<?php if( $auth_user ) { ?>
									<?=$cart_list[$i]["price"]?> руб.
								<?php }else{ ?>
									<span class="rub">Р</span>
									<span class="rub">Р</span>
									<span class="rub">Р</span>
									<span>&nbsp;руб.</span>
								<?php } ?>
							</td>
							<td>
								<a href="<?=$cart_list[$i]["link_delete"]?>" class="link_delete" >
									<div class="delete" title="удалить"></div>
								</a>
							</td>
						</tr>
						<tr>
							<td colspan="4">
								<hr/>
							</td>	
						</tr>
					<?php }?>
					<tr>
						<td colspan="4">
							<input type="hidden" name="auth_user" value="<?= $auth_user ? true : false ?>" >
							<input type="hidden" name="goods_count" value="<?=$cart_list['cart_count']?>" >
							<input type="hidden" name="link_name" value="<?=$link_name?>" >
						</td>
					</tr>
				</table>
			
				<div class="wrap">
					<div class="cart_trust-0">
						<label class="label" for="name" >Ф.И.О.</label>
						<input class="line_gap" type="text" name="name" maxlength="100" required>
						<br/>
						<label class="label" for="phone" >Телефон<br/><i class="label">(10 цифр без пробелов):</i></label>
						<input class="line_gap" type="tel" name="phone" pattern="[0-9]{10}" required>
						<br/>
						<label class="label" for="email" >E-mail:</label>
						<input class="line_gap" type="email" name="email" required>
						<br/>
						<label class="label" for="comment" >Примечание к заказу:</label>
						<textarea class="line_gap" name="comment" rows="5" ></textarea>
						<br/>
						<label class="label" for="captcha">Введите код с картинки:</label>
						<input class="line_gap" type="text" name="captcha" value="" autocomplete="off" required />
						<div class="captcha">
							<img src="/images/update.png" alt="Обновить" />
							<img src="../captcha.php" alt="Капча" />
						</div>
						<button class="button_consultation" type="submit" name="addorder" value="ОТПРАВИТЬ">ОФОРМИТЬ ЗАКАЗ</button>
					</div>	
				</div>
			</div>
		</form>
	</div>	
</div>