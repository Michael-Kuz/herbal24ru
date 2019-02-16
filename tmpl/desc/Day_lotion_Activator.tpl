<style>
	#skin_activator_day_cream .desc_title {
		background-color: #9dc7d5;
		border-radius: 0px 10px 10px 0px;
		margin: 0px 0px 0px 0px;
		padding: 0px 0px 0px 0px;
		text-align: center;
		height: 60px;
		width: 300px;
	}
	#skin_activator_day_cream .desc_title p {
		color: #fff;
		padding: 4px 10px;
		font-size: 100%;
	}
	#skin_activator_day_cream  article {
		padding-top: 20px;
	}
	#skin_activator_day_cream  article p, #skin_activator_day_cream  article li {
		color: #3e434a;
		font-size: 90%;
	}
	#skin_activator_day_cream  #skin_activator_day_cream_1 {
		background: url(../images/skin_activator_img.png) no-repeat right center;
		background-size: 325px;
		margin: 0px 0px 20px 0px;
		padding: 0px;
		height: 400px;
	}
	#skin_activator_day_cream  #skin_activator_day_cream_1 h3{
		padding: 0;
	}
	#skin_activator_day_cream  #skin_activator_day_cream_1 ul{
		padding: 0px;
		margin-left: 30px;
		width: 40%;
	}
	#skin_activator_day_cream  #skin_activator_day_cream_1 li{
		margin: 15px 0px;
		text-align: justify;
	}
	#skin_activator_day_cream  #skin_activator_day_cream_1 h3 {
		margin-top: 25px;
	}
	#skin_activator_day_cream  .composition {
		border: 4px double #7ac142;
		background-color: #ccfba2;
		margin: 5px;
		padding: 0px;
		width: 250px;
	}
	#skin_activator_day_cream  .composition p {
		margin: 0px;
	}
	#skin_activator_day_cream  .justify {
		text-align: justify;
	}
	#skin_activator_day_cream .icon1 {
		float: right;
		width: 200px;
	}
	#skin_activator_day_cream ul li {
		margin: 15px 0px;
	}
</style>
<div id="skin_activator_day_cream">
	<div class="desc_title">
		<p>Инновационная формула, которая поворачивает время вспять</p>
	</div>
	<?php if( $product->certificate ) { ?>
		<div class="сertificate">
			<a href="<?=Config::DIR_IMG_CERTIFICATE.$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
		</div>
	<?php } ?>
	<article>
		<section>
			<p class="red_line">Негативное состояние окружающей среды и стрессы приводят к преждевременному старению кожи. Этот факт очень огорчает современных женщин, которые стремятся прекрасно чувствовать себя и выглядеть идеально.</p>
			<p class="red_line">Косметическая линия Skin Activaror - это новое слово в антивозрастной косметологии. Продукты линии позволяют вернуть коже молодость, здоровье сияние и природную красоту!</p>
		</section>
		<section>
			<div id="skin_activator_day_cream_1">
				<h3>ПРЕИМУЩЕСТВА:</h3>
				<ul>
					<li>Уникальный запатентованный глюкозаминовый комплекс для активации выработки коллагена и эластина;</li>
					<li>Природные антиоксиданты, витамины и натуральные масла для защиты, питания и глубокого увлажнения кожи;</li>
					<li>Концентрированное, целенаправленное воздействие на зоны, особенно подверженные старению.</li>
				</ul>
			</div>
			<img class="icon1" src="images/skin_activator_day_cream.png" alt="Дневной крем Skin Activator 50 мл" title="Дневной крем Skin Activator 50 мл" />
			<h3>Дневной крем Skin Activator.</h3>
			<p class="justify">Чтобы кожа как можно дольше оставалась молодой, не забывайте об увлажнении и защите. Дневной крем оздаравливает кожу, насыщая полезными микроэлементами, и защищает от негативного воздействия солнечных лучей.</p>
			<h3>Состав основных ингредиентов:</h3>
			<ul class="justify">
				<li><b>Масло ши</b> увлажняет и восстанавливает эластичность кожи;</li>
				<li><b>Экстракт водорослей</b> способствует длительному удержанию влаги в коже;</li>
				<li><b>Масло мяты</b> перечной обладает антисептическим и противовоспалительным действием;</li>
				<li><b>бисаболол</b> - активная составляющая ромашковой кислоты - успокаивает и оказывает противовоспалительное действие;</li>
				<li><b>Пробковое дерево</b> (бархат амурский) обладает противовоспалительными и успокаивающими свойствами;</li>
				<li>Также в составе - витамины А, Е, экстракты дрожжей,герани пятнистой, арники горной, зеленого чая.</li>
			</ul>
			<div class="clear"></div>
		</section>	
	</article>	
</div>