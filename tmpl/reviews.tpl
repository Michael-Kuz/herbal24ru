<div id="reviews">
	<?php $n=count($items); $i=0;?>
	<?php foreach ($items as $item) { ?>
		<div id="rev_<?=$item->id?>">
			<img class="review_img" src="<?=$item->avatar?>" alt="отзывы покупателей гербалайф" title="отзывы покупателей гербалайф" />
			<p class="review_text"><b><?=$item->name?></b>    <?=$item->text?></p>
			<div class="clear"></div>
		</div>
		<?php $i++; if( $i < $n) {?>
			<hr/>
		<?php } ?>
	<?php } ?>
</div>

