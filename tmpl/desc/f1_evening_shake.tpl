<style>
#f1_evening_shake .desc_title {
	background-color: #376092;
	border-radius: 0px 10px 10px 0px;
	margin: 0px 0px 0px 0px;
	padding: 0px 0px 0px 0px;
	text-align: center;
	height: 67px;
	width: 410px;
}
#f1_evening_shake .desc_title p {
	color: #fff;
	margin: 0px 0px 0px 0px;
	padding: 10px 0px 0px 0px;
	font-size: 100%;
}

#f1_evening_shake section {
	margin: 20px 0px 0px 0px;
	padding: 0px 0px 0px 0px;
}

#f1_evening_shake .inside-nav{
	display: flex;
	justify-content: center;
	flex-wrap: nowrap;
	margin-top: 30px;
}

#f1_evening_shake .tab-evening-shake {
	background-color: #eee;
	border-radius: 25px 0px 0px 0px;
	box-shadow: 2px -2px 2px rgba(0,0,0,0.2);
	position: relative;
	z-index: 100;
}
#f1_evening_shake .active {
	border-top: 2px solid  #6BC735;
	background-color: #fff;
	z-index: 300;
}
#f1_evening_shake .tab-evening-shake:hover{
	background-color: #fff;
}
#f1_evening_shake .negative-m div{
	margin-bottom: -2px;
}
#f1_evening_shake .negative-m div:not(:first-child){
	margin-left: -5px;
}
#f1_evening_shake .negative-m div:last-child{
	margin-right: -1px;
}
#f1_evening_shake .list-style a{
	color: #3e434a;
	box-sizing: border-box;
	display: table-cell;
	font-size: 90%;
	padding: 0px 15px;
	text-decoration: none;
	text-align: center;
	vertical-align: middle;
	height: 50px;
}

#f1_evening_shake .iveningShakeContent{
	box-shadow: 1px 1px 5px rgba(0,0,0,0.5);
	
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	
	margin: 0px 10px;
	padding: 30px 20px 20px 20px;
	position: relative;
	z-index: 200;
}
#f1_evening_shake .iveningShakeContent_title{
	background-color: rgba(122,193,66,1);
	box-sizing: border-box; 
	color: #fff;
	font-size: 1.5em;	
	
	display: flex;
	justify-content: center;
	align-items: center;
	
	margin-bottom: 20px;
	position: relative;	
	width: 90%;
	height: 50px;
}

	#f1_evening_shake .iveningShakeContent_title:after{
		border-top: 10px solid rgba(107,199,53,1);
		border-left: 20px solid rgba(107,199,53,0);
		border-right: 20px solid rgba(107,199,53,0);
		content: "";
		width: 0px;
		height: 0px;
		
		position: absolute;
		left: calc(50% - 15px);
		top: 50px;
	}

#f1_evening_shake .iveningShakeContent_list{
	color: rgba(62,67,74,1);
	font-size: 0.9em;
	margin: 20px 0px;
	list-style-image: url(../images/galka.png);
}

#f1_evening_shake .iveningShakeContent_icon{
	display: flex;
	flex-wrap: wrap;
	justify-content: center;

	margin: 30px 0px;
	text-align: center;
	width: 150px;
}

#f1_evening_shake .iveningShakeContent_icon-octagon{
	width: 100px;
	height: 100px;
}

#f1_evening_shake .iveningShakeContent_icon-title{
	color: rgba(62,67,74,1);
	font-size: 0.9em;
}

#f1_evening_shake .iveningShakeContent_icon-title span{
	color: rgba(122,193,66,1);
	font-size: 1.2em;
	font-weight: 600;
}

.preview_div{
	background-color: rgba( 255,255,255,1);
	position: absolute;
	top: 0;
	
	display: flex;
	justify-content: center;
		
	min-width: 100%;
	min-height: 100%;
	z-index: 300;
}

.preview_img{
	//margin-top: auto;
	display: block;
	//width: 100%;
}

</style>

<div id="f1_evening_shake">
	<div class="desc_title">
		<p>УЖИН, КОТОРЫЙ ВАМ НУЖЕН<br>НЕТ вечернему перееданию, ДА полноценному сну</p>
	</div>
	<?php if( $product->certificate ) { ?>
		<div class="сertificate">
			<a href="<?=Config::DIR_IMG_CERTIFICATE.$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
		</div>
	<?php } ?>
	<article>
		<section>
			<h2>Формула 1 Вечерний коктейль</h2>
			<p class="red_line">Все необходимые питательные вещества, которые нужны для сбалансированного ужина без риска вечернего и ночного переедания, всегда у вас под рукой. В своей основе Вечерний коктейль содержит продукт-бестселлер Herbalife – протеиновый коктейль Формула 1. Это готовый к употреблению комплекс из необходимых макро- и микро-элементов, фитонутриентов и клетчатки.</p>
			<p class="red_line">Формула 1 Вечерний коктейль содержит аминокислоту триптофан и углевод мальтодекстрин, способствующий повышению уровня триптофана в крови. Из триптофана далее образуется мелатонин, ответственный за суточные ритмы и здоровый полноценный сон.</p>
			<nav class="inside-nav list-style .negative-m">
				<div class="tab-evening-shake <?php if( URL::addGET( $tab, "tab", 1 ) == $tab_active ) { ?>active<?php  } ?>"><a href="<?=URL::addGET( $tab, "tab", 1 )?>">Ф1 вечерний коктейль</a></div>
				<div class="tab-evening-shake <?php if( URL::addGET( $tab, "tab", 2 ) == $tab_active ) { ?>active<?php  } ?>"><a href="<?=URL::addGET( $tab, "tab", 2 )?>">Использование</a></div>
				<div class="tab-evening-shake <?php if( URL::addGET( $tab, "tab", 3 ) == $tab_active ) { ?>active<?php  } ?>"><a href="<?=URL::addGET( $tab, "tab", 3 )?>">Видео</a></div>
				<div class="tab-evening-shake <?php if( URL::addGET( $tab, "tab", 4 ) == $tab_active ) { ?>active<?php  } ?>"><a href="<?=URL::addGET( $tab, "tab", 4 )?>">Рецепты</a></div>
			</nav>
			<div class="iveningShakeContent">
				<?php if( URL::addGET( $tab, "tab", 1 ) == $tab_active ){ ?>
					<div class="iveningShakeContent_title">
						Что такое Вечерний коктейль:
					</div>
					<ul class="iveningShakeContent_list">
						<li>Вечерняя еда без лишних калорий</li>
						<li>1 продукт = 2 использования: ужин или легкий вечерний перекус перед сном</li>
						<li>Способствует предотвращению вечернего и ночного переедания</li>
						<li>Насыщает без чувства тяжести</li>
						<li>Способствует полноценному сну и хорошему самочувствию на следующий день</li>
						<li>Безграничное количество рецептов</li>
						<li>Победитель международной премии «Инновационный продукт года 2017»</li> 
					</ul>
					<div class="iveningShakeContent_icon">
						<img class="iveningShakeContent_icon-octagon" src="../images/f1_evening_1.png" alt="" title="" >
						<div class="iveningShakeContent_icon-title">Содержит достаточно белка</div>
					</div>
					<div class="iveningShakeContent_icon">
						<img class="iveningShakeContent_icon-octagon" src="../images/f1_evening_2.png" alt="" title="">
						<div class="iveningShakeContent_icon-title">Содержит клетчатку</div>
					</div>
					<div class="iveningShakeContent_icon">
						<img class="iveningShakeContent_icon-octagon" src="../images/f1_evening_3.png" alt="" title="">
						<div class="iveningShakeContent_icon-title">Содержит полезные жиры</div>
					</div>
					<div class="iveningShakeContent_icon">
						<img class="iveningShakeContent_icon-octagon" src="../images/f1_evening_4.png" alt="" title="">
						<div class="iveningShakeContent_icon-title">Низкий уровень сахара</div>
					</div>
					<div class="iveningShakeContent_icon">
						<img class="iveningShakeContent_icon-octagon" src="../images/f1_evening_5.png" alt="" title="">
						<div class="iveningShakeContent_icon-title">Лёгкий, но сытный</div>
					</div>
					<div class="iveningShakeContent_icon">
						<img class="iveningShakeContent_icon-octagon" src="../images/f1_evening_6.png" alt="" title="">
						<div class="iveningShakeContent_icon-title">Низкокалорийный</div>
					</div>
					<?php }else if( URL::addGET( $tab, "tab", 2 ) == $tab_active ){ ?>
						<div class="iveningShakeContent_title">1 ПРОДУКТ = 2 ИСПОЛЬЗОВАНИЯ</div>
						<div class="iveningShakeContent_icon-title"><span>ВАР1:</span> Замена ужина - использование Вечернего коктейля около 6-7 часов вечера</div>
						<div class="iveningShakeContent_icon">
							<img class="iveningShakeContent_icon-octagon" src="../images/f1_evening_7.png" alt="" title="">
							<div class="iveningShakeContent_icon-title"><span>+ МОЛОКО ИЛИ ЙОГУРТ</span><br>с низким содержанием жира для полноценного приема пищи</div>
						</div>
						<div class="iveningShakeContent_icon">
							<img class="iveningShakeContent_icon-octagon" src="../images/f1_evening_8.png" alt="Формула 3" title="Формула 3">
							<div class="iveningShakeContent_icon-title"><span>+ ФОРМУЛА 3</span><br>для увеличения количества белка и обеспечения насыщения</div>
						</div>
						<div class="iveningShakeContent_icon">
							<img class="iveningShakeContent_icon-octagon" src="../images/f1_evening_9.png" alt="" title="">
							<div class="iveningShakeContent_icon-title"><span>+ОВОЩИ/ФРУКТЫ/ЗЕЛЕНЬ</span><br>для дополнительной питательной ценности и достижения нормы потребления 5 порций овощей/фруктов в день</div>
						</div>
						<div class="iveningShakeContent_icon-title"><span>ВАР1:</span> Последний прием пищи в течение дня - легк рперекус перед сном за 1-2 часа до отхода ко сну</div>
						<div class="iveningShakeContent_icon">
							<img class="iveningShakeContent_icon-octagon" src="../images/f1_evening_10.png" alt="" title="">
							<div class="iveningShakeContent_icon-title"><span>+ВОДА</span><br>для меньшей калорийности</div>
						</div>
						<div class="iveningShakeContent_icon">
							<img class="iveningShakeContent_icon-octagon" src="../images/f1_evening_11.png" alt="" title="">
							<div class="iveningShakeContent_icon-title">получение<br><span>МАКРО- И МИКРОНУТР-<br>ИЕНТОВ</span><br>перед ночным отдыхом</div>
						</div>
						<div class="iveningShakeContent_icon">
							<img class="iveningShakeContent_icon-octagon" src="../images/f1_evening_12.png" alt="" title="">
							<div class="iveningShakeContent_icon-title">способствует<br><span>ПОЛНОЦЕННОМУ СНУ</span><br>и хорошему самочувствию на следующий день</div>
						</div>
					<?php }else if( URL::addGET( $tab, "tab", 3 ) == $tab_active ){ ?>
							<div class="iveningShakeContent_title">Видео тренинг о Вечернем коктейле.</div>
							<object width="500" height="300">
								<iframe width="500" height="300" src="http://www.youtube.com/embed/j1wI00LfRlo" frameborder="0" allowfullscreen></iframe>
							</object>
					<?php }else if( URL::addGET( $tab, "tab", 4 ) == $tab_active ){ ?>
							<?php if( $show_img ){ ?>
								<?php $img = explode("/",$show_img);?>
								<?php $recipes = RecipesDB::getOnImg( $img[count($img)-1] ); foreach( $recipes as $recipe );?>
								<div class="product">
									<img class="recipe_img" src="<?=$show_img?>" alt="<?=$recipe->name?>" title="<?=$recipe->title?>" />
								</div>
								<div class="clear"></div>	
							<?php }else { ?>
								<div class="iveningShakeContent_title">
									12 лучших рецептов
								</div>
								<?php $recipes = RecipesDB::getAllOnCategoryID(2); ?>
								<table>
									<?php $i=0; ?>
									<?php foreach( $recipes as $recipe ){?>
										<?php if( $i%2 == 0 ){ ?>
											<tr>
										<?php } ?>
											<td>
												<div class="intro_product">
													<a class="link_description" href="<?=$tab?>&tab=4&show_img=<?=$recipe->img?>">
														<img class="icon_product" <?php if($recipe->preview) { ?>src="<?=$recipe->preview?>"<?php }else { ?> src="<?=$recipe->img?>"<?php } ?> alt="<?=$recipe->name?>" title="<?=$recipe->title?>" />
														<div class="name_product"><?=$recipe->name?></div>
													</a>	
													<noindex><a rel="nofollow" class="link_likes" href="/function.php?func=likes&section_id=<?=$recipe->section_id?>&id=<?=$recipe->id?>&likes=<?=$recipe->likes?>"><img src="images/heart_likes.png" alt="лайки"></a></noindex>
													<p class="number_likes"><?=$recipe->likes?></p>
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
							<?php } ?>	
					<?php } ?>
			</div>
		</section>	
	</article>
</div>

