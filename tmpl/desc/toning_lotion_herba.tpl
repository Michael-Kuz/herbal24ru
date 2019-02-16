<style>
	#toning_lotion_herba .desc_title {
		background-color: #5fb346;
		border-radius: 0px 10px 10px 0px;
		margin: 0px 0px 5px 0px;
		padding: 0px 0px 0px 0px;
		text-align: center;
		height: 60px;
		width: 300px;
	}
	#toning_lotion_herba .desc_title p {
		color: #fff;
		padding: 16px 10px;
		font-size: 100%;
	}
	#toning_lotion_herba  article {
		padding-top: 20px;
	}
	#toning_lotion_herba  article h3{
		margin: 0px;
		padding: 0px;
	}
	#toning_lotion_herba  article p{
		margin: 0px;
		padding: 0px;
	}
	#toning_lotion_herba  article p, #toning_lotion_herba  article li {
		color: #3e434a;
		font-size: 90%;
	}
	#toning_lotion_herba ul li {
		margin: 5px 0px;
	}
	#toning_lotion_herba .video{
		margin: 5px 0px 0px 0px;
		width: 500px;
		height: 330px;
	}
	#toning_lotion_herba .justify {
		text-align: justify;
	}
	#toning_lotion_herba .top {
		vertical-align: top;
	}
	#toning_lotion_herba .middle {
		vertical-align: middle;
	}
</style>
<div id="toning_lotion_herba">
	<div class="desc_title">
		<p>Тонизирующий лосьон на основе трав</p>
	</div>
	<?php if( $product->certificate ) { ?>
		<div class="сertificate">
			<a href="<?=Config::DIR_IMG_CERTIFICATE.$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
		</div>
	<?php } ?>
	<article>
		<section>
			<p>Тонизирующий лосьон увлажняет и освежает кожу.</p>
		</section>
		<section>
			<ul>
				<li>Использование утром и вечером помогает подготовить кожу к лучшему усвоению сыворотки и увлажняющих средств для оптимального результата.</li>
				<li>Деликатно увлажняет, придает ощущение свежести и чистоты, не стягивая кожу.</li>
				<li>Подходит для всех типов кожи.</li>
				<li>Без добавления парабенов.</li>
				<li>Протестировано дерматологами.</li>
			</ul>
			<p><b>ПРИМЕНЕНИЕ:</b> наносите после применения очищающего средства. Распылите немного лосьона на кожу лица или, для более глубокого очищения, нанесите лосьон при помощи ватного диска. Затем нанесите антивозрастную сыворотку и увлажняющее средствтво. Используйте днем и вечером.</p>
		</section>	
		<section>
			<object>
				<iframe class="video" src="http://www.youtube.com/embed/Y-yN5dIZUHo" frameborder="0" allowfullscreen></iframe>
			</object>
		</section>
	</article>	
</div>