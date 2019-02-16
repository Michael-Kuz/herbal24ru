<style>
	#protecting_cream_spf30 .desc_title {
		background-color: #5fb346;
		border-radius: 0px 10px 10px 0px;
		margin: 0px 0px 5px 0px;
		padding: 0px 0px 0px 0px;
		text-align: center;
		height: 60px;
		width: 300px;
	}
	#protecting_cream_spf30 .desc_title p {
		color: #fff;
		padding: 16px 10px;
		font-size: 100%;
	}
	#protecting_cream_spf30  article {
		padding-top: 20px;
	}
	#protecting_cream_spf30  article h3{
		margin: 0px;
		padding: 0px;
	}
	#protecting_cream_spf30  article p{
		margin: 0px;
		padding: 0px;
	}
	#protecting_cream_spf30  article p, #protecting_cream_spf30  article li {
		color: #3e434a;
		font-size: 90%;
	}
	#protecting_cream_spf30 ul li {
		margin: 5px 0px;
	}
	#protecting_cream_spf30 .video{
		margin: 5px 0px 0px 0px;
		width: 500px;
		height: 330px;
	}
	#protecting_cream_spf30 .justify {
		text-align: justify;
	}
	#protecting_cream_spf30 .top {
		vertical-align: top;
	}
	#protecting_cream_spf30 .middle {
		vertical-align: middle;
	}
</style>
<div id="protecting_cream_spf30">
	<div class="desc_title">
		<p>Защищающий крем SPF30</p>
	</div>
	<?php if( $product->certificate ) { ?>
		<div class="сertificate">
			<a href="<?=Config::DIR_IMG_CERTIFICATE.$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
		</div>
	<?php } ?>
	<article>
		<section>
			<p>Обеспечивает длительное увлажнение кожи и защиту от излучения UVA/UVB.</p>
		</section>
		<section>
			<ul>
				<li>Способствует сокращению внешних проявлений мимических и возрастных морщин всего за 7 дней.</li>
				<li>Кожа в 2 раза более увлажненная в течение 8 часов.</li>
				<li>Кожа выглядит более сияющей и гладкой всего через 7 дней.</li>
				<li>Защищает кожу от излучения UVA/UVB.</li>
				<li>Без добавления парабенов.</li>
				<li>Протестировано дерматологами.</li>
			</ul>
			<p><b>ПРИМЕНЕНИЕ:</b> наносите после применения очищающего средства, тонизирующего лосьона и антивозрастной сыворотки. Используйте днем или перед выходом на солнце.</p>
		</section>	
		<section>
			<object>
				<iframe class="video" src="http://www.youtube.com/embed/wKJhm-03KOQ" frameborder="0" allowfullscreen></iframe>
			</object>
		</section>
	</article>	
</div>