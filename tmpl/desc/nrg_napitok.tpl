<style>
	#nrg .desc_title {
		background-color: #eb4024;
		border-radius: 0px 10px 10px 0px;
		text-align: center;
		height: 63px;
		width: 300px;
	}
	#nrg .desc_title p {
		color: #fff;
		padding: 6px 10px;
		font-size: 100%;
	}
	#nrg article {
		padding-top: 20px;
	}
	#nrg article p{
		font-size: 100%;
	}
	#nrg #nrg_1 {
		background: url(../images/nrg_img.png) no-repeat right center;
		margin: 0px;
		padding: 0px;
		height: 500px;
		width: 100%;
	}
	#nrg #nrg_1 ul{
		padding: 0px;
		margin-left: 30px;
		width: 60%;
	}
	#nrg #nrg_1 li{
		margin: 15px 0px;
	}
	#nrg .middle {
		vertical-align: middle;
	}
	#nrg .center {
		text-align: center;
	}
	#nrg table td {
		margin: 0px;
		padding: 0px;
	}
	#nrg .vit {
		width: 100px;
	}
	#nrg .pic {
		width: 150px;
	}
	#nrg .img1 {
		width: 300px;
	}
	#nrg .img2 {
		width: 150px;
	}
	#nrg .info {
		background: #7ac142;
		border-radius: 5px;
		margin-bottom: 20px;
		padding: 10px 0px 10px 0px;
		text-align: center;
		width: 100%;
	}
	#nrg table .info p{
		color: #fff;
		font-size: 170%;
		font-weight: 500;
	}
	#nrg table p {
		padding-left: 10px;
		font-size: 100%;
		font-weight: 600;
	}
	#nrg table ul {
		margin-left: 0px;
		padding-left: 0px;
	}
	#nrg #remark {
		font-size: 80%;
	}
</style>
<div id="nrg">
	<div class="desc_title">
		<p>Натуральная гуарана для поднятия тонуса</p>
	</div>
	<div class="сertificate">
		<a href="<?=Config::DIR_IMG_CERTIFICATE.$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
	</div>
	<article>
		<section>
			<p class="red_line">В течение дня нам приходится справляться с множеством дел и решать разные задачи. И чтобы делать это эффективно, важно оставаться в тонусе. Но бывает, что в течение дня Вы испытываете упадок сил, что неизбежно сказывается на работоспособности.</p>
			<p class="red_line">N-R-G поможет Вам оставаться в тонусе в течение всего дня.</p>
		</section>
		<section>
			<div id="nrg_1">
				<h3>ПРЕИМУЩЕСТВА:</h3>
				<ul>
					<li>Обеспечивают длительный тонизирующий эффект;</li>
					<li>Поднимают уровень энергии;</li>
					<li>2 удобных формата на выбор - чай и таблетки.</li>
				</ul>
			</div>
			<h3>В СОСТАВЕ:</h3>
			<table>
				<tr>
					<td class="middle">
						<img class="pic" src="images/nrg_guarana.png" alt="Натуральная гуарана" title="Натуральная гуарана" />
					</td>
					<td class="middle">
						<b>Натуральная гуарана</b>
					</td>
					<td class="middle">
						<ul>
							<li>Уникальное тонизирующее действие гуараны уже давно известно коренному населению Южной Америки;</li>
							<li>Индейцы Амазонки используют гуарану для поддержания жизненых сил, тонуса и концентрации уже на протяжении нескольких столетий.</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<div class="info">
							<p>Натуральная гуарана оказывает мягкое тонизирующее действие.</p>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<p>НА ВАШ ВЫБОР ДВА УДОБНЫХ ФОРМАТА:</p>
					</td>
				</tr>
				<tr>
					<td class="center" colspan="2">
						<img class="img1" src="images/nrg_img1.png" alt="чай N-R-G" title="чай N-R-G" />
					</td>
					<td class="center">
						<img class="img2" src="images/nrg_img2.png" alt="таблетки N-R-G" title="таблетки N-R-G" />
					</td>
				</tr>
				<tr>
					<td class="center" colspan="2">
						<p>Быстрорастворимый чай - готовится всего за несколько секунд.</p>
					</td>
					<td class="center">
						<p>Таблетки - удобно использовать на ходу.</p>
					</td>
				</tr>
			</table>
			<p id="remark">*БАД. Не является лекарственным средством.</p>
		</section>		
	</article>
</div>	
