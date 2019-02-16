<style>
	#f1_exp .desc_title {
		background-color: #EE2C2C;
		border-radius: 0px 10px 10px 0px;
		margin: 0px 0px 0px 0px;
		padding: 0px 0px 0px 0px;
		text-align: center;
		height: 60px;
		width: 300px;
	}
	#f1_exp .desc_title p {
		color: #fff;
		padding: 7px 10px 0px 10px;
		font-size: 100%;
	}
	#f1_exp pre {
		color: #fff;
		margin: 0px;
		padding: 0px;
		font-family: Arial, Helvetica, sans-serif;
		font-size: 100%;
	}
	#f1_exp article {
		padding-top: 20px;
	}
	#f1_exp video {
		width: 70%;
	}
	#f1_exp mark {
		background-color: transparent;
		color: #7CC045;
		font-size: 120%;
		font-weight: 600;
	}
	#f1_exp .f1_exp_comp {
		width: 100px;
	}
	#f1_exp #f1_exp_separator {
		border-left: 2px solid #996600;
		height: 350px;
		margin: 0px 25px;
	}
	#f1_exp .f1_exp_taste {
		width: 200px;
	}
	#f1_exp .composition {
		width: 100%;
	}
	#f1_exp .center {
		text-align: center;
	}
	#f1_exp .middle {
		vertical-align: middle;
	}
	#f1_exp .composition td {
		margin: 0;
		padding: 0;
	}
	#f1_exp td.justify {
		padding-top: 20px;
	}
</style>
<div id="f1_exp">
	<div class="desc_title">
		<p>Сбалансированная еда всегда <br/>под рукой</p>
	</div>
	<div class="сertificate">
		<a href="<?=Config::DIR_IMG_CERTIFICATE.$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
	</div>
	<article>
		<section>
			<p class="red_line">Специалисты утверждают, что сбалансированное питание крайне важно для поддержания здоровья и предотвращения набора лишнего веса. Но при современном ритме жизни бывает сложно найти время, чтобы питаться сбалансированно в течение дня. Зачастую на работе просто нет времени на обед, время приема пищи застает нас врасплох - в дороге, в пробке, на встрече. В результате мы либо пропускаем прием пищи, либо перекусываем в ресторане быстрого обслуживания. А это приводит к недостатку питательных веществ в рационе и набору лишнего веса.</p>
			<p class="red_line">Но есть способ получить идеально сбалансированную еду, когда это нужно - <b>Батончик Формула 1 Экспресс</b>!</p>
		</section>
		<section>
			<object width="470" height="353">
				<iframe width="500" height="300" src="http://www.youtube.com/embed/W4TcdSfnAVE" frameborder="0" allowfullscreen></iframe>
			</object>
		</section>
			<h3>Преимущества продукта:</h3>
			<ul>
				<li>Сбалансированный состав;</li>
				<li>Помогает контролировать вес;</li>
				<li>Два потрясающих вкуса;</li>
				<li>Удобная упаковка - всегда под рукой.</li>
			</ul>
			<h3>В составе:</h3>
			<ul>
				<li>Белок;</li>
				<li>Клетчатка;</li>
				<li>Более 20 витаминов и минералов;</li>
				<li>207 ккал в 1 батончике;</li>
				<li>Не содержит искуственных подсластителей, консервантов и ГМО.</li>
			</ul>
			<table class="composition">
				<tr>
					<td>
						<img class="f1_exp_comp" src="images/f1_exp_belok.png" alt="порция рыбы" />
					</td>
					<td rowspan="3">
						<div id="f1_exp_separator">
						</div>
					</td>
					<td class="middle">
						<p><mark>Столько же БЕЛКА, сколько в порции рыбы:</mark><br/>13 г белка в батончике = 85 г семги/форели</p>
					</td>
				</tr>
				<tr>
					<td>
						<img class="f1_exp_comp" src="images/f1_exp_kletch.png" alt="порция салата"/>
					</td>
					<td class="middle">
						<p><mark>Столько же КЛЕТЧАТКИ, сколько в порции овощей:</mark><br/>8 г клетчатки в батончике = 250 г тушеных моркови, брокколи, цветной капусты</p>
					</td>
				</tr>
				<tr>
					<td>
						<img class="f1_exp_comp" src="images/f1_exp_frut.png" alt="фруктовый салат" />
					</td>
					<td class="middle">
						<p><mark>Столько же ВИТАМИНОВ и МИНЕРАЛОВ, сколько в порции фруктового салата:</mark><br/>комплекс из 23 витаминов и минералов в батончике = около 20 витаминов и минералов в 150 г фруктового салата</p>
					</td>
				</tr>
			</table>
			<h3 >Два потрясающих вкуса</h3>
			<table class="composition">
				<tr>
					<td class="center">
						<img class="f1_exp_taste" src="images/f1_exp_chok.png" alt="Ф1 экспресс шоколадный" />
					</td>
					<td class="center">
						<img class="f1_exp_taste" src="images/f1_exp_yagoda.png" alt="Ф1 экспресс ягодный" />
					</td>
				</tr>
				<tr>
					<td class="center">
						ШОКОЛАДНЫЙ
					</td>
					<td class="center">
						ЯГОДНЫЙ<br/>черника, гранат, ягоды асаи и нежный йогурт
					</td>
				</tr>
				<tr>
					<td colspan="2" class="justify">
						<b>СОСТАВ:</b> фруктозо-глюкозный сироп, нугаты соевого белка (изолят соевого белка, тапиока, соль), гранулы сои средне-измельченные, шоколадная основа (сахар, какао-масло, цельное сухое молоко, какао, соевый лецитин, натуральный ванилин), соевые бобы, полидекстроза, глюкозный сироп, олигофруктозный сироп, шоколадные хлопья (кукурузная мука, пшеничная мука, какао, сахар, пшеничный солод, соль, жженый сахар), концентрат соевого белка, фруктоза, изолят соевого белка, шоколадная крошка (сахар, какао, какао-масло, соевый лецитин, натуральный ванилин), акации сенегальской (Acacia Senegal) камедь, подсолнечное масло, фосфат калия, фосфат кальция, вода, шоколадный ароматизатор, соль, витаминно-минеральный премикс (биотин, кальций, медь, фолиевая кислота, йод, железо, пантотеновая кислота, витамины В1, В2, В6, В12, РР, А, С, D3, Е, цинк, марганец, селен), ванильный ароматизатор, моногидрат лимонной кислоты, соевый лецитин, оксид магния.
					</td>
				</tr>
			</table>
		</section>		
	</article>	
</div>	
