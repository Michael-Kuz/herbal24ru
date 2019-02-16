<table>
	<?php $i=0; ?>
	<?php foreach( $products as $product ){?>
		<?php if( $i%2 == 0 ){ ?>
			<tr>
		<?php } ?>
			<td>
				<div class="intro_product">
					<?php 	
						$alias = SefDB::getAliasOnLink("/$link_desc?id=$product->id&section_id=$product->section_id").Config::SEF_SUFFIX;
						if( !str_replace(Config::SEF_SUFFIX, "", $alias) )
							$alias = URL::get("$link_desc","",array("id"=>$product->id,"section_id"=>$product->section_id));
					?>
					<a class="link_description" href="<?=$alias?>" >
						<img class="icon_product" src="<?=$product->img?>" alt="<?=$product->name?>" title="<?=$product->title?>" />
						<div class="name_product"><?=$product->name?></div>
					</a>	
					<?php if( $auth_user ) {?>
						<div class="price_product"><?=$product->{$auth_user->discount}?> РУБ.</div>
					<?php }else {?>
					<!--
						<div class="price_product">
							<span class="rub">Р</span>
							<span class="rub">Р</span>
							<span class="rub">Р</span>
							<span>&nbsp;РУБ.</span>
						</div>
					-->
					<?php }?>
					<?php if( $product->exist ) {?>
					<!--
						<p class="exist_product">В наличии</p>
					-->
					<?php } else {?>
					<!--
						<p class="no_exist_product">Нет в нал.</p>
					-->
					<?php } ?>	
					<noindex><a rel="nofollow" class="link_likes" href="<?=$link_likes?>&section_id=<?=$product->section_id?>&id=<?=$product->id?>&likes=<?=$product->likes?>"><img src="images/heart_likes.png" alt="лайки"></a></noindex>
					<p class="number_likes"><?=$product->likes?></p>
				</div>
			</td>
		<?php if( ($i+1)%2 == 0 ){ ?>
			</tr>
		<?php } $i++; ?>	
	<?php } ?>
	<?php while( $i%2 != 0) { ?>
				<td></td>
				<?php if( ($i+1)%2 == 0 ){ ?>
						</tr>
				<?php } $i++; ?>
	<?php } ?>
</table>