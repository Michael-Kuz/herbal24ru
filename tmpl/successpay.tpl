<div class="center_block" >
	<div class="center_header">
		<h1><?=$title?></h1>
	</div>
	<?=$hornav?>
	<div class="center_content">
		<div id="addorder">
			<br/>
			<h2>Оплата успешно завершена!</h2>
			<p>Наш менеджер свяжется с Вами в ближайшее время.</p>
			<?php if( $message ){ ?>
				<p><?=$message?></p>
			<?php } ?>
			<table class="info">
				<tr>
					<td colspan="5">
						<hr/>
					</td>	
				</tr>
				<tr>
					<td calspan="2">Номер заказа: </td><td colspan="3" class="bold"><?=$number?></td>
				</tr>
				<tr>
					<td colspan="5">
						<hr/>
					</td>	
				</tr>
				<tr>
					<td colspan="5">Заказ: </td>
				</tr>
				<tr>
					<td colspan="5">
						<hr/>
					</td>	
				</tr>
				<?php for( $i=0; $i<count($cart_list)-2; $i++ ) {?>
					<tr>
						<td class="img" >
							<img src="<?=$cart_list[$i]["img"]?>" alt="<?=$cart_list[$i]["title"]?>" />
						</td>	
						<td><?=$cart_list[$i]["title"]?></td>
						<td>
							<?=$cart_list[$i]["price"]?> руб.
						</td>
						<td><?=$cart_list[$i]["count"]?> шт.</td>
						<td>
							<?=$cart_list[$i]["summa"]?> руб.
						</td>
					</tr>
					<tr>
						<td colspan="5">
							<hr/>
						</td>	
					</tr>
				<?php }?>	
				<tr>		
					<td colspan="2">Общая цена заказанного продукта: </td><td colspan="3" class="tdright" >
						<?=$cart_list["cart_summa"]?> руб.
					</td>
				</tr>	
				<tr>
					<td colspan="5">
						<hr/>
					</td>	
				</tr>
				<tr>
					<td>Способ доставки: </td><td><?=$delivery?></td><td>Стоимость доставки: </td><td></td><td class="bold"><?=$delivery_cost?> руб.</td>
				</tr>
				<tr>
					<td colspan="5">
						<hr/>
					</td>	
				</tr>
				<tr>		
					<td colspan="2">Сумма к оплате: </td><td colspan="3" class="tdright" >
						<?=$in_total?> руб.
					</td>
				</tr>
				<tr>
					<td colspan="5">
						<hr/>
					</td>	
				</tr>
				<tr>
					<td colspan="2" >ФИО: </td><td colspan="3" ><?=$name?></td>
				</tr>
				<tr>
					<td colspan="5">
						<hr/>
					</td>	
				</tr>
				<tr>		
					<td colspan="2" >Телефон: </td><td colspan="3" ><?=$phone?></td>
				</tr>
				<tr>
					<td colspan="5">
						<hr/>
					</td>	
				</tr>
				<tr>		
					<td colspan="2" >E-mail: </td><td colspan="3" ><?=$email?></td>
				</tr>
				<tr>
					<td colspan="5">
						<hr/>
					</td>	
				</tr>
				<tr>
					<td colspan="2" >Адрес: </td><td colspan="3" ><?=$address?></td>
				</tr>
				<tr>
					<td colspan="5">
						<hr/>
					</td>	
				</tr>
				<tr>
					<td colspan="2">Примечание: </td><td colspan="3" ><?=$note?></td>
				</tr>
				<tr>
					<td colspan="5">
						<hr/>
					</td>	
				</tr>
				<tr>
					<td colspan="2" >Дата заказа: </td><td colspan="3" ><?=$date_order?></td>
				</tr>	
				<tr>
					<td colspan="5">
						<hr/>
					</td>	
				</tr>
				<tr>
					<?php if($date_pay){?>
						<td colspan="2" >Дата оплаты: </td><td colspan="3" ><?=$date_pay?></td>
					<?php } else {?>
						<td colspan="2" >Дата оплаты: </td><td colspan="3" >Не оплачено</td>
					<?php }?>	
				</tr>
				<tr>
					<td colspan="5">
						<hr/>
					</td>	
				</tr>	
			</table>
		</div>
	</div>
</div>