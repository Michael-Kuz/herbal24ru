<div id="promo_image">
	<div class='wrap-slider'>
		<input type="radio" name="point" id="slide1" <?php if( !$slide_checked ) echo 'checked';?> >
		<input type="radio" name="point" id="slide2" <?php if( $slide_checked == 2 ) echo 'checked';?> >
		<input type="radio" name="point" id="slide3" <?php if( $slide_checked == 3 ) echo 'checked';?> >
		<div class="slider">
			<a class='slides slide1' href="product.html?id=90&section_id=1" alt="Гербалайф" title="Гербалайф">
				<img  src="<?=Config::DIR_PROMO_IMG."f1_evening.png"?>" alt="Гербалайф" title="Гербалайф" />
			</a>
			<a class='slides slide2' href="product.html?id=102&section_id=1" alt="Гербалайф" title="Гербалайф">
				<img src="<?=Config::DIR_PROMO_IMG."F1_2kg.png"?>" alt="Гербалайф" title="Гербалайф" />
			</a>
			<a class='slides slide3' href="product.html?id=100&section_id=1" alt="Гербалайф" title="Гербалайф">
				<img src="<?=Config::DIR_PROMO_IMG."herbalifeline_max.png"?>" alt="Гербалайф" title="Гербалайф" />
			</a>
		</div>
		<div class="controls">
			<label for="slide1"></label>
			<label for="slide2"></label>
			<label for="slide3"></label>
		</div>
	</div>
	<script type="module" src="/js/index_slider.js"></script>
</div>