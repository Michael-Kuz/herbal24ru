<div id="video">
	<?php foreach( $products as $product ){?>
		<div class="blogVideo">
			<div class='blogVideo_youtube'>
				<iframe class='blogVideo_youtube_iframe'  src="<?=$product->link?>" frameborder="0" allowfullscreen></iframe>
			</div>
			<div class="blogVideo_title"><?=$product->name?></div>
			<div class='blogVideo_meta'>
				<a rel="nofollow" class="link_likes "href="<?=$link_likes?>&section_id=<?=$product->section_id?>&id=<?=$product->id?>&likes=<?=$product->likes?>"><img src="images/heart_likes.png" alt="лайки"></a>
				<p class="number_likes"><?=$product->likes?></p>
			</div>
		</div>
	<?php } ?>
</div>