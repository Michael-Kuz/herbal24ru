<style>
	#radiant_c_gel .desc_title {
		background-color: #e5832c;
		border-radius: 0px 10px 10px 0px;
		margin: 0px 0px 0px 0px;
		padding: 0px 0px 0px 0px;
		text-align: center;
		height: 60px;
		width: 300px;
	}
	#radiant_c_gel .desc_title p {
		color: #fff;
		padding: 4px 10px;
		font-size: 100%;
	}
	#radiant_c_gel  article {
		padding-top: 20px;
	}
	#radiant_c_gel  article p, #radiant_c_gel  article li {
		color: #3e434a;
		font-size: 90%;
	}
	#radiant_c_gel  #radiant_c_gel_1 {
		background: url(../images/radiant_c_img.png) no-repeat right center;
		background-size: 325px;
		margin: 0px 0px 20px 0px;
		padding: 0px;
		height: 250px;
	}
	#radiant_c_gel  #radiant_c_gel_1 h3{
		padding: 0;
	}
	#radiant_c_gel  #radiant_c_gel_1 ul{
		padding: 0px;
		margin-left: 30px;
		width: 40%;
	}
	#radiant_c_gel  #radiant_c_gel_1 li{
		margin: 15px 0px;
		text-align: justify;
	}
	#radiant_c_gel  #radiant_c_gel_1 h3 {
		margin-top: 25px;
	}
	#radiant_c_gel  .composition {
		border: 4px double #7ac142;
		background-color: #ccfba2;
		margin: 5px;
		padding: 0px;
		width: 250px;
	}
	#radiant_c_gel  .composition p {
		margin: 0px;
	}
	#radiant_c_gel  .justify {
		text-align: justify;
	}
	#radiant_c_gel .icon1 {
		float: right;
		width: 80px;
	}
	#radiant_c_gel ul li {
		margin: 15px 0px;
	}
</style>
<div id="radiant_c_gel">
	<div class="desc_title">
		<p>Антиоксиданты для цветущей, молодой и сияющей кожи 24 часа в сутки!</p>
	</div>
	<?php if( $product->certificate ) { ?>
		<div class="сertificate">
			<a href="<?=Config::DIR_IMG_CERTIFICATE.$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
		</div>
	<?php } ?>
	<article>
		<section>
			<p class="red_line">В бешеном ритме нашей жизни устаем не только мы, но и наша кожа. Под влиянием плохой экологии, суровых погодных условий и сбивчивого графика дня кожа становится вялой и безжизненной.</p>
			<p class="red_line">Подарите Вашей коже жизненную энергию красоты и молодости, заключенную в серии средств Radiant C, богатых антиоксидантами. В любое время года и в любую погоду Вы будете выглядеть отдохнувшей и цветущей все 24 часа в сутки!</p>
		</section>
		<section>
			<div id="radiant_c_gel_1">
				<h3>ПРЕИМУЩЕСТВА:</h3>
				<ul>
					<li>Активно борется со свободными радикалами, вызывающими старение кожи;</li>
					<li>Питает кожу, дарит ей длительную защиту и здоровое сияние;</li>
					<li>Цитрусовый аромат поднимает настроение и делает применение косметических средств особенно приятным.</li>
				</ul>
			</div>
			<img class="icon1" src="images/radiant_c_gel.png" alt="Гель-крем для лица Radiant C 30 мл" title="Гель-крем для лица Radiant C 30 мл" />
			<h3>Гель-крем для лица.</h3>
			<p class="justify">Витаминизированный крем уникальной текстуры, моментально придает коже отдохнувший вид, улучшает ее структуру. Крем на основе антиоксидантов предупреждает разрушение клеток, обеспечивает защиту и увлажнение.</p>
			<h3>Состав основных ингредиентов:</h3>
			<ul class="justify">
				<li><b>Витамин С</b> - натуральный антиоксидант;</li>
				<li><b>Витамин Е</b> - натуральный антиоксидант, предупреждает разрушение клеток кожи;</li>
				<li><b>Экстракт абрикоса, яблока и моркови</b> придают коже свежий вид.</li>
			</ul>
			<div class="clear"></div>
		</section>	
	</article>	
</div>