<style>
	#yellow_pills .desc_title {
		background-color: #db4026;
		border-radius: 0px 10px 10px 0px;
		text-align: center;
		height: 87px;
		width: 300px;
	}
	#yellow_pills .desc_title p {
		color: #fff;
		padding: 6px 10px;
		font-size: 100%;
	}
	#yellow_pills article {
		padding-top: 20px;
	}
	#yellow_pills #yellow_pills_1 {
		background: url(../images/yellow_pills_img.png) no-repeat right center;
		margin: 0px;
		padding: 0px;
		height: 500px;
		width: 100%;
	}
	#yellow_pills #yellow_pills_1 ul{
		padding: 0px;
		margin-left: 30px;
	}
	#yellow_pills #yellow_pills_1 li{
		margin: 15px 0px;
	}
	#yellow_pills .middle {
		vertical-align: middle;
	}
	#yellow_pills table td {
		padding-top: 5px;
	}
	#yellow_pills table img {
		margin-right: 15px;
	}
	#yellow_pills .vit {
		width: 100px;
	}
	#yellow_pills .pic {
		width: 150px;
	}
	#yellow_pills .img1 {
		width: 100%;
	}
	#yellow_pills table p {
		padding-left: 10px;
	}
	#yellow_pills #remark {
		font-size: 80%;
	}
</style>
<div id="yellow_pills">
	<div class="desc_title">
		<p>Простой способ сократить потребление высококалорийных продуктов</p>
	</div>
	<div class="сertificate">
		<a href="<?=Config::DIR_IMG_CERTIFICATE.$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
	</div>
	<article>
		<section>
			<p class="red_line">Для эффективного снижения веса важно контролировать количество высокоуглеводной пищи. Ведь перекусы сладкими, высокоуглеводными продуктами являются одной из основных причин неудачных попыток снижения веса. Избыточное потребление высокоуглеводных продуктов приводит к отложению неиспользованных углеводов в жировую массу.</p>
			<p class="red_line">Желтые таблетки помогают снизить тягу к высокоуглеводным продуктам, тем самым ограничивая их потребление!</p>
		</section>
		<section>
			<div id="yellow_pills_1">
				<h3>ПРЕИМУЩЕСТВА:</h3>
				<ul>
					<li>22 жизненно важных<br/>витамина и минерала;</li>
					<li>До 100% суточной<br/>нормы потребления<br/>витаминов за один прием;</li>
					<li>Незаменим во время<br/>снижения веса и<br/>контроля веса.</li>
				</ul>
			</div>
			<h3>В СОСТАВЕ:</h3>
			<table>
				<tr>
					<td class="middle">
						<img class="vit" src="images/yellow_pills_cr.png" alt="хром" title="хром" />
					</td>
					<td class="middle">
						<b>Хром</b>
					</td>
					<td class="middle">
						<ul>
							<li>Играет важную роль в метаболизме инсулина;</li>
							<li>Способствует поддержанию уровня сахара в крови в пределах нормы;</li>
							<li>Способствует снижению тяги к высокоуглеводным продуктам.</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<hr/>
					</td>
				</tr>
				<tr>
					<td class="middle">
						<img class="pic" src="images/yellow_pills_garciniya.png" alt="гарциния камбоджийская" title="гарциния камбоджийская" />
					</td>
					<td class="middle">
						<b>Гарциния камбоджийская</b>
					</td>
					<td class="middle">
						<ul>
							<li>Источник гидроксилимонной кислоты, которая препятствует превращению углеводов в жир.</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<img class="img1" src="images/yellow_pills_img1.png" alt="нет сладкому" title="нет сладкому" />
					</td>
				</tr>
			</table>
			<p id="remark">*БАД. Не является лекарственным средством.</p>
		</section>		
	</article>
</div>	
