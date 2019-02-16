<style>
	#wet_cream_skin_around_eyes .desc_title {
		background-color: #5fb346;
		border-radius: 0px 10px 10px 0px;
		margin: 0px 0px 5px 0px;
		padding: 0px 0px 0px 0px;
		text-align: center;
		height: 80px;
		width: 300px;
	}
	#wet_cream_skin_around_eyes .desc_title p {
		color: #fff;
		padding: 16px 10px;
		font-size: 100%;
	}
	#wet_cream_skin_around_eyes  article {
		padding-top: 20px;
	}
	#wet_cream_skin_around_eyes  article h3{
		margin: 0px;
		padding: 0px;
	}
	#wet_cream_skin_around_eyes  article p{
		margin: 0px;
		padding: 0px;
	}
	#wet_cream_skin_around_eyes  article p, #wet_cream_skin_around_eyes  article li {
		color: #3e434a;
		font-size: 90%;
	}
	#wet_cream_skin_around_eyes ul li {
		margin: 5px 0px;
	}
	#wet_cream_skin_around_eyes .video{
		margin: 5px 0px 0px 0px;
		width: 500px;
		height: 330px;
	}
	#wet_cream_skin_around_eyes .justify {
		text-align: justify;
	}
	#wet_cream_skin_around_eyes .top {
		vertical-align: top;
	}
	#wet_cream_skin_around_eyes .middle {
		vertical-align: middle;
	}
</style>
<div id="wet_cream_skin_around_eyes">
	<div class="desc_title">
		<p>Увлажняющий крем для кожи вокруг глаз</p>
	</div>
	<?php if( $product->certificate ) { ?>
		<div class="сertificate">
			<a href="<?=Config::DIR_IMG_CERTIFICATE.$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
		</div>
	<?php } ?>
	<article>
		<section>
			<p>Увлажняющий крем длительного действия для улучшения внешнего вида нежной кожи вокруг глаз, в высокой степени подверженной обезвоживанию.</p>
		</section>
		<section>
			<ul>
				<li>Способствует сокращению внешних проявлений мимических и возрастных морщин вокруг глаз.</li>
				<li>Обеспечивает значительное улучшение уровня увлажненности кожи в течение 8 часов.</li>
				<li>Подходит для всех типов кожи.</li>
				<li>Без добавления парабенов.</li>
				<li>Протестировано дерматологами.</li>
			</ul>
			<p><b>ПРИМЕНЕНИЕ:</b> легкими движениями нанесите тонким слоем на область вокруг глаз.</p>
		</section>	
		<section>
			<object>
				<iframe class="video" src="http://www.youtube.com/embed/cKTNOvMUwm8" frameborder="0" allowfullscreen></iframe>
			</object>
		</section>
	</article>	
</div>