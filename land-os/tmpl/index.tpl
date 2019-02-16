<div class="fancy-box-parent">
	<div class="fancy-box-background">
		<div class="close-popup">
			<img src="images/but_close.png" alt="Закрыть">
		</div>
		<img src="" alt=""/>
	</div>
</div>
<div class="header">
	<div id="h1" class="wow">
		<h1><?=$title?></h1>
	</div>
	<img class="pic-header-1" src="images/header_pic1.png" alt="" title="" />
	<?=$top_form?>
</div>
<div class="success">
</div>
<div id="advantages">
	<h2>Наши преимущества</h2>
	<div class="adv-wrap">
		<?php foreach( $items_adv as $item ) { ?>
			<div class="item-advnt" >
				<div class="item-hover">
					<div class="circle-icon">
						<img src="<?=$item->icon?>" alt="<?=$item->title?>" title="<?=$item->title?>" />
					</div>
					<p><?=$item->title?></p>
					<hr/>
					<?php if( $item->intro ) { ?>
						<p><?=$item->intro?></p>
					<?php } ?>
				</div>
				<div class="circle-icon wow">
					<img src="<?=$item->icon?>" alt="<?=$item->title?>" title="<?=$item->title?>" />
				</div>
				<p><?=$item->title?></p>
			</div>
		<?php } ?>
	</div>
</div>
<div id="steps">
	<h2>Порядок работы</h2>
	<div class="adv-wrap">
		<?php foreach( $items_stp as $item ) { ?>
			<div class="item-steps" >
				<div class="item-hover">
					<div class="circle-icon">
						<img src="<?=$item->icon?>" alt="<?=$item->title?>" title="<?=$item->title?>" />
					</div>
					<p><?=$item->title?></p>
					<hr/>
					<?php if( $item->intro ) { ?>
						<p><?=$item->intro?></p>
					<?php } ?>
				</div>
				<div class="circle-icon wow">
					<img src="<?=$item->icon?>" alt="<?=$item->title?>" title="<?=$item->title?>" />
				</div>
				<p><?=$item->title?></p>
			</div>
		<?php } ?>
	</div>
</div>
<div id="separator">
	<p>Остались вопросы?</p>
	<p>Воспользуйтесь бесплатной консультацией!</p>
	<button class="button-1" data-hover="Оформить консультацию" >Оформить консультацию</button>
</div>
<div id="efficiency">
	<h2>Почему наши лендинги эффективны</h2>
	<div class="adv-wrap">
		<?php foreach( $items_eff as $item ) { ?>
			<div class="item-effic" >
				<div class="item-hover">
					<div class="circle-icon">
						<img src="<?=$item->icon?>" alt="<?=$item->title?>" title="<?=$item->title?>" />
					</div>
					<p><?=$item->title?></p>
					<hr/>
					<?php if( $item->intro ) { ?>
						<p><?=$item->intro?></p>
					<?php } ?>
				</div>
				<div class="circle-icon wow">
					<img src="<?=$item->icon?>" alt="<?=$item->title?>" title="<?=$item->title?>" />
				</div>
				<p><?=$item->title?></p>
			</div>
		<?php } ?>
	</div>
</div>
<div id="works">
	<h2>Работы и цены</h2>
	<div class="works-wrap">
		<div class="slider-win wow">
			<ul>
				<?php $i=0; foreach( $items_works as $item ) { $i++;?>
					<li class="slide-<?=$i?>">
						<div class="item-works">
							<div class="icon-work">	
								<img src="<?=$item->icon?>"  data-img="<?=$item->full_img?>" alt="<?=$item->title?>" />
							</div>
							<div class="reference">
								<div class="v-separator" ></div>
								<div class="statistics">
									<p>Цена разработки <strong><?=$item->price?> рублей</strong></p>
									<p>Цена заявки <strong><?=$item->bid?> рублей</strong></p>
									<p>Число заявок в неделю <strong><?=$item->n_per_week?></strong></p>
								</div>
							</div>
						</div>
					</li>
				<?php } ?>
			</ul>
		</div>
		<nav>
			<div class="arrow-left"><img src="images/arrow_left.png" alt="" title="" /></div>
			<div class="arrow-right"><img src="images/arrow_right.png" alt="" title="" /></div>
		</nav>
	</div>
</div>
<div id="guarantee">
	<h2>Гарантия</h2>
	<div class="adv-wrap flex-v-align wow">
		<div class="v-separator" ></div>
		<div class="guar-items">
			<p>Я гарантирую наивысшее качество своей работы.<br>Но подобные гарантии дают все!</p>
			<p>Поэтому я делаю очень просто: не требую никакой предоплаты (Вы оплачиваете только дизайн-макет),<br>если он понравится.</p>
			<p>Я просто всё делаю, а потом показываю Вам  результат в виде эффективного лендинга,<br>анализа проведённых SPLIT-тестов, полностью настроенной и оптимизированной рекламной кампании.</p>
			<p>По этой причине я не боюсь работать без предоплаты.</p>
			<p>Однако, если Вам не понравится, то Вы сможете отказаться от лендинга и не платить за него.</p>
			<p>В любом случае в Вашем распоряжении останется готовый дизайн-макет лендинга, с которым Вы<br>сможете обратиться к другому разработчику.</p>
		</div>
	</div>
</div>
<?=$bottom_form?>
<?php if( $_SESSION["split"] == "anima" ) { ?>
	<script>
		ini_animation();
	</script>
<?php } ?>
		