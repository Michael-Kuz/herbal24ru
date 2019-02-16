<style>
	#daily_moisturizer_cream_skin_radiance .desc_title {
		background-color: #5fb346;
		border-radius: 0px 10px 10px 0px;
		margin: 0px 0px 5px 0px;
		padding: 0px 0px 0px 0px;
		text-align: center;
		height: 80px;
		width: 300px;
	}
	#daily_moisturizer_cream_skin_radiance .desc_title p {
		color: #fff;
		padding: 16px 10px;
		font-size: 100%;
	}
	#daily_moisturizer_cream_skin_radiance  article {
		padding-top: 20px;
	}
	#daily_moisturizer_cream_skin_radiance  article h3{
		margin: 0px;
		padding: 0px;
	}
	#daily_moisturizer_cream_skin_radiance  article p{
		margin: 0px;
		padding: 0px;
	}
	#daily_moisturizer_cream_skin_radiance  article p, #daily_moisturizer_cream_skin_radiance  article li {
		color: #3e434a;
		font-size: 90%;
	}
	#daily_moisturizer_cream_skin_radiance ul li {
		margin: 5px 0px;
	}
	#daily_moisturizer_cream_skin_radiance .video{
		margin: 5px 0px 0px 0px;
		width: 500px;
		height: 330px;
	}
	#daily_moisturizer_cream_skin_radiance .justify {
		text-align: justify;
	}
	#daily_moisturizer_cream_skin_radiance .top {
		vertical-align: top;
	}
	#daily_moisturizer_cream_skin_radiance .middle {
		vertical-align: middle;
	}
</style>
<div id="daily_moisturizer_cream_skin_radiance">
	<div class="desc_title">
		<p>Ежедневный увлажняющий крем для естественного сияния кожи</p>
	</div>
	<?php if( $product->certificate ) { ?>
		<div class="сertificate">
			<a href="<?=Config::DIR_IMG_CERTIFICATE.$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
		</div>
	<?php } ?>
	<article>
		<section>
			<p>Мультифункциональный увлажняющий крем усиливает естественное сияние кожи. Кожа выглядит сияющей даже без макияжа.</p>
		</section>
		<section>
			<ul>
				<li>Способствует сокращению внешних проявлений мимических и возрастных морщин всего за 7 дней.</li>
				<li>Кожа выглядит более сияющей и гладкой всего через 7 дней.</li>
				<li>Кожа в 2 раза более увлажненная в течение 8 часов.</li>
				<li>Подходит для всех типов кожи.</li>
				<li>Без добавления парабенов.</li>
				<li>Протестировано дерматологами.</li>
			</ul>
			<p><b>ПРИМЕНЕНИЕ:</b> наносите после очищающего средства, тонизирующего лосьона и антивозрастной сыворотки.</p>
		</section>	
		<section>
			<object>
				<iframe class="video" src="http://www.youtube.com/embed/kYs1hVnpoh4" frameborder="0" allowfullscreen></iframe>
			</object>
		</section>
	</article>	
</div>