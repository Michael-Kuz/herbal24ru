<div class="block">
	<div class="header"><p><?=$title?></p></div>
	<div class="content">
		<nav>
			<?php $n=count($items); $i=0;?>
			<?php foreach ($items as $item) { ?>
				<div id="rev_<?=$item->id?>">
					<table>
						<tr>
							<td>
								<a href="<?=$link_add_review?>">
									<img class="avatar" src="<?=$item->avatar?>" alt="отзывы" title="отзывы о продуктах гербалайф" />
								</a>
							</td>
							<td>
								<a href="<?=$link_add_review?>">
									<p class="text_block_right"><b><?=$item->name?></b> <?=$item->text?></p>
								</a>	
							</td>
						</tr>	
					</table>
				</div>
				<div class="clear"></div>
				<?php $i++; if( $i < $n) {?>
					<hr/>
				<?php } ?>
			<?php } ?>
		</nav>
	</div>
	<div class="block_footer">
		<p><a href="<?=$link_add_review?>">ДОБАВИТЬ ОТЗЫВ</a></p>
	</div>
</div>
