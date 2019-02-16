<div class="center_block" >
	<div class="center_header">
		<h1><?=$title?></h1>
	</div>
	<?=$hornav?>	
	<div class="center_content">
		<div id="cart" >
			<form <?php if ($name) { ?>name="<?=$name?>"<?php } ?> action="<?=$action?>" method="<?=$method?>" >
				<table cellspacing="0">
					<tr>
						<td colspan="6">
							<hr/>
						</td>	
					</tr>
					<tr>
						<td colspan="2">Товар</td>
						<td>Цена за 1 шт.</td>
						<td>Кол-во</td>
						<td>стоимость</td>
						<td></td>
					</tr>
					<tr>
						<td colspan="6">
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
								<input type="text" name="<?=$cart_list[$i]["section_id"]?>-><?=$cart_list[$i]["id"]?>" value="<?=$cart_list[$i]["count"]?>" >
							</td>
							<td class="bold">
								<?php if( $auth_user ) { ?>
									<?=$cart_list[$i]["summa"]?> руб.
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
							<td colspan="6">
								<hr/>
							</td>	
						</tr>
					<?php }?>
					<tr>
						<td colspan="4"></td>
						<td colspan="2"><b>ИТОГО:</b> 
							<?php if( $auth_user ) { ?>
								<span><b><?=$cart_summa?></b></span> <b>руб.</b>
							<?php }else{ ?>
								<span class="rub"><b>Р</b></span>
								<span class="rub"><b>Р</b></span>
								<span class="rub"><b>Р</b></span>
								<span>&nbsp;<b>руб.</b></span>
							<?php } ?>	
						</td>
					</tr>
					<tr>
						<td colspan="6">
							<input type="hidden" name="auth_user" value="<?= $auth_user ? true : false ?>" >
							<input type="hidden" name="goods_count" value="<?=$cart_list['cart_count']?>" >
							<input type="hidden" name="link_name" value="<?=$link_name?>" >
							<?php if( $auth_user ) { ?>
								<div class="free_delivery">
									<?php if( $ForFreeDelivery == Config::SUMM_FOR_FREE_DELIVERY ) { ?>
									Чтобы получить бесплатную доставку в постамат или курьером, необходимо сделать заказ на сумму не менее <b><?=$ForFreeDelivery?> <?=$suffix?>.</b> (данная акция не распространяется на протеиновые батончики)
									<?php } elseif( $ForFreeDelivery > 0 && $ForFreeDelivery < Config::SUMM_FOR_FREE_DELIVERY ) { ?>
									Чтобы получить бесплатную доставку в постамат или курьером, необходимо добавить в заказ продукты на сумму <b><?=$ForFreeDelivery?> <?=$suffix?>.</b> (данная акция не распространяется на протеиновые батончики)
									<?php } elseif( $ForFreeDelivery == 0 ) {  ?>
									Вы можете воспользоваться бесплатной доставкой в постамат или бесплатной доставкой курьером.
									<?php } ?>
								</div>
							<?php } ?>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" name="recalc" value="" >
						</td>
						<td colspan="2">
							<p id="order_step1"><img src="images/cart_order.png" alt="Оформить заказ"/></p>
						</td>
						<td>
						</td>
						<td>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>	
</div>