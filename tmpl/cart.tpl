<div class="cart">
	<a href="<?=$cart_link?>">
		<img src="<?=$icon_cart?>" alt="иконка корзины" title="иконка корзины" />
		<div>
			<p>МОЯ КОРЗИНА</p>
			<p>В корзине <span><?=$cart_count?></span> <?=$cart_word?> на <?php if( $auth_user ) { ?><span><?=$cart_summa?></span> руб.<?php }else{ ?>
					<span class="rub">Р</span>
					<span class="rub">Р</span>
					<span class="rub">Р</span>
					<span>&nbsp;руб.</span>
				<?php } ?>
			</p>
		</div>	
	</a>
</div>	