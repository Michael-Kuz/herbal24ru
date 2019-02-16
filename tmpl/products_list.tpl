<div id="consultation_folder">
	<div class="header"><p><?=$title?></p></div>
	<div>
		<nav>
			<?php if( isset($items["cart_count"]) && $items["cart_count"]) { ?>
				<?php for( $i=0; $i<count($items)-2; $i++ ) { ?>
					<div id="rev_<?=$items[$i]["id"]?>">
						<table>
							<tr>
								<td>
									<a href="<?=$link_add_review?>">
										<img class="avatar" src="<?=$items[$i]["img"]?>" alt="<?=$items[$i]["title"]?>" title="<?=$items[$i]["title"]?>" />
									</a>
								</td>
								<td>
									<a href="<?=$link_add_review?>">
										<p class="text_block_right"><b><?=$items[$i]["title"]?></b></p>
									</a>	
								</td>
							</tr>	
						</table>
					</div>
					<div class="clear"></div>
					<?php if( $i+1<count($items)-2 ) { ?>
						<hr/>
					<?php } ?>
				<?php } ?>
			<?php } elseif( !isset($items["cart_count"]) ) { ?>
				<p class="null_products" >0 продуктов в корзине.</p>
			<?php } ?>	
		</nav>
	</div>
	<a class="footer_consulting_folder" href="<?=$link_add_review?>">ВХОД В КОРЗИНУ</a>
</div>
