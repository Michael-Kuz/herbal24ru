<style>
	#nourif_eye_gel .desc_title {
		background-color: #f89f91;
		border-radius: 0px 10px 10px 0px;
		margin: 0px 0px 0px 0px;
		padding: 0px 0px 0px 0px;
		text-align: center;
		height: 60px;
		width: 300px;
	}
	#nourif_eye_gel .desc_title p {
		color: #fff;
		padding: 4px 10px;
		font-size: 100%;
	}
	#nourif_eye_gel  article {
		padding-top: 20px;
	}
	#nourif_eye_gel  article p, #nourif_eye_gel  article li {
		color: #3e434a;
		font-size: 90%;
	}
	#nourif_eye_gel  #nourif_eye_gel_1 {
		background: url(../images/nourif_clean_img.png) no-repeat right center;
		background-size: 380px;
		margin: 0px;
		padding: 0px;
		height: auto;
	}
	#nourif_eye_gel  #nourif_eye_gel_1 h3{
		padding: 0;
	}
	#nourif_eye_gel  #nourif_eye_gel_1 ul{
		padding: 0px;
		margin-left: 30px;
		width: 40%;
	}
	#nourif_eye_gel  #nourif_eye_gel_1 li{
		margin: 15px 0px;
		text-align: justify;
	}
	#nourif_eye_gel  #nourif_eye_gel_1 h3 {
		margin-top: 25px;
	}
	#nourif_eye_gel  .composition {
		border: 4px double #7ac142;
		background-color: #ccfba2;
		margin: 5px;
		padding: 0px;
		width: 250px;
	}
	#nourif_eye_gel  .composition p {
		margin: 0px;
	}
	#nourif_eye_gel  .justify {
		text-align: justify;
	}
	#nourif_eye_gel .icon1 {
		float: right;
		width: 100px;
	}
	#nourif_eye_gel ul li {
		margin: 15px 0px;
	}
</style>
<div id="nourif_eye_gel">
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
			<div id="nourif_eye_gel_1">
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
			<img class="icon1" src="images/nourif_eye_gel_img.png" alt="Мультивитаминный гель для кожи вокруг глаз 15 мл" title="Мультивитаминный гель для кожи вокруг глаз 15 мл" />
			<h3>Мультивитаминный гель NouriFusion для кожи вокруг глаз</h3>
			<p class="justify">Гель оказывает охлаждающее действие, освежая и тонизируя кожу вокруг глаз и уменьшая отечность. Благодаря экстрактам элеутерококка и огурца оживляет уставшие глаза. Вы сразу почувствуете разницу!</p>
			<h3>Состав основных ингредиентов:</h3>
			<ul class="justify">
				<li><b>Экстракт элеутерококка</b> стимулирует регенерацию клеток, укрепляет и разглаживает кожу, уменьшая появление тонких морщин;</li>
				<li><b>Экстракт огурца</b> смягчает и освежает, разглаживает и слегка отбеливает кожу;</li>
				<li><b>Экстракт плюща</b> улучшает дренаж тканей, стимулирует кровообращение;</li>
				<li><b>Пантенол</b> питает и смягчает кожу;</li>
				<li><b>Экстракт женьшеня</b> стимулирует регенерацию клеток, уменьшая появление морщин;</li>
				<li><b>Витамин А</b> поддерживает гидробаланс кожи, помогает регенерации клеток эпидермиса;</li>
				<li><b>Витамин С</b> способствует производству коллагена;</li>
				<li><b>Витамин Е</b> защищает, разглаживает и восстанавливает кожу;</li>
			</ul>
			<div class="clear"></div>
		</section>	
	</article>	
</div>