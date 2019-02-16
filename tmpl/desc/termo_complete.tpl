<style>
	#termocomplit .desc_title {
		background-color: #b48d2d;
		border-radius: 0px 10px 10px 0px;
		margin: 0px 0px 0px 0px;
		padding: 0px 0px 0px 0px;
		text-align: center;
		height: 108px;
		width: 300px;
	}
	#termocomplit .desc_title p {
		color: #fff;
		padding: 4px 10px;
		font-size: 100%;
	}
	#termocomplit article {
		padding-top: 20px;
	}
	#termocomplit #termocomplit_1 {
		background: url(../images/termocomplit_img.png) no-repeat right center;
		background-size: 394px;
		margin: 0px;
		padding: 0px;
		height: 332px;
	}
	#termocomplit #termocomplit_1 h3{
		padding: 0;
	}
	#termocomplit #termocomplit_1 ul{
		padding: 0px;
		margin-left: 30px;
		width: 60%;
	}
	#termocomplit #termocomplit_1 li{
		margin: 15px 0px;
	}
	#termocomplit #termocomplit_1 h3 {
		margin-top: 25px;
	}
	#termocomplit .composition {
		border: 2px solid #7ac142;
		border-radius: 10px;
		margin:10px auto;
		padding: 0px;
		width: 97%;
	}
	#termocomplit .composition .text{
		color: #fff;
		background-color: #7ac142;
		border-radius: 6px;
		padding: 0px 0px;
		width: 100%;
	}
	#termocomplit .composition .text p{
		color: #fff;
		margin: 0px 5px 0px 5px;
		font-size: 100%;
	}
	#termocomplit .composition ul {
		float: left;
	}
	#termocomplit .composition .frame {
		width: 50%;
	}
	#termocomplit .composition .pic {
		margin: 0px 0px;
		width: 110px;
	}
	#termocomplit .composition .vit {
		margin: 0px 0px;
		width: 50px;
	}
	#termocomplit .middle {
		vertical-align: middle;
	}
	#termocomplit .top {
		vertical-align: top;
	}
	#termocomplit .center {
		text-align: center;
	}
	
	
	#termocomplit #remark {
		font-size: 80%;
	}
</style>
<div id="termocomplit">
	<div class="desc_title">
		<p>Уникальный фитокомплекс для поддержки метаболизма и обеспечения энергией во время снижения веса!</p>
	</div>
	<div class="сertificate">
		<a href="<?=Config::DIR_IMG_CERTIFICATE.$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
	</div>
	<article>
		<section>
			<p class="red_line">Процесс снижения веса неизменно связан с изменением рациона питания, и организму требуется некоторое время, чтобы привыкнуть к этому. В этот переходный период может замедляться метаболизм и снижаться уровень энергии. В результате, Вы можете чувствовать упадок сил, что часто приводит к срывам и возвращению к прежнему режиму питания.</p>
			<p class="red_line">Термо Комплит - это уникальный фитокомплекс для поддержки метаболизма и обеспечения энергией во время снижения веса!</p>
		</section>
		<section>
			<div id="termocomplit_1">
				<h3>ПРЕИМУЩЕСТВА:</h3>
				<ul>
					<li>Способствует более эффективному процессу снижения веса;</li>
					<li>Поддерживает метаболизм;</li>
					<li>Способствует снижению интенсивности процессов образования жиров;</li>
					<li>Способствует быстрому поднятию тонуса.</li>
				</ul>
			</div>
			<h3>В СОСТАВЕ:</h3>
			<div class="composition">
				<ul>
					<li>Сельдерей</li>
					<li>Петрушка</li>
					<li>Люцерна</li>
					<li>Фенхель</li>
					<li>Солодка</li>
					<li>Кора коричного дерева</li>
				</ul>
				<img class="pic" src="images/termocomplit_kora.png" alt="кора коричного дерева" title="кора коричного дерева" />
				<img class="pic" src="images/termocoplit_selderei.png" alt="сельдерей" title="сельдерей" />
				<img class="pic" src="images/termocoplit_lucerna.png" alt="люцерна" title="люцерна" />
				<img class="pic" src="images/termocoplit_fenxel.png" alt="фенхель" title="фенхель" />
				<img class="vit" src="images/termocoplit_solodka.png" alt="солодка" title="солодка" />
				<img class="pic" src="images/termocomplit_petryshka.png" alt="петрушка" title="петрушка" />
				<div class="clear"></div>
				<div class="text">
					<p>Способствуют поддержанию метаболизма.</p>
				</div>
			</div>
			<div class="composition">
				<ul>
					<li>Кофеин</li>
					<li>Зеленый чай</li>
					<li>Матэ</li>
					<li>Какао</li>
				</ul>
				<img class="pic" src="images/termocomplit_greentea.png" alt="зеленый чай" title="зеленый чай" />
				<img class="pic" src="images/termocomplit_kakao.png" alt="какао" title="какао" />
				<img class="pic" src="images/termocoplit_kofe.png" alt="кофеин" title="кофеин" />
				<img class="pic" src="images/termocomplit_mate.png" alt="матэ" title="матэ" />
				<div class="clear"></div>
				<div class="text">
					<p>Способствуют быстрому поднятию тонуса.</p>
				</div>
			</div>
			<div class="composition">
				<ul class="frame">
					<li>Зеленый чай</li>
					<li>Матэ</li>
				</ul>
				<img class="pic" src="images/termocomplit_greentea.png" alt="зеленый чай" title="зеленый чай" />
				<img class="pic" src="images/termocomplit_mate.png" alt="матэ" title="матэ" />
				<div class="clear"></div>
				<div class="text">
					<p>Способствуют снижению интенсивности процессов образования жиров.</p>
				</div>
			</div>
			<p id="remark">*БАД. Не является лекарственным средством.</p>
			<object width="470" height="353">
				<iframe width="500" height="300" src="http://www.youtube.com/embed/nTiP0fh_oGo" frameborder="0" allowfullscreen></iframe>
			</object>
		</section>		
	</article>	
</div>