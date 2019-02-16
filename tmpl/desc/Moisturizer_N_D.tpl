<style>
	#nourif_moisturizer .desc_title {
		background-color: #f89f91;
		border-radius: 0px 10px 10px 0px;
		margin: 0px 0px 0px 0px;
		padding: 0px 0px 0px 0px;
		text-align: center;
		height: 60px;
		width: 300px;
	}
	#nourif_moisturizer .desc_title p {
		color: #fff;
		padding: 4px 10px;
		font-size: 100%;
	}
	#nourif_moisturizer  article {
		padding-top: 20px;
	}
	#nourif_moisturizer  article p, #nourif_moisturizer  article li {
		color: #3e434a;
		font-size: 90%;
	}
	#nourif_moisturizer  #nourif_moisturizer_1 {
		background: url(../images/nourif_clean_img.png) no-repeat right center;
		background-size: 380px;
		margin: 0px;
		padding: 0px;
		height: auto;
	}
	#nourif_moisturizer  #nourif_moisturizer_1 h3{
		padding: 0;
	}
	#nourif_moisturizer  #nourif_moisturizer_1 ul{
		padding: 0px;
		margin-left: 30px;
		width: 40%;
	}
	#nourif_moisturizer  #nourif_moisturizer_1 li{
		margin: 15px 0px;
		text-align: justify;
	}
	#nourif_moisturizer  #nourif_moisturizer_1 h3 {
		margin-top: 25px;
	}
	#nourif_moisturizer  .composition {
		border: 4px double #7ac142;
		background-color: #ccfba2;
		margin: 5px;
		padding: 0px;
		width: 250px;
	}
	#nourif_moisturizer  .composition p {
		margin: 0px;
	}
	#nourif_moisturizer  .justify {
		text-align: justify;
	}
	#nourif_moisturizer .icon1 {
		float: right;
		width: 200px;
	}
	#nourif_moisturizer ul li {
		margin: 15px 0px;
	}
</style>
<div id="nourif_moisturizer">
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
			<div id="nourif_moisturizer_1">
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
			<img class="icon1" src="images/nourif_moisturizer_img.png" alt="Мультивитаминный увлажнитель (SPF 15) NouriFusion 50 мл" title="Мультивитаминный увлажнитель (SPF 15) NouriFusion 50 мл" />
			<div class="composition">
				<p>для нормальной и сухой кожи</p>
			</div>
			<div class="composition">
				<p>для нормальной и жирной кожи</p>
			</div>
			<p class="justify">Увлажнение - важнейшая часть ежедневного "рациона" красоты. Легкий дневной лосьон включает в себя авокадо, абрикос и масло семян подсолнечника - для насыщения сухой кожи - или экстракт иван-чая и водорослей - для регуляции баланса кожи, склонной к жирности.</p>
			<h3>Состав основных ингредиентов:</h3>
			<ul class="justify">
				<li><b>Экстракт водорослей</b> способствует длительному удержанию влаги в коже;</li>
				<li><b>Азелоглицин</b> регулирует выделение кожного сала;</li>
				<li><b>Витамин А</b> поддерживает гидробаланс кожи, помогает регенерации клеток эпидермиса;</li>
				<li><b>Витамин С</b> способствует производству коллагена;</li>
				<li><b>Витамин Е</b> защищает, разглаживает и восстанавливает кожу;</li>
				<li><b>Экстракт иван-чая</b> способствует естественному отшелушиванию;</li>
				<li><b>Солнцезащитный фильтр SPF 15</b> обеспечивает надежный уровень защиты от солнечных лучей.</li>
			</ul>
			<div class="clear"></div>
		</section>	
	</article>	
</div>