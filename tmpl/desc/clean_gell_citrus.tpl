<style>
	#clean_gell_citrus .desc_title {
		background-color: #5fb346;
		border-radius: 0px 10px 10px 0px;
		margin: 0px 0px 5px 0px;
		padding: 0px 0px 0px 0px;
		text-align: center;
		height: 80px;
		width: 300px;
	}
	#clean_gell_citrus .desc_title p {
		color: #fff;
		padding: 16px 10px;
		font-size: 100%;
	}
	#clean_gell_citrus  article {
		padding-top: 20px;
	}
	#clean_gell_citrus  article h3{
		margin: 0px;
		padding: 0px;
	}
	#clean_gell_citrus  article p{
		margin: 0px;
		padding: 0px;
	}
	#clean_gell_citrus  article p, #clean_gell_citrus  article li {
		color: #3e434a;
		font-size: 90%;
	}
	#clean_gell_citrus ul li {
		margin: 5px 0px;
	}
	#clean_gell_citrus .video{
		margin: 5px 0px 0px 0px;
		width: 500px;
		height: 330px;
	}
	#clean_gell_citrus .justify {
		text-align: justify;
	}
	#clean_gell_citrus .top {
		vertical-align: top;
	}
	#clean_gell_citrus .middle {
		vertical-align: middle;
	}
</style>
<div id="clean_gell_citrus">
	<div class="desc_title">
		<p>Очищающий гель на основе цитрусовых</p>
	</div>
	<?php if( $product->certificate ) { ?>
		<div class="сertificate">
			<a href="<?=Config::DIR_IMG_CERTIFICATE.$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
		</div>
	<?php } ?>
	<article>
		<section>
			<p>Легкий гель с гранулами жожоба удаляет загрязнения и макияж, оставляя кожу чистой и обновленной.</p>
		</section>
		<section>
			<ul>
				<li>Клинически доказано сокращение жирности кожи уже после первого применения.</li>
				<li>Глубоко очищающие микрогранулы очищают кожу и придают ей сияние.</li>
				<li>Для нормальной и жирной кожи.</li>
				<li>Без добавления парабенов и сульфатов.</li>
				<li>Протестировано дерматологами.</li>
			</ul>
			<p><b>ПРИМЕНЕНИЕ:</b> круговыми массажными движениями аккуратно нанесите средство на влажную кожу. Смойте теплой водой. Затем на сухую кожу нанесите тонизирующий лосьон, антивозрастную сыворотку и увлажняющее средство. Используйте днем и вечером.</p>
		</section>	
		<section>
			<object>
				<iframe class="video" src="http://www.youtube.com/embed/34O3MnaZIPY" frameborder="0" allowfullscreen></iframe>
			</object>
		</section>
	</article>	
</div>