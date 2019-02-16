<style>
	#nourif_eye_cream .desc_title {
		background-color: #f89f91;
		border-radius: 0px 10px 10px 0px;
		margin: 0px 0px 0px 0px;
		padding: 0px 0px 0px 0px;
		text-align: center;
		height: 60px;
		width: 300px;
	}
	#nourif_eye_cream .desc_title p {
		color: #fff;
		padding: 4px 10px;
		font-size: 100%;
	}
	#nourif_eye_cream  article {
		padding-top: 20px;
	}
	#nourif_eye_cream  article p, #nourif_eye_cream  article li {
		color: #3e434a;
		font-size: 90%;
	}
	#nourif_eye_cream  #nourif_eye_cream_1 {
		background: url(../images/nourif_clean_img.png) no-repeat right center;
		background-size: 380px;
		margin: 0px;
		padding: 0px;
		height: auto;
	}
	#nourif_eye_cream  #nourif_eye_cream_1 h3{
		padding: 0;
	}
	#nourif_eye_cream  #nourif_eye_cream_1 ul{
		padding: 0px;
		margin-left: 30px;
		width: 40%;
	}
	#nourif_eye_cream  #nourif_eye_cream_1 li{
		margin: 15px 0px;
		text-align: justify;
	}
	#nourif_eye_cream  #nourif_eye_cream_1 h3 {
		margin-top: 25px;
	}
	#nourif_eye_cream  .composition {
		border: 4px double #7ac142;
		background-color: #ccfba2;
		margin: 5px;
		padding: 0px;
		width: 250px;
	}
	#nourif_eye_cream  .composition p {
		margin: 0px;
	}
	#nourif_eye_cream  .justify {
		text-align: justify;
	}
	#nourif_eye_cream .icon1 {
		float: right;
		width: 200px;
	}
	#nourif_eye_cream ul li {
		margin: 15px 0px;
	}
</style>
<div id="nourif_eye_cream">
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
			<div id="nourif_eye_cream_1">
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
			<img class="icon1" src="images/nourif_eye_cream_img.png" alt="Мультивитаминный крем для кожи вокруг глаз 15 мл" title="Мультивитаминный крем для кожи вокруг глаз 15 мл" />
			<h3>Мультивитаминный крем NouriFusion для кожи вокруг глаз</h3>
			<p class="justify">Насыщенный и нежный крем с алоэ и миндальным маслом питает, увлажняет и смягчает чуствительную кожу вокруг глаз. Способствует сокращению тонких линий и морщин, повышая плотность и упругость кожи.</p>
			<h3>Состав основных ингредиентов:</h3>
			<ul class="justify">
				<li><b>Масло сладкого миндаля</b> питает и восстанавливает эластичность кожи;</li>
				<li><b>Сок листьев алоэ</b> увлажняет и оказывает регенерирующее действие;</li>
				<li><b>Экстракт арники</b> ускоряет заживление повреждений кожи, разглаживает;</li>
				<li><b>Экстракт грейпфрута</b> обладает антисептическими и антиоксидантными свойствами;</li>
				<li><b>Масло подсолнечника</b> усиливает синтез керамидов в эпидермисе, сохраняет влагу в коже;</li>
				<li><b>Витамин А</b> поддерживает гидробаланс кожи, помогает регенерации клеток эпидермиса;</li>
				<li><b>Витамин С</b> способствует производству коллагена;</li>
				<li><b>Витамин Е</b> защищает, разглаживает и восстанавливает кожу;</li>
			</ul>
			<div class="clear"></div>
		</section>	
	</article>	
</div>