<div class="center_block">
	<div class="center_header">
		<h1><?=$title?></h1>
	</div>
	<?php if (isset($hornav)) { ?>
		<?=$hornav?>
	<?php } ?>	
	<div class="center_content">
		<?=$reviews?>
		<div id="add_review">
			<h2 class="add_review_header">Здесь Вы можете добавить свой отзыв.</h2>
			<div id="add_avatar">
				<p>Добавить фото</p>
				<img class="avatar_img" src="<?=$avatar?>" alt="Аватар" />
			</div>
			<div class="clear"></div>
			<div class="avatar_param">
				<p>Допустимые форматы - GIF, JPG, PNG</p>
				<p>Размер изображения должен быть не более 50 КБ!</p>
				<p>Изображение должно быть квадратным (иначе могут не соблюдаться пропорции)!</p>
			</div>
			<?=$form_avatar?>
		</div>
	</div>
</div>	