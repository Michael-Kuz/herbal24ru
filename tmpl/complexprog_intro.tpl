<div class="product">
	<form  name="complexprog" action="<?=$link_qty?>&section_id=<?=$product->section_id?>&id=<?=$product->id?>" method="post">
		<img class="product_img" src="<?=$product->img?>" alt="<?=$product->title?>" title="<?=$product->title?>" />
		<div id="head_desc">
			<p><b>Каталог:</b> <?=$section?></p>
			<p><b>Название:</b> <?=$product->name?></p>
			<p><b>Стоимость программы:</b> на <input type="number" name="num_months" min="1" max="12" step="1" value="<?=$num_months?>" > <?=$syfix?>.</p>
			<?php if( $auth_user ) {?>
				<div class="price_product"><?=$complex_sum?> РУБ.</div>
			<?php }else {?>
				<div class="price_product">
					<span class="rub">Р</span>
					<span class="rub">Р</span>
					<span class="rub">Р</span>
					<span>&nbsp;РУБ.</span>
				</div>
			<?php }?>
			<div class="text-center">
				<input type="submit" name="complexprog" value="Пересчитать" >
				<noindex><a rel="nofollow" class="link_cart" href="<?=$add_cart?>&section_id=<?=$product->section_id?>&id=<?=$product->id?>"><p>В КОРЗИНУ</p></a><noindex>
			</div>
		</div>
	</form>
</div>	
<div class="clear"></div>
<?php if( !$auth_user ) {?>
	<div class="price_advertising">
		<b><span class="red">Чтобы узнать цену, необходимо</span> <noindex><a rel="nofollow" class="login" href="authorization">ВОЙТИ НА САЙТ</a></noindex></b></br>
		Для получения пароля <noindex><a rel="nofollow" class="registr" href="register">ЗАРЕГИСТРИРУЙТЕСЬ</a></noindex> или обратитесь к Независимому партнеру Гербалайф в разделе <noindex><a rel="nofollow" class="contacts" href="contacts">КОНТАКТЫ.</a></noindex>
	</div>
<?php } ?>
<div class="product">
	<div class="clear"></div>
	<nav>
		<div id="complexprog_nav">
			<table>
				<tr>
					<?php foreach ($items as $item) { ?>
						<td>
							<a href="<?=$url?>&page=<?=$item->link?>" <?php if ($item->link == $uri) {?>class="active"<?php } ?> <?php if ($item->external) { ?>rel="external"<?php } ?> ><?=$item->title?></a>
						</td>
					<?php } ?>
				</tr>
			</table>
		</div>
	</nav>
	<?php  
		$cycl = count($all_products);
		switch($uri){
			case $items[0]->link: ?>
				<div id="complexprog_desc">
					<table>
						<?php 	for( $j=0; $j<$cycl; $j++ ) {
									$all_products[$j] = array_values($all_products[$j]);
									$num_max = count($all_products[$j]) - 1;
									$z = rand(0, $num_max); 
									?>
									<tr>
										<td>
											<figure>
												<img src="<?=$all_products[$j][$z]->img?>" alt="<?=$all_products[$j][$z]->title?>" title="<?=$all_products[$j][$z]->title?>" />
											</figure>
											<figcaption><?=$all_products[$j][$z]->name?></figcaption>
											<p><mark>Количество: <?=$quantity[$j]?> <?=$syfix_1[$j]?></mark><p>
										</td>
										<td class="middle">
											<?php if( $all_products[$j][0]->benefits ) {
														echo $all_products[$j][0]->benefits;
											}?>
										</td>
									</tr>
									<?php if( $j<$cycl-1 ) { ?>
											<tr>
												<td colspan="2">
													<hr>
												</td>
											</tr>
									<?php } ?>
						<?php } ?>
					</table>
				</div>
			<?php	
				break;
			case $items[1]->link: ?>
				<div class="clear"></div>
				<div id="complexprog_desc">
					<table>
						<?php for( $i=0; $i<$cycl; $i++ ) { 
								$all_products[$i] = array_values($all_products[$i]); ?>
									<tr>
										<td>
											<figure>
												<img src="<?=$all_products[$i][0]->img?>" alt="<?=$all_products[$i][0]->title?>" title="<?=$all_products[$i][0]->title?>" />
											</figure>
											<figcaption><?=$all_products[$i][0]->name?></figcaption>
											<p><mark>Количество: <?=$quantity[$i]?> <?=$syfix_1[$i]?></mark><p>
										</td>
										<td class="middle">
											<form name="save_cmpos" action="<?=$link_save?>&section_id=<?=$product->section_id?>&id=<?=$product->id?>" method="post">
												<table id="complexprog_checkbox">
													<tr>
														<td align="center">
															Вкус.
														</td>
														<td align="center">
															Количество банок.
														</td>
													</tr>
													<?php foreach( $all_products[$i] as $cat_prod ) { ?>
															<tr>
																<td>
																	<?=$cat_prod->short_name?>
																</td>
																<td>
																	<?php $cat_prod->short_name = str_replace(" ", "_", $cat_prod->short_name);?>
																	<input type="number" name="<?=$cat_prod->short_name.$product->id?>" value="<?=$cat_prod->num?>" min="0" max="36" step="1" size="30" >шт.
																</td>
															</tr>	
													<?php } ?>
													<tr>
														<td colspan="2">
															<input name="save_cmpos" type="submit" value="Сохранить изменения">
														</td>
													</tr>
												</table>
											</form>
										</td>
									</tr>	
						<?php } ?>
					</table>
					<?php if( !$cycl ) {?>
						<p>Вариантов для выбора нет.</p>
					<?php } ?>
				</div>
				<?php 
				break;
			case $items[2]->link: ?>
				<div class="clear"></div>
				<div id="complexprog_desc">
					<?php include $product->file_name_tpl.".tpl"; ?>
				</div>
				<?php
				break;	
		} ?>
		
</div>