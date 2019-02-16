<style>
	#aloe_clasic .desc_title {
		background-color: #009ec3;
		border-radius: 0px 10px 10px 0px;
		margin: 0px 0px 0px 0px;
		padding: 0px 0px 0px 0px;
		text-align: center;
		height: 60px;
		width: 300px;
	}
	#aloe_clasic .desc_title p {
		color: #fff;
		padding: 6px 10px;
		font-size: 100%;
	}
	#aloe_clasic video {
		width: 70%;
	}
	#aloe_clasic #aloe_clasic_1 {
		background: url(../images/aloe_1.png) no-repeat center center;
		margin: 0px;
		padding: 0px;
		height: 450px;
		width: 100%;
	}
	#aloe_clasic #aloe_clasic_1 h3 {
		margin-top: 25px;
	}
	#aloe_clasic #aloe_clasic_1 li {
		margin: 15px 0px;
	}
	#aloe_clasic #aloe_clasic_2 {
		background: url(../images/aloe_2.png) no-repeat center center;
		margin: 0px;
		padding: 0px;
		height: 400px;
		width: 100%;
	}
	#aloe_clasic #aloe_clasic_2 h3{
		padding-top: 25px;
	}
	#aloe_clasic #aloe_clasic_2 ul{
		padding: 0px 0px 0px 43px;
		width: 80%;
	}
	#aloe_clasic #aloe_clasic_2 li{
		margin: 15px 0px;
	}
	#aloe_clasic #aloe_clasic_3 .aloe_img_1{
		height: 170px;
	}
	#aloe_clasic #aloe_clasic_3 .aloe_img_2{
		width: 200px;
	}
	#aloe_clasic #aloe_clasic_3 table{
		width: 100%;
	}
	#aloe_clasic #aloe_separator {
		border-left: 2px solid #80b257;
		height: 220px;
		margin: 0px;
	}
	#aloe_clasic #aloe_clasic_3 #aloe_green {
		color: #80b257;
		font-weight: 600;
	}
	#aloe_clasic #aloe_clasic_3 #aloe_rad {
		color: #d50438;
		font-weight: 600;
	}
	#aloe_clasic #aloe_clasic_4 img{
		width: 100%;
	}
	#aloe_clasic #aloe_bad {
		font-size: 80%;
	}
</style>
<div id="aloe_clasic">
	<div class="desc_title">
		<p>Натуральный алоэ для поддержки пищеварительной системы</p>
	</div>
	<?php if( $product->certificate ) { ?>
		<div class="сertificate">
			<a href="<?=Config::DIR_IMG_CERTIFICATE.$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
		</div>
	<?php } ?>
	<article>
		<section>
			<h3>Растительный напиток на основе Алоэ*</h3>
			<p class="red_line">Наша пищеварительная система каждый день подвергается непростым испытаниям: ежедневные стрессы и несбалансированное питание могут приводить к неприятным последствиям. Чувство тяжести во время или после приема пищи, дискомфорт, изжога и даже боль могут быть проявлениями проблем с пищеварением.</p>
			<p class="red_line">Растительный напиток на основе Алоэ - это натуральное решение для поддержки пищеварительной системы.</p>
		</section>
		<section>
			<object width="470" height="353">
				<iframe width="500" height="300" src="http://www.youtube.com/embed/ctg0-VhBbTM" frameborder="0" allowfullscreen></iframe>
			</object>
		</section>
		<section>
			<div id="aloe_clasic_1">
				<h3>ПРЕИМУЩЕСТВА:</h3>
				<ul>
					<li>Поддерживает<br/>естественную работу<br/> пищеварительной<br/>системы;</li>
					<li>Стимулирует процесс<br/>пищеварения;</li>
					<li>Оказывает смягчающее<br/>и успокаивающее<br/>действие.</li>
				</ul>
			</div>
			<h3>В СОСТАВЕ:</h3>
			<ul>
				<li>Более чем на 96% состоит из натурального геля алоэ вера;</li>
				<li>Богат энзимами, микроэлементами и аминокислотами.</li>
			</ul>
			<div id="aloe_clasic_2">
				<h3>Уникальные свойства Алоэ:</h3>
				<ul>
					<li>Целительные свойства алоэ известны на протяжении вот уже более 3500 лет. Записи о применении листьев и сока алоэ были найдены в древних китайских свитках, в египетских папирусах. За свои удивительные свойства растение алоэ вера получило название <b>"ИСТОЧНИК ГАРМОНИИ"</b>.</li>
					<li>Для производства Растительного напитка на основе Алоэ используются листья алоэ вера премиального качества, выращенные на полях, используемых эксклюзивно для Гербалайф.</li>
					<li>Все сырьевые компоненты проходят через многоступенчатый процесс фильтрации для удаления примесей, а готовый продукт тщательно тестируется с использованием современных аналитических методов, чтобы гарантировать соответствие строгим требованиям и высочайшим стандартам качества.</li>
				</ul>
			</div>
			<div id="aloe_clasic_3">
				<table>
					<tr>
						<td colspan="5">
							<h3>Используйте Растительный напиток на основе Алоэ для поддержки оптимального пищеварения в течение всего дня!</h3>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<img class="aloe_img_2" src="images/aloe_moning.png" alt="утро"/>
						</td>
						<td rowspan="3">
							<div id="aloe_separator"></div>
						</td>
						<td colspan="2">
							<img class="aloe_img_2" src="images/aloe_day.png" alt="день"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							<img class="aloe_img_1" src="images/aloe_clasic_img.png" alt="алоэ классическое" />
						</td>
						<td id="aloe_green" valign="top">
							Классический вкус
						</td>
						<td rowspan="2">
							<img class="aloe_img_1" src="images/aloe_klukva_img.png" alt="алоэ клюква" />
						</td>
						<td id="aloe_rad" valign="top">
							Вкус клюква
						</td>
					</tr>
					<tr>
						<td valign="top">-Как часть сбалансированного завтрака</td>
						<td valign="top">-Как часть Вашей ежедневной программы поддержки пищеварения</td>
					</tr>
				</table>
			</div>
			<h3>Сделайте Растительный напиток на основе Алоэ частью Вашего ежедневного плана питания</h3>
			<ul>
				<li>Используйте Растительный напиток на основе Алоэ в качестве самостоятельного напитка.</li>
				<li>А также добавляйте в Овсяно-Яблочный напиток для комплексного поддержания Вашей пищеварительной системы!</li>
			</ul>
			<div id="aloe_clasic_4">
				<img src="images/aloe_4.png" alt="алоэ плюс"/>
			</div>
			<p id="aloe_bad">*БАД. Не является лекарственным средством.</p>
		</section>		
	</article>	
</div>	
