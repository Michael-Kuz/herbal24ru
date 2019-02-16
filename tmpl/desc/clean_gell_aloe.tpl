<style>
	#clean_gell_aloe .desc_title {
		background-color: #5fb346;
		border-radius: 0px 10px 10px 0px;
		margin: 0px 0px 5px 0px;
		padding: 0px 0px 0px 0px;
		text-align: center;
		height: 60px;
		width: 300px;
	}
	#clean_gell_aloe .desc_title p {
		color: #fff;
		padding: 16px 10px;
		font-size: 100%;
	}
	#clean_gell_aloe  article {
		padding-top: 20px;
	}
	#clean_gell_aloe  article h3{
		margin: 0px;
		padding: 0px;
	}
	#clean_gell_aloe  article p{
		margin: 0px;
		padding: 0px;
	}
	#clean_gell_aloe  article p, #clean_gell_aloe  article li {
		color: #3e434a;
		font-size: 90%;
	}
	#clean_gell_aloe ul li {
		margin: 5px 0px;
	}
	#clean_gell_aloe .video{
		margin: 5px 0px 0px 0px;
		width: 500px;
		height: 330px;
	}
	#clean_gell_aloe .justify {
		text-align: justify;
	}
	#clean_gell_aloe .top {
		vertical-align: top;
	}
	#clean_gell_aloe .middle {
		vertical-align: middle;
	}
</style>
<div id="clean_gell_aloe">
	<div class="desc_title">
		<p>Очищающий гель на основе алоэ</p>
	</div>
	<?php if( $product->certificate ) { ?>
		<div class="сertificate">
			<a href="<?=Config::DIR_IMG_CERTIFICATE.$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
		</div>
	<?php } ?>
	<article>
		<section>
			<p>Нежный увлажняющий гель на основе Алоэ деликатно удаляет загрязнения и макияж, оставляя кожу чистой и свежей.</p>
		</section>
		<section>
			<ul>
				<li>Очищающее средство на основе Алоэ для нормальной и сухой кожи.</li>
				<li>Шелковистая пена деликатно удаляет избыточную жирность, загрязнения и макияж, не раздражая кожу.</li>
				<li>Алоэ вера смягчает и увлажняет кожу.</li>
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