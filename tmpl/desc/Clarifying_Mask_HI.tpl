<style>
	#nourif_clarifying_mask .desc_title {
		background-color: #f89f91;
		border-radius: 0px 10px 10px 0px;
		margin: 0px 0px 0px 0px;
		padding: 0px 0px 0px 0px;
		text-align: center;
		height: 60px;
		width: 300px;
	}
	#nourif_clarifying_mask .desc_title p {
		color: #fff;
		padding: 4px 10px;
		font-size: 100%;
	}
	#nourif_clarifying_mask  article {
		padding-top: 20px;
	}
	#nourif_clarifying_mask  article p, #nourif_clarifying_mask  article li {
		color: #3e434a;
		font-size: 90%;
	}
	#nourif_clarifying_mask  #nourif_clarifying_mask_1 {
		background: url(../images/nourif_clean_img.png) no-repeat right center;
		background-size: 380px;
		margin: 0px;
		padding: 0px;
		height: auto;
	}
	#nourif_clarifying_mask  #nourif_clarifying_mask_1 h3{
		padding: 0;
	}
	#nourif_clarifying_mask  #nourif_clarifying_mask_1 ul{
		padding: 0px;
		margin-left: 30px;
		width: 40%;
	}
	#nourif_clarifying_mask  #nourif_clarifying_mask_1 li{
		margin: 15px 0px;
		text-align: justify;
	}
	#nourif_clarifying_mask  #nourif_clarifying_mask_1 h3 {
		margin-top: 25px;
	}
	#nourif_clarifying_mask  .composition {
		border: 4px double #7ac142;
		background-color: #ccfba2;
		margin: 5px;
		padding: 0px;
		width: 250px;
	}
	#nourif_clarifying_mask  .composition p {
		margin: 0px;
	}
	#nourif_clarifying_mask  .justify {
		text-align: justify;
	}
	#nourif_clarifying_mask .icon1 {
		float: right;
		width: 100px;
	}
	#nourif_clarifying_mask ul li {
		margin: 15px 0px;
	}
</style>
<div id="nourif_clarifying_mask">
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
			<div id="nourif_clarifying_mask_1">
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
			<img class="icon1" src="images/nourif_clarifying_mask_img.png" alt="Мультивитаминный гель для кожи вокруг глаз 15 мл" title="Мультивитаминный гель для кожи вокруг глаз 15 мл" />
			<h3>Очищающая маска NouriFusion</h3>
			<p class="justify">Маска на основе косметической глины, масла апельсина и эвкалипта помогает удалить избыток кожного жира и загрязнения, делая кожу сияющей и упругой. Прекрасно тонизирует, повышая защитные свойства кожи. Подходит всем типам кожи.</p>
			<h3>Состав основных ингредиентов:</h3>
			<ul class="justify">
				<li><b>Масло листьев эвкалипта</b> оказывает антимикробное действие и стимулирует кровообращение;</li>
				<li><b>Азелоглицин</b> регулирует выработку кожного сала, увлажняет, тонизирует, повышает упругость кожи и улучшает цвет лица;</li>
				<li><b>Папаин</b> энзим, получаемый из папайи, удаляет отмершие и поврежденные клетки, способствует разглаживанию кожи и воспроизводству новых клеток;</li>
				<li><b>Гамамелис</b> освежает кожу, оказывает успокаивающий и вяжущий эффект;</li>
				<li><b>Масло апельсина</b> тонизирует и освежает кожу;</li>
				<li><b>Витамин А</b> поддерживает гидробаланс кожи, помогает регенерации клеток эпидермиса;</li>
				<li><b>Витамин С</b> оказывает антиоксидантное действие, способствует производству коллагена, помогает сократить появление пигментных пятен;</li>
				<li><b>Витамин Е</b> оказывает защитное действие.</li>
			</ul>
			<div class="clear"></div>
		</section>	
	</article>	
</div>