<style>
	#night_renewing_cream .desc_title {
		background-color: #5fb346;
		border-radius: 0px 10px 10px 0px;
		margin: 0px 0px 5px 0px;
		padding: 0px 0px 0px 0px;
		text-align: center;
		height: 60px;
		width: 300px;
	}
	#night_renewing_cream .desc_title p {
		color: #fff;
		padding: 16px 10px;
		font-size: 100%;
	}
	#night_renewing_cream  article {
		padding-top: 20px;
	}
	#night_renewing_cream  article h3{
		margin: 0px;
		padding: 0px;
	}
	#night_renewing_cream  article p{
		margin: 0px;
		padding: 0px;
	}
	#night_renewing_cream  article p, #night_renewing_cream  article li {
		color: #3e434a;
		font-size: 90%;
	}
	#night_renewing_cream ul li {
		margin: 5px 0px;
	}
	#night_renewing_cream .video{
		margin: 5px 0px 0px 0px;
		width: 500px;
		height: 330px;
	}
	#night_renewing_cream .justify {
		text-align: justify;
	}
	#night_renewing_cream .top {
		vertical-align: top;
	}
	#night_renewing_cream .middle {
		vertical-align: middle;
	}
</style>
<div id="night_renewing_cream">
	<div class="desc_title">
		<p>Ночной обновляющий крем</p>
	</div>
	<?php if( $product->certificate ) { ?>
		<div class="сertificate">
			<a href="<?=Config::DIR_IMG_CERTIFICATE.$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
		</div>
	<?php } ?>
	<article>
		<section>
			<p>Роскошный насыщенный крем способствует длительному увлажнению кожи во время сна. Утром кожа гладкая и шелковистая.</p>
		</section>
		<section>
			<ul>
				<li>Способствует сокращению внешних проявлений мимических и возрастных морщин всего за 7 дней.</li>
				<li>Обеспечивает заметное улучшение внешнего вида кожи всего через 7 дней.</li>
				<li>Кожа в 2 раза более увлажненная в течение 8 часов.</li>
				<li>Подходит для всех типов кожи.</li>
				<li>Без добавления парабенов.</li>
				<li>Протестировано дерматологами.</li>
			</ul>
			<p><b>ПРИМЕНЕНИЕ:</b> наносите после очищающего средства, тонизирующего лосьона и антивозрастной сыворотки. Используйте вечером.</p>
		</section>	
		<section>
			<object>
				<iframe class="video" src="http://www.youtube.com/embed/kYs1hVnpoh4" frameborder="0" allowfullscreen></iframe>
			</object>
		</section>
	</article>	
</div>