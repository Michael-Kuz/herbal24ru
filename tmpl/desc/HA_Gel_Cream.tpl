<style>
	#herbalaloe_skin .desc_title {
		background-color: #5fb346;
		border-radius: 0px 10px 10px 0px;
		margin: 0px 0px 0px 0px;
		padding: 0px 0px 0px 0px;
		text-align: center;
		height: 60px;
		width: 300px;
	}
	#herbalaloe_skin .desc_title p {
		color: #fff;
		padding: 4px 10px;
		font-size: 100%;
	}
	#herbalaloe_skin  article {
		padding-top: 20px;
	}
	#herbalaloe_skin  article h3{
		margin: 0px;
		padding: 0px;
	}
	#herbalaloe_skin  article p{
		margin: 0px;
		padding: 0px;
	}
	#herbalaloe_skin  article p, #herbalaloe_skin  article li {
		color: #3e434a;
		font-size: 90%;
	}
	#herbalaloe_skin img.icon1 {
		margin: 0px 10px 0px 10px;
		float: left;
		width: 100px;
	}
	
	#herbalaloe_skin article table{
		margin-top: 40px;
	}
	#herbalaloe_skin article table table{
		margin: 0px;
	}
	#herbalaloe_skin article table img {
		width: 130px;
	}
	#herbalaloe_skin mark {
		color: #7ac145;
		background: #fff;
		font-size: 120%;
	}
	#herbalaloe_skin article table td {
		padding-top: 0px;
	}
	#herbalaloe_skin article table td ul li:first-child {
		color: #7ac145;
		list-style: none;
		font-size: 120%;
	}
	#herbalaloe_skin article table td ul {
		margin: 0px;
	}
	#herbalaloe_skin ul li {
		margin: 5px 0px;
	}
	#herbalaloe_skin .justify {
		text-align: justify;
	}
	#herbalaloe_skin .left {
		text-align: justify;
	}
	#herbalaloe_skin .top {
		vertical-align: top;
	}
	#herbalaloe_skin .middle {
		vertical-align: middle;
	}
</style>
<div id="herbalaloe_skin">
	<div class="desc_title">
		<p>Польза натурального Алоэ для здоровья Вашей кожи и волос</p>
	</div>
	<?php if( $product->certificate ) { ?>
		<div class="сertificate">
			<a href="<?=Config::DIR_IMG_CERTIFICATE.$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
		</div>
	<?php } ?>
	<article>
		<section>
			<h3>Новая линия Herbal Aloe</h3>
			<p>Без сульфатов. Без парабенов. Подходит для ежедневного применения.</p>
			<br/>
			<img class="icon1" src="images/herbalaloe_skin_before.png" alt="кожа до" title="кожа до" />
			<p class="red_line">Каждый раз, когда Вы принимаете душ, Ваша кожа подвергается негативному воздействию содержащихся в водопроводной воде химических веществ, таких как хлор и нерастворимые соли кальция, которые сушат и стягивают ее.</p>
			<div class="clear"></div>
			<br/>
			<img class="icon1" src="images/herbalaloe_skin_after.png" alt="кожа после" title="кожа после" />
			<p class="red_line">Чтобы Ваша кожа всегда была здоровой, гладкой и нежной. Гербалайф разработала новую линию средств ухода за телом Hebal Aloe, включающую Гель для душа, Крем для тела, Смягчающий гель для тела.</p>
			<div class="clear"></div>
		</section>
		<section>
			<table>
				<caption>В составе новой линии средств для тела Herbal Aloe:</caption>
				<tr>
					<td>
						<img src="images/herbalaloe_aloe.png" alt="алоэ вера" title="алоэ вера" />
					</td>
					<td>
						<p><mark>Алоэ Вера</mark><br/>смягчает, увлажняет кожу и улучшает ее текстуру</p>
					</td>
				</tr>
				<tr>
					<td>
						<img src="images/herbalaloe_oil.png" alt="масла карите жожоба оливы" title="масла карите жожоба оливы" />
					</td>
					<td>
						<table>
							<tr>
								<td colspan="3">
									<p><mark>МАСЛА:</mark></p>
								</td>
							</tr>
							<tr>
								<td class="left">
									<p><mark>Карите</mark><br/>увлажняет,питает, улучшает эластичность</p>
								</td>
								<td class="left">
									<p><mark>Жожоба</mark><br/>успокаивает, снимает раздражение</p>
								</td>
								<td class="left">
									<p><mark>Олива</mark><br/>глубоко увлажняет и питает</p>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<img src="images/herbalaloe_img2.png" alt="и еще 10 ценных компонентов" title="и еще 10 ценных компонентов" />
					</td>
					<td class="middle">
						<p><mark>и еще 10 ценных компонентов:</mark></p>
					</td>
				</tr>
				<tr>
					<td class="top">
						<ul>
							<li>Ромашка</li>
							<li>смягчает, успокаивает, питает кожу</li>
						</ul>
					</td>
					<td class="top">
						<ul>
							<li>Шалфей</li>
							<li>снимает воспаления, выравнивает и питает кожу</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td class="top">
						<ul>
							<li>Подсолнечник</li>
							<li>богатейший источник витаминов и эфирных масел</li>
						</ul>
					</td>
					<td class="top">
						<ul>
							<li>Агава</li>
							<li>содержит комплекс микроэлементов: йод, натрий, кальций, селен, цинк, железо</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td class="top">
						<ul>
							<li>Экстракт юкки</li>
							<li>оказывает противовоспалительное действие</li>
						</ul>
					</td>
					<td class="top">
						<ul>
							<li>Леконосток</li>
							<li>источник природных антиоксидантов</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td class="top">
						<ul>
							<li>Полынь</li>
							<li>очищает и осветляет кожу</li>
						</ul>
					</td>
					<td class="top">
						<ul>
							<li>Хондрус курчавый</li>
							<li>обладает антибактериальным действием</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td class="top">
						<ul>
							<li>Расторопша</li>
							<li>источник уникального комплекса сильнейших природных антиоксидантов</li>
						</ul>
					</td>
					<td class="top">
						<ul>
							<li>Морская соль</li>
							<li>стимулирует процесс регенерации кожи, смягчает</li>
						</ul>
					</td>
				</tr>
			</table>
		</section>	
	</article>	
</div>