<div class="center_block">
	<div class="center_header">
		<h1><?=$title?></h1>
	</div>
	<?php if (isset($hornav)) { ?>
		<?=$hornav?>
	<?php } ?>	
	<div class="center_content">
		<?php if ($error_len) { ?><p class="message">Слишком короткий поисковый запрос!</p><?php } ?>
		<p>Вы искали: <b><?=$query?></b></p>
		<p>Всего найдено: <b><?=count($data)?></b> записей</p>
		<table>
			<?php $i=0; ?>
			<?php foreach( $data as $d ){?>
				<?php if( $i%4 == 0 ){ ?>
					<tr>
				<?php } ?>	
					<td>
						<div class="intro_product">
							<a class="link_description" href="<?=$link_desc?>?id=<?=$d->id?>&section_id=<?=$d->section_id?>" >
								<img class="icon_product" src="<?=$d->img?>" alt="<?=$d->name?>" title="<?=$d->title?>" />
								<div class="name_product"><?=$d->name?></div>
							</a>	
							<?php if( $auth_user ) {?>
								<div class="price_product"><?=$d->{$auth_user->discount}?> РУБ.</div>
							<?php }else {?>
								<div class="price_product"><?=$d->price_25?> РУБ.</div>
							<?php }?>
							<a class="link_cart" href="<?=$add_cart?>&section_id=<?=$d->section_id?>&id=<?=$d->id?>"><p>В КОРЗИНУ</p></a>
							<?php if( $d->exist ) {?>
								<p class="exist_product">В наличии</p>
							<?php } else {?>
								<p class="no_exist_product">Нет в нал.</p>
							<?php } ?>	
							<a class="link_likes" href="<?=$link_likes?>"><img src="images/heart_likes.png" alt="лайки"></a>
							<p class="number_likes"><?=$d->likes?></p>
						</div>
					</td>
				<?php if( ($i+1)%4 == 0 ){ ?>
					</tr>
				<?php } $i++; ?>	
			<?php } ?>
		</table>
	</div>
</div>	