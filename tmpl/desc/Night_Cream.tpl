<style>
	#nourif_night_cream .desc_title {
		background-color: #f89f91;
		border-radius: 0px 10px 10px 0px;
		margin: 0px 0px 0px 0px;
		padding: 0px 0px 0px 0px;
		text-align: center;
		height: 60px;
		width: 300px;
	}
	#nourif_night_cream .desc_title p {
		color: #fff;
		padding: 4px 10px;
		font-size: 100%;
	}
	#nourif_night_cream  article {
		padding-top: 20px;
	}
	#nourif_night_cream  article p, #nourif_night_cream  article li {
		color: #3e434a;
		font-size: 90%;
	}
	#nourif_night_cream  #nourif_night_cream_1 {
		background: url(../images/nourif_clean_img.png) no-repeat right center;
		background-size: 380px;
		margin: 0px;
		padding: 0px;
		height: auto;
	}
	#nourif_night_cream  #nourif_night_cream_1 h3{
		padding: 0;
	}
	#nourif_night_cream  #nourif_night_cream_1 ul{
		padding: 0px;
		margin-left: 30px;
		width: 40%;
	}
	#nourif_night_cream  #nourif_night_cream_1 li{
		margin: 15px 0px;
		text-align: justify;
	}
	#nourif_night_cream  #nourif_night_cream_1 h3 {
		margin-top: 25px;
	}
	#nourif_night_cream  .composition {
		border: 4px double #7ac142;
		background-color: #ccfba2;
		margin: 5px;
		padding: 0px;
		width: 250px;
	}
	#nourif_night_cream  .composition p {
		margin: 0px;
	}
	#nourif_night_cream  .justify {
		text-align: justify;
	}
	#nourif_night_cream .icon1 {
		float: right;
		width: 200px;
	}
	#nourif_night_cream ul li {
		margin: 15px 0px;
	}
</style>
<div id="nourif_night_cream">
	<div class="desc_title">
		<p>Питает, увлажняет и тонизирует: уход за кожей любого типа</p>
	</div>
	<?php if( $product->certificate ) { ?>
		<div class="сertificate">
			<a href="<?=Config::DIR_IMG_CERTIFICATE.$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
		</div>
	<?php } ?>
	<article>
		<section>
			<p class="red_line">Современная неблагоприятная экология и бешеный ритм жизни больших городов сказываются на здоровье, красоте и молодости нашей кожи. Стресс и неблагоприятное внешнее воздействие приводят к тому, что клеткам эпидермиса не хватает питания, увлажнения и защиты.</p>
			<p class="red_line">Мультивитаминная линия средств NouriFusion обеспечивает все необходимое для ухода и поддержания здорового вида кожи в любом возрасте 24 часа в день!</p>
		</section>
		<section>
			<div id="nourif_night_cream_1">
				<h3>ПРЕИМУЩЕСТВА:</h3>
				<ul>
					<li>Подходит для всех типов кожи;</li>
					<li>Обеспечивает индивидуальный уход для различных зон: кожи лица, вокруг глаз, декольте;</li>
					<li>Содержит натуральные активные компоненты, витамины и масла - сила природы для Вашей красоты;</li>
					<li>Витамин А способствует удержанию влаги в коже и обновляет ее клетки;</li>
					<li>Витамин С защищает кожу от свободных радикалов, предотвращая старение и повышает выработку коллагена;</li>
					<li>Витамин Е обеспечивает естественную защиту, заживляет микротрещинки, разглаживает поверхность кожи;</li>
					<li>SPF - защита от вредного воздействия солнечных лучей.</li>
				</ul>
			</div>
			<img class="icon1" src="images/nourif_night_cream_img.png" alt="Мультивитаминный ночной крем NouriFusion 50 мл" title="Мультивитаминный ночной крем NouriFusion 50 мл" />
			<h3>Ночной крем NouriFusion</h3>
			<p class="justify">Ночной крем NouriFusion обогащает кожу витаминами и питательными веществами, в которых она нуждается во время ночного отдыха. Увлажняет, смягчает и успокаивает кожу. Насыщенный и легкий по текстуре крем работает, пока Вы спите. Подходит для всех типов кожи.</p>
			<h3>Состав основных ингредиентов:</h3>
			<ul class="justify">
				<li><b>Экстракт клевера</b> оказывает увлажняющее и антимикробное действие;</li>
				<li><b>Экстракт ромашки</b> оказывает противовоспалительное и успокаивающее действие;</li>
				<li><b>Экстракт морских водорослей</b> обеспечивает длительное увлажнение кожи;</li>
				<li><b>Оливковое масло</b> смягчает, питает, противостоит преждевременному старению кожи, способствуя регенерации клеток;</li>
				<li><b>Масло подсолнечника</b> усиливает синтез керамидов в эпидермисе, сохраняет влагу в коже;</li>
				<li><b>Витамин А</b> поддерживает гидробаланс кожи, помогает регенерации клеток эпидермиса;</li>
				<li><b>Витамин С</b> способствует производству коллагена;</li>
				<li><b>Витамин Е</b> защищает, разглаживает и восстанавливает кожу;</li>
			</ul>
			<div class="clear"></div>
		</section>	
	</article>	
</div>