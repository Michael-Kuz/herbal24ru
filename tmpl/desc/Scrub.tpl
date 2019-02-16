<style>
	#body_buffing_scrab .desc_title {
		background-color: #842d71;
		border-radius: 0px 10px 10px 0px;
		margin: 0px 0px 0px 0px;
		padding: 0px 0px 0px 0px;
		text-align: center;
		height: 60px;
		width: 300px;
	}
	#body_buffing_scrab .desc_title p {
		color: #fff;
		padding: 4px 10px;
		font-size: 100%;
	}
	#body_buffing_scrab  article {
		padding-top: 20px;
	}
	#body_buffing_scrab  article p, #body_buffing_scrab  article li {
		color: #3e434a;
		font-size: 90%;
	}
	#body_buffing_scrab  #body_buffing_scrab_1 {
		background: url(../images/body_buffing_img.png) no-repeat right center;
		background-size: 325px;
		margin: 0px 0px 20px 0px;
		padding: 0px;
		height: 350px;
	}
	#body_buffing_scrab  #body_buffing_scrab_1 h3{
		padding: 0;
	}
	#body_buffing_scrab  #body_buffing_scrab_1 ul{
		padding: 0px;
		margin-left: 30px;
		width: 40%;
	}
	#body_buffing_scrab  #body_buffing_scrab_1 li{
		margin: 15px 0px;
		text-align: justify;
	}
	#body_buffing_scrab  #body_buffing_scrab_1 h3 {
		margin-top: 25px;
	}
	#body_buffing_scrab  .composition {
		border: 4px double #7ac142;
		background-color: #ccfba2;
		margin: 5px;
		padding: 0px;
		width: 250px;
	}
	#body_buffing_scrab  .composition p {
		margin: 0px;
	}
	#body_buffing_scrab  .justify {
		text-align: justify;
	}
	#body_buffing_scrab .icon1 {
		float: right;
		width: 90px;
	}
	#body_buffing_scrab ul li {
		margin: 15px 0px;
	}
</style>
<div id="body_buffing_scrab">
	<div class="desc_title">
		<p>Эффективное избавление от проблемы "апельсиновой корки"</p>
	</div>
	<?php if( $product->certificate ) { ?>
		<div class="сertificate">
			<a href="<?=Config::DIR_IMG_CERTIFICATE.$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
		</div>
	<?php } ?>
	<article>
		<section>
			<h3>Антицеллюлитная программа Гербалайф</h3>
			<p class="red_line">Несбалансированное питание, малоподвижный образ жизни и нелюбовь к спорту приводят к такой неприятной проблеме, как целлюлит. Раз причин появления проблемы несколько, то и решение должно быть комплексным.</p>
			<p class="red_line">Сбалансированное питание, гимнастика, массаж и Антицеллюлитная программ Гербалайф позволят Вам избавиться от "апельсиновой корки" и обрести хорошее самочувствие и уверенность в себе!</p>
		</section>
		<section>
			<div id="body_buffing_scrab_1">
				<h3>ПРЕИМУЩЕСТВА:</h3>
				<ul>
					<li>Помогает уменьшить проявление эффекта "апельсиновой корки";</li>
					<li>Делает кожу нежной, упругой и эластичной.</li>
				</ul>
			</div>
			<img class="icon1" src="images/body_buffing_scrab.png" alt="Скраб для теба Body Buffing Scrub 200 мл" title="Скраб для теба Body Buffing Scrub 200 мл" />
			<h3>Отшелушивающий скраб для тела.</h3>
			<p class="justify">Ускоряет ошелушивание ороговевших частиц кожи, улучшая кровоснабжение кожи. Повышает эффективность действия Контурного крема для тела.</p>
			<h3>Состав основных ингредиентов:</h3>
			<ul class="justify">
				<li><b>Глицерин</b> поддерживает увлажненность кожи;</li>
				<li><b>Масло жожоба</b> увлажняет кожу;</li>
				<li><b>сложные эфиры жожоба и микрочастицы полиэтилена</b> способствуют отслоению отмерших клеток кожи;</li>
			</ul>
			<div class="clear"></div>
		</section>	
	</article>	
</div>