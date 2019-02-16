<style>
	#antivozrostnaya_serum .desc_title {
		background-color: #5fb346;
		border-radius: 0px 10px 10px 0px;
		margin: 0px 0px 5px 0px;
		padding: 0px 0px 0px 0px;
		text-align: center;
		height: 60px;
		width: 300px;
	}
	#antivozrostnaya_serum .desc_title p {
		color: #fff;
		padding: 16px 10px;
		font-size: 100%;
	}
	#antivozrostnaya_serum  article {
		padding-top: 20px;
	}
	#antivozrostnaya_serum  article h3{
		margin: 0px;
		padding: 0px;
	}
	#antivozrostnaya_serum  article p{
		margin: 0px;
		padding: 0px;
	}
	#antivozrostnaya_serum  article p, #antivozrostnaya_serum  article li {
		color: #3e434a;
		font-size: 90%;
	}
	#antivozrostnaya_serum ul li {
		margin: 5px 0px;
	}
	#antivozrostnaya_serum .video{
		margin: 5px 0px 0px 0px;
		width: 500px;
		height: 330px;
	}
	#antivozrostnaya_serum .justify {
		text-align: justify;
	}
	#antivozrostnaya_serum .top {
		vertical-align: top;
	}
	#antivozrostnaya_serum .middle {
		vertical-align: middle;
	}
</style>
<div id="antivozrostnaya_serum">
	<div class="desc_title">
		<p>Антивозрастная сыворотка</p>
	</div>
	<?php if( $product->certificate ) { ?>
		<div class="сertificate">
			<a href="<?=Config::DIR_IMG_CERTIFICATE.$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
		</div>
	<?php } ?>
	<article>
		<section>
			<p>Универсальная сыворотка способствует уменьшению видимых признаков старения.</p>
		</section>
		<section>
			<ul>
				<li>Способствует сокращению внешних проявлений морщин всего за 7 дней.</li>
				<li>Клинически доказано значительное улучшение гладкости, мягкости и сияния кожи всего за 7 дней.</li>
				<li>Используйте утром и вечером для достижения оптимального результата.</li>
				<li>Подходит для всех типов кожи.</li>
				<li>Без добавления парабенов.</li>
				<li>Протестировано дерматологами.</li>
			</ul>
			<p><b>ПРИМЕНЕНИЕ:</b> наносите после очищающего средства, тонизирующего лосьона и перед использованием увлажняющего средства. Используйте днем и вечером.</p>
		</section>	
		<section>
			<object>
				<iframe class="video" src="http://www.youtube.com/embed/kKnEbwQxlMQ" frameborder="0" allowfullscreen></iframe>
			</object>
		</section>
	</article>	
</div>