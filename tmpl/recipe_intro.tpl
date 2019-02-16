<div class="product">
	<img class="recipe_img" src="<?=$product->img?>" alt="<?=$product->name?>" title="<?=$product->title?>" />
</div>
<div class="clear"></div>	
<?php if( $product->others )  { ?>
	<div id="recipe">
		<h3>Продукты Гербалайф, которые понадобятся Вам для приготовления этого рецепта:</h3>
		<?=$product_icon?>
	</div>
<?php } ?>	
	
