<div class="product">
	<form  name="complexprog" action="<?=$link_qty?>&section_id=<?=$product->section_id?>&id=<?=$product->id?>" method="post">
		<img class="product_img" src="<?=$product->img?>" alt="<?=$product->title?>" title="<?=$product->title?>" />
		<div id="head_desc">
			<p><b>Каталог:</b> <?=$section?></p>
			<p><b>Название:</b> <?=$product->name?></p>
			<?php if( $auth_user ) {?>
				<p><b>Стоимость программы:</b> на <input type="number" name="num_months" min="1" max="12" step="1" value="<?=$num_months?>" > <?=$syfix?>.</p>
				<div class="price_product"><?=$complex_sum?> РУБ.</div>
				<div class="text-center">
					<input type="submit" name="complexprog" value="Пересчитать" >
				</div>
			<?php } ?>
		</div>
	</form>
</div>	
<div class="clear"></div>
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
					<?php include $product->file_name_tpl.".tpl"; ?>
				</div>
				<?php
				break;	
		} ?>
		
</div>