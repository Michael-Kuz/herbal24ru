<table id="lightmenu" class="lightmenu">
	<tr>
		<td <?php if( $active != "p2p-incoming" ) {?> class="active" <?php } ?> >
			<div class="visamastercard">
				<img  src="/images/visamastercard.png" alt="ярлык viza vaster card"/>
			</div>
		</td>
		<td <?php if( $active == "p2p-incoming" ) {?> class="active" <?php } ?> >
			<div class="yandexmoney">
				<img  src="/images/yandexmoney_2.png" alt="ярлык яндекс-деньги"/>
			</div>
		</td>
		<td>
			<div class="sberbank">
				<img  src="/images/sberbank.png" alt="ярлык сбербанк"/>
			</div>
		</td>
	</tr>
</table>	
<div class="attention-data" data-limit=<?=Config::LIMIT_FOR_ONE_TRANSFER?> data-total=<?=$in_total?>></div>
<div class="attention">
	<?php if( $active != "p2p-incoming" || $in_total > Config::LIMIT_FOR_ONE_TRANSFER ) {?>
		<div class="attention-icon"></div>
	<?php } ?>
	<div class="attention-text">
			<p <?php if( $active == "p2p-incoming" ) {?>class="hide"<?php }else if( $active != "p2p-incoming" ){ ?>class="show"<?php } ?>>За перевод с любой карты комиссия не берется.</p>
			<p <?php if( $in_total > Config::LIMIT_FOR_ONE_TRANSFER ) { ?>class="show"<?php } else { ?>class="hide"<?php } ?>>Общая сумма Вашего заказа превышает <?=Config::LIMIT_FOR_ONE_TRANSFER?> руб., поэтому его оплата возможна несколькими платежами с суммой не выше <?=Config::LIMIT_FOR_ONE_TRANSFER?> руб.</p>
	</div>
</div>
<div id="visamastercard">
	<div class="form-pay-wrap">
		<form method="<?=$method?>" action="<?=$action?>"> 
			<input type="hidden" name="receiver" value="<?=$receiver?>"> 
			<p></p> 
			<div class="form-pay-table">
				<div class="form-pay-row">
					<div class="form-pay-cell text-align-right">Комментарий <br><span class="form-pay-comment">(не обязательно)</span></div>
					<div class="form-pay-cell">
						<textarea type="text" name="comment" ><?=$comment?></textarea>
					</div>
				</div>
				<div class="form-pay-row">
					<div class="form-pay-cell text-align-right">Сумма</div>
					<div class="form-pay-cell">
						<input type="number" name="sum" value="<?=$sum?>" min="2.00" max="15000.00" required data-type="number" > руб.
					</div>
				</div>
				<div class="form-pay-row">
					<div class="form-pay-cell text-align-right">Способ оплаты</div>
					<div class="form-pay-cell pay-sist-switch">
						<input type="radio" name="paymentType" value="AC" id="ac" <?php if( $active != "card-incoming" || $active === NULL) { ?>checked class="checked"<?php } ?> ><label for="ac" <?php if( $active == "card-incoming" || $active === NULL) { ?> class="checked" <?php } ?> ></label>
						<input type="radio" name="paymentType" value="PC" id="pc" <?php if( $active == "p2p-incoming" ) { ?>checked class="checked"<?php } ?> ><label for="pc"<?php if( $active == "p2p-incoming" ) { ?> class="checked" <?php } ?> ></label>
					</div>
				</div>
			</div>
			<input type="hidden" name="formcomment" value="<?=$formcomment?>">
			<input type="hidden" name="short-dest" value="<?=$short_dest?>"> 
			<input type="hidden" name="label" value="<?=$label?>">
			<input type="hidden" name="quickpay-form" value="<?=$quickpay_form?>">
			<input type="hidden" name="targets" value="<?=$targets?>"> 
			<input type="hidden" name="successURL" value="<?=$success_url."&send_sum=".$sum?>"> 
			<input type="hidden" name="need-fio" value="<?=$need_fio?>"> 
			<input type="hidden" name="need-email" value="<?=$need_email?>"> 
			<input type="hidden" name="need-phone" value="<?=$need_phone?>"> 
			<input type="hidden" name="need-address" value="<?=$need_address?>"> 
			<div class="text-align-center">
				<input type="submit" name="pay_visa" value="Оплатить">
			</div>	
		</form>
	</div>
</div>
<div id="sberbank">
	<p>Откройте сайт <a href="https://online.sberbank.ru/CSAFront/index.do" target="Сбербанк Онлайн">Сбербанк Онлайн</a>.</p>
	<p>Войдите в свой личный кабинет.</p>
	<img class="help_icon" src="images/sberonline_1_help.png" alt="личный кабинет сбербанкОнлайн" />
	<p>В левой части окна увидите значок Яндекс-Деньги. Нажмете на него.</p>
	<p>В открывшемся окне выбираем:</p>
	<p>1) Карту, с которой будете оплачивать.</p>
	<p>2) Вводим номер Яндекс-кошелька (<?=Config::MONEY_YANDEX?>).</p>
	<p>3) Вводим сумму к оплате.</p>
	<img class="help_icon" src="images/sberonline_2_help.png" alt="личный кабинет сбербанкОнлайн" />
</div>