<!--
<?php if( $message ) {?> <p class="message" ><?=$message?></p> <?php } ?>
<form <?php if( $name ){?>name="<?=$name?>"<?php } ?> action="<?=$action?>" method="<?=$method?>" <?php if ($check) { ?>onsubmit="return checkForm(this)"<?php } ?>>
	<table>
		<tr>
			<td class="w120">ФИО:</td>
			<td>
				<input type="text" name="fio" value="<?=$fio?>" placeholder="Имя" <?php include "jsv.tpl"; ?> />
			</td>
		</tr>
		<tr>
			<td>Телефон:</td>
			<td>
				<input type="text" name="phone" value="<?=$phone?>" placeholder="Телефон" <?php include "jsv.tpl"; ?> />
			</td>
		</tr>
		<tr>
			<td>E-mail:</td>
			<td>
				<input type="text" name="email" value="<?=$email?>" placeholder="E-mail" <?php include "jsv.tpl"; ?> />
			</td>
		</tr>
		<tr>
			<td>Доставка:</td>
			<td>
				<select name="delivery" onchange="changeDelivery(this)" >
					<option value="0" <?php if ($delivery == "0") { ?>selected="selected"<?php }?>>выберите, пожалуйста...</option>
					<option value="1" <?php if ($delivery == "1") { ?>selected="selected"<?php }?>>Доставка через постамат</option>
					<option value="2" <?php if ($delivery == "2") { ?>selected="selected"<?php }?>>Доставка курьером</option>
					<option value="3" <?php if ($delivery == "3") { ?>selected="selected"<?php }?>>Доставка почтой</option>
					<option value="4" <?php if ($delivery == "4") { ?>selected="selected"<?php }?>>Самовывоз</option>
				</select>
			</td>
		</tr>
		<tr id="address">
			<td colspan="2" >
				<input type="text" name="post_index" value="<?=$post_index?>" placeholder="Индекс" />
				<p>Полный адрес (Город, улица, дом, квартира):</p>
				<textarea name="address"  cols="60" rows="6"><?=$address?></textarea>
			</td>
		</tr>
		<tr id="self-export">
			<td colspan="2">
				<p>Укажите название города где Вы находитесь:</p>
				<input type="text" name="city" value="<?=$city?>" placeholder="Город" />
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<p>Примечание к заказу:</p>
				<textarea name="notice" cols="60" rows="6"><?=$notice?></textarea>
			</td>
		</tr>
		<tr>
			<td class="button" colspan="2">
				<input type="hidden" name="func" value="add_order" />
			</td>
		</tr>
		<tr>
			<td class="button" colspan="2">
				<input type="image" src="images/order_end.png" alt="Закончить оформление заказа" onmouseover="this.src='images/order_end_active.png'" onmouseout="this.src='images/order_end.png'" />
			</td>
		</tr>
	</table>
</form>
-->