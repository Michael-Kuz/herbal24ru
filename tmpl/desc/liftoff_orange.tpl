<style>
	#liftoff .desc_title {
		background-color: #e9872b;
		border-radius: 0px 10px 10px 0px;
		margin: 0px 0px 0px 0px;
		padding: 0px 0px 0px 0px;
		text-align: center;
		height: 60px;
		width: 300px;
	}
	#liftoff .desc_title p {
		color: #fff;
		padding: 6px 10px;
		font-size: 100%;
	}
	#liftoff article {
		padding-top: 20px;
	}
	#liftoff #liftoff_1 {
		background: url(../images/liftoff_img.png) no-repeat center center;
		background-size: 100%;
		margin: 0px;
		padding: 0px;
		height: 320px;
		width: 100%;
	}
	#liftoff #liftoff_1 h3{
		padding: 0;
	}
	#liftoff #liftoff_1 ul{
		padding: 0px;
		margin-left: 30px;
		width: 50%;
	}
	#liftoff #liftoff_1 li{
		margin: 15px 0px;
	}
	#liftoff h3 {
		margin-top: 25px;
	}
	#liftoff .middle {
		vertical-align: middle;
	}
	#liftoff .composition td {
		margin: 0px;
		padding: 0px;
	}
	#liftoff .composition img {
		margin-right: 15px;
		width: 80px;
	}
	#liftoff .composition p {
		padding-left: 10px;
	}
	#liftoff #remark {
		font-size: 80%;
	}
</style>
<div id="liftoff">
	<div class="desc_title">
		<p>Заряд энергии и концентрации в нужный момент</p>
	</div>
	<div class="сertificate">
		<a href="<?=Config::DIR_IMG_CERTIFICATE.$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
	</div>
	<article>
		<section>
			<p class="red_line">Каждый день огромный поток информации подвергает наш организм колосальным умственным нагрузкам. Время от времени мы чувствуем упадок сил и снижение концентрации, что неизбежно сказывается на работоспособности.</p>
			<p class="red_line">Но бывают моменты: важная встреча, подготовка отчета, экзамен - когда мы должны продемонстрировать максимальную эффективность.</p>
			<p class="red_line">Быть в тонусе поможет уникальный напиток Liftoff.</p>
		</section>
		<section>
			<div id="liftoff_1">
				<h3>ПРЕИМУЩЕСТВА:</h3>
				<ul>
					<li>Способствует поддержанию тонуса и сохранению концентрации;</li>
					<li>Помогает улучшению умственной и физической работоспособности;</li>
					<li>Обогащает витаминами С* и В**;</li>
					<li>В 10 раз меньше калорий, чем в других энергетических напитках;</li>
					<li>Удобный формат шипучей таблетки.</li>
				</ul>
			</div>
			<p id="liftoff_rem">*В 1 порции 60 мг витамина С (67% рекомендованной суточной потребности (РСП)).<br/>**В 1 порции витамина В1 - 2,5 мг(167%***), В2 - 3 мг(167%РСП***), В3 - 20 мг(100%РСП), В5 - 7,5 мг(150%РСП***),<br/>В6 - 3 мг(150%РСП***), биотин - 0,077 мг(154%РСП***).<br/>***Не превышает верхний уровень потребления.<br/>****1 порция Liftoff = около 15 ккал, Red Bull - 0,25л = 112 ккал, Xtaz - 0,355л = 199 ккал, Burn - 0,25л = 152 ккал, Adrenaline Rush - 0,25л = 130 ккал.</p>
			<h3>В СОСТАВЕ:</h3>
			<table class="composition">
				<tr>
					<td class="middle">
						<img src="images/liftoff_taurin.png" alt="таурин" title="аминокислота таурин" />
					</td>
					<td class="middle">
						<b>Таурин</b>
					</td>
					<td rowspan="3" class="middle">
						<p>Способствуют поддержанию тонуса и сохранению концентрации, помогают улучшению умственной и физической работоспособности.</p>
					</td>
				</tr>
				<tr>
					<td class="middle">
						<img src="images/liftoff_guarana.png" alt="гуарана" title="гуарана" />
					</td>
					<td class="middle">
						<b>Гуарана</b>
					</td>
				</tr>
				<tr>
					<td class="middle">
						<img src="images/liftoff_jenshen.png" alt="женьшень" title="женьшень" />
					</td>
					<td class="middle">
						<b>Женьшень</b>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<hr/>
					</td>
				</tr>
				<tr>
					<td class="middle">
						<img src="images/liftoff_ginko.png" alt="гинкго билбоа" title="гинкго билбоа" />
					</td>
					<td class="middle">
						<b>Гинкго билбоа</b>
					</td>
					<td rowspan="2" class="middle">
						<p>Усиливают антиоксидантную защиту организма.</p>
					</td>
				</tr>
				<tr>
					<td class="middle">
						<img src="images/liftoff_vita_c.png" alt="витамин С" title="витамин С" />
					</td>
					<td class="middle">
						<b>Витамин С</b>
					</td>
				</tr>	
				<tr>
					<td colspan="3">
						<hr/>
					</td>
				</tr>
				<tr>
					<td class="middle">
						<img src="images/liftoff_vita_b.png" alt="витамины группы В" title="витамин В" />
					</td>
					<td class="middle">
						<b>Витамины<br/>группы В</b>
					</td>
					<td class="middle">
						<p>Для лучшего усвоения питательных веществ.</p>
					</td>
				</tr>
			</table>
			
			
			<p id="remark">*БАД. Не является лекарственным средством.</p>
		</section>		
	</article>	
</div>