<style>
	#shizandra .desc_title {
		background-color: #dc6140;
		border-radius: 0px 10px 10px 0px;
		margin: 0px 0px 0px 0px;
		padding: 0px 0px 0px 0px;
		text-align: center;
		height: 60px;
		width: 300px;
	}
	#shizandra .desc_title p {
		color: #fff;
		padding: 4px 10px;
		font-size: 100%;
	}
	#shizandra article {
		padding-top: 20px;
	}
	#shizandra #shizandra_1 {
		background: url(../images/shizandra_img.png) no-repeat right center;
		background-size: 394px;
		margin: 0px;
		padding: 0px;
		height: 390px;
	}
	#shizandra #shizandra_1 h3{
		padding: 0;
	}
	#shizandra #shizandra_1 ul{
		padding: 0px;
		margin-left: 30px;
		width: 50%;
	}
	#shizandra #shizandra_1 li{
		margin: 15px 0px;
	}
	#shizandra #shizandra_1 h3 {
		margin-top: 25px;
	}
	#shizandra .composition {
		border: 2px solid #7ac142;
		border-radius: 10px;
		margin:10px auto;
		padding: 0px;
		width: 97%;
	}
	#shizandra .composition td{
		margin: 0px;
		padding: 5px 0px;
		text-align: center;
	}
	#shizandra .composition td ul {
		margin: 0px;
		padding-left: 40px;
		text-align: left;
	}
	#shizandra .composition .text{
		color: #fff;
		background-color: #7ac142;
		border-radius: 6px;
		padding: 10px 0px;
		width: 100%;
	}
	#shizandra .composition .text p{
		color: #fff;
		margin: 0px 5px 0px 5px;
		font-size: 100%;
	}
	
	#shizandra .composition .icon1 {
		margin: 0px 0px;
		width: 200px;
	}
	#shizandra .composition .icon2 {
		margin: 0px 0px;
		width: 100%;
	}
	#shizandra .middle {
		vertical-align: middle;
	}
	#shizandra .top {
		vertical-align: top;
	}
	#shizandra .center {
		text-align: center;
	}
	
	
	#shizandra #remark {
		font-size: 80%;
	}
</style>
<div id="shizandra">
	<div class="desc_title">
		<p>Комплекс мощных антиоксидантов для поддержки естественного иммунитета</p>
	</div>
	<div class="сertificate">
		<a href="<?=Config::DIR_IMG_CERTIFICATE.$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
	</div>
	<article>
		<section>
			<p class="red_line">Как часто Вы чувствуете себя ослабленным, вялым, совсем без сил? А вспомните, как легко в такме моменты Вы простужаетесь или даже заболеваете более серьезно? Это "сдает позиции" Ваша естественная защита организма - иммунитет. И не мудрено, ведь для нормального функционирования и выполнения своих защитных функций иммунитету тоже нужно правильное питание. А Вы уверены, что Ваш иммунитет каждый день получает питание, необходимое для поддержания его защитных функций?</p>
			<p class="red_line">Шизандра поможет поддержать естественный иммунитет.</p>
		</section>
		<section>
			<div id="shizandra_1">
				<h3>ПРЕИМУЩЕСТВА:</h3>
				<ul>
					<li>Обладает мощным антиоксидантным действием;</li>
					<li>Способствует усилению защитных свойств организма против действия свободных радикалов.</li>
				</ul>
			</div>
			<h3>В СОСТАВЕ:</h3>
			<table class="composition">
				<tr>
					<td class="middle">
						<img class="icon1" src="images/shizandra_limonnic.png" alt="китайский лимонник" title="китайский лимонник" />
					</td>
					<td class="middle">
						<p>Китайский лимонник</p>
					</td>
					<td>
						<ul>
							<li>Содержит большое количество активных веществ, в том числе лигнанов;</li>
							<li>Традиционно используется в странах Азии для усиления естественной защиты организма.</li>
						</ul>
					</td>
				</tr>
			</table>
			<div class="composition">
				<table>
					<tr>
						<td class="middle">
							<ul>
								<li>Витамин С</li>
								<li>Витамин Е</li>
								<li>Бета-каротин</li>
								<li>Селен</li>
							</ul>
						</td>
						<td>
							<img class="icon2" src="images/shizandra_c.png" alt="витамин С" title="витамин С" />
						</td>
						<td>
							<img class="icon2" src="images/shizandra_e.png" alt="витамин Е" title="Витамин Е" />
						</td>
						<td>
							<img class="icon2" src="images/shizandra_betta.png" alt="бета-каротин" title="бета-каротин" />
						</td>
						<td>
							<img class="icon2" src="images/shizandra_se.png" alt="селен" title="селен" />
						</td>
					</tr>
				</table>
				<div class="text">
					<ul>
						<li>В сочетании с китайским лимонником оказывают комплексное действие.</li>
						<li>Являются мощными антиоксидантами.</li>
					</ul>
				</div>
			</div>
			<p id="remark">*БАД. Не является лекарственным средством.</p>
		</section>		
		<object width="470" height="353">
			<iframe width="500" height="300" src="http://www.youtube.com/embed/UmQwTncbYXI" frameborder="0" allowfullscreen></iframe>
		</object>
	</article>	
</div>