<style>
	#act_fiber .desc_title {
		background-color: #203474;
		border-radius: 0px 10px 10px 0px;
		margin: 0px 0px 0px 0px;
		padding: 0px 0px 0px 0px;
		text-align: center;
		height: 85px;
		width: 300px;
	}
	#act_fiber .desc_title p {
		color: #fff;
		padding: 4px 10px;
		font-size: 100%;
	}
	#act_fiber article {
		padding-top: 20px;
	}
	#act_fiber #act_fiber_1 {
		background: url(../images/act_fiber_img1.png) no-repeat right center;
		background-size: 400px;
		margin: 0px;
		padding: 0px;
		height: 400px;
	}
	#act_fiber #act_fiber_1 h3{
		padding: 0;
	}
	#act_fiber #act_fiber_1 ul{
		padding: 0px;
		margin-left: 30px;
		width: 60%;
	}
	#act_fiber #act_fiber_1 li{
		margin: 15px 0px;
	}
	#act_fiber #act_fiber_1 h3 {
		margin-top: 25px;
	}
	#act_fiber .composition {
		width: 100%;
	}
	#act_fiber .middle {
		vertical-align: middle;
	}
	#act_fiber .composition td{
		margin: 0px;
		padding: 0px;
		text-align: left;
	}
	
	#act_fiber .composition td.center {
		text-align: center;
	}
	#act_fiber .composition .act_fiber_norma {
		width: 300px;
	}
	#act_fiber #remark {
		font-size: 80%;
	}
	@media screen and (max-width: 1208px) {
		#act_fiber .composition img {
			margin: 0px 3px !important;
			width: 50px !important;
		}
		#act_fiber .composition .act_fiber_norma {
			width: 240px !important;
		}
	}
</style>
<div id="act_fiber">
	<div class="desc_title">
		<p>Комплекс натуральных пищевых волокон для эффективного контроля веса</p>
	</div>
	<?php if( $product->certificate ) { ?>
		<div class="сertificate">
			<a href="<?=Config::DIR_IMG_CERTIFICATE.$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
		</div>
	<?php } ?>
	<article>
		<section>
			<p class="red_line">Достаточное потребление клетчатки особенно важно для тех, кто следит за своим весом. Ведь она способствует лучшему насыщению, а значит, помогает избежать перееданий и более эффективно контролировать вес!</p>
			<p class="red_line">Но в современном рационе мы постоянно испытываем дефицит клетчатки, так как употребляем много рафинированных, обработанных продуктов, в которых количество пищевых волокон минимально. Ежедневный дефицит клетчатки со временем может негативно повлиять на функционирование пищеварительной системы, вызывать дискомфортные ощущения, замедлять насыщение, тем самым провоцируя переедание и снижая эффективность контроля веса.</p>
			<p class="red_line">Активированная Клетчатка - комплекс натуральных пищевых волокон, необходимых для ежедневной поддержки пищеварительной системы и эффективного контроля веса.</p>
		</section>
		<section>
			<div id="act_fiber_1">
				<h3>ПРЕИМУЩЕСТВА:</h3>
				<ul>
					<li>Способствует лучшему насыщению;</li>
					<li>Позволяет эффективно контролировать вес;</li>
					<li>Поддерживает функцию естественного очищения организма;</li>
					<li>Стимулирует рост и жизнедеятельность полезной микрофлоры кишечника.</li>
				</ul>
			</div>
			<h3>В СОСТАВЕ:</h3>
			<table class="composition">
				<tr>
					<td class="middle">
						<img src="images/act_fiber_oves.png" alt="клетчатка из овсяных отрубей" title="клетчатка из овсяных отрубей" />
					</td>
					<td class="middle">
						<p>Клетчатка из овсяных отрубей</p>
					</td>
					<td class="middle">
						<p>Растворимая клетчатка, которая способствует значительному снижению уровня холестерина в крови.</p>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<hr/>
					</td>
				</tr>
				<tr>
					<td class="middle">
						<img src="images/act_fiber_citrus.png" alt="цитрусовая клетчатка" title="цитрусовая клетчатка" />
					</td>
					<td class="middle">
						<p>Цитрусовая клетчатка</p>
					</td>
					<td class="middle">
						<p>Нежная клетчатка апельсина способствует нормализации пищеварения и выведению из организма избыточного холестерина.</p>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<hr/>
					</td>
				</tr>
				<tr>
					<td class="middle">
						<img src="images/act_fiber_pectin.png" alt="цитрусовый пектин" title="цитрусовый пектин" />
					</td>
					<td class="middle">
						<p>Цитрусовый пектин</p>
					</td>
					<td class="middle">
						<p>Благотворно влияет на процессы пищеварения и очищения кишечника.</p>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<hr/>
					</td>
				</tr>
				<tr>
					<td class="middle">
						<img src="images/act_fiber_celuloza.png" alt="целлюлоза" title="целлюлоза" />
					</td>
					<td class="middle">
						<p>Целлюлоза</p>
					</td>
					<td class="middle">
						<p>Очищает кашечник, выводя вредные вещества.</p>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<hr/>
					</td>
				</tr>
				<tr>
					<td class="middle">
						<img src="images/act_fiber_karnitin.png" alt="L - карнитин" title="L - карнитин" />
					</td>
					<td class="middle">
						<p>L - карнитин</p>
					</td>
					<td class="middle">
						<p>Способствует получению энергии из жировой ткани.</p>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<hr/>
					</td>
				</tr>
				<tr>
					<td class="center" colspan="2">
						<img class="act_fiber_norma" src="images/act_fiber_img2.png" alt="норма клетчатки фрагмент 1" title="норма клетчатки фрагмент 1" />
					</td>
					<td class="center">
						<img class="act_fiber_norma" src="images/act_fiber_img3.png" alt="норма клетчатки фрагмент 2" title="норма клетчатки фрагмент 2" />
					</td>
				</tr>
			</table>
			<p id="remark">*БАД. Не является лекарственным средством.</p>
		</section>		
	</article>	
</div>