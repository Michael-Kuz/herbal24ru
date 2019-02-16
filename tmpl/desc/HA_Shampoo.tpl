<style>
	#herbalaloe_hair .desc_title {
		background-color: #5fb346;
		border-radius: 0px 10px 10px 0px;
		margin: 0px 0px 0px 0px;
		padding: 0px 0px 0px 0px;
		text-align: center;
		height: 60px;
		width: 300px;
	}
	#herbalaloe_hair .desc_title p {
		color: #fff;
		padding: 4px 10px;
		font-size: 100%;
	}
	#herbalaloe_hair  article {
		padding-top: 20px;
	}
	#herbalaloe_hair  article h3{
		margin: 0px;
		padding: 0px;
	}
	#herbalaloe_hair  article p{
		margin: 0px;
		padding: 0px;
	}
	#herbalaloe_hair  article p, #herbalaloe_hair  article li {
		color: #3e434a;
		font-size: 90%;
	}
	#herbalaloe_hair img.icon1 {
		margin: 0px 10px 0px 10px;
		float: left;
		width: 100px;
	}
	
	#herbalaloe_hair article table{
		margin-top: 40px;
	}
	#herbalaloe_hair article table img {
		width: 130px;
	}
	#herbalaloe_hair mark {
		color: #7ac145;
		background: #fff;
		font-size: 120%;
	}
	#herbalaloe_hair article table td {
		padding-top: 20px;
	}
	#herbalaloe_hair article table td ul li:first-child {
		color: #7ac145;
		list-style: none;
		font-size: 120%;
	}
	#herbalaloe_hair article table td ul {
		margin: 0px;
	}
	#herbalaloe_hair ul li {
		margin: 5px 0px;
	}
	#herbalaloe_hair .justify {
		text-align: justify;
	}
	#herbalaloe_hair .top {
		vertical-align: top;
	}
	#herbalaloe_hair .middle {
		vertical-align: middle;
	}
</style>
<div id="herbalaloe_hair">
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
			<img class="icon1" src="images/herbalaloe_hair_before.png" alt="волосы до" title="волосы до" />
			<p class="red_line">Каждый раз, когда Вы принимаете душ, содержащиеся в водопроводной воде химические вещества, такие как хлор и нерастворимые соли кальция, повреждают структуру Ваших волос, иссушая и ослабляя их.</p>
			<div class="clear"></div>
			<br/>
			<img class="icon1" src="images/herbalaloe_hair_after.png" alt="волосы после" title="волосы после" />
			<p class="red_line">Чтобы Ваши волосы всегда были сильными и здоровыми, Гербалайф разработала новые Укрепляющие шампунь и кондиционер Herbal Aloe.</p>
			<div class="clear"></div>
		</section>
		<section>
			<table>
				<caption>В составе новой линии средств для волос Herbal Aloe</caption>
				<tr>
					<td>
						<img src="images/herbalaloe_aloe.png" alt="алоэ вера" title="алоэ вера" />
					</td>
					<td>
						<p><mark>Алоэ Вера</mark><br/>обладает уникальными восстанавливающими свойствами, укрепляет и смягчает</p>
					</td>
				</tr>
				<tr>
					<td>
						<img src="images/herbalaloe_wheat.png" alt="протеины пшеницы" title="протеины пшеницы" />
					</td>
					<td>
						<p><mark>Протеины пшеницы</mark><br/>укрепляют, восстанавливают структуру волос</p>
					</td>
				</tr>
				<tr>
					<td>
						<img src="images/herbalaloe_img1.png" alt="и еще 6 ценных компонентов" title="и еще 6 ценных компонентов" />
					</td>
					<td class="middle">
						<p><mark>и еще 6 ценных компонентов:</mark></p>
					</td>
				</tr>
				<tr>
					<td class="top">
						<ul>
							<li>Экстракт юкки</li>
							<li>защищает волосы от негативного влияния окружающей среды</li>
						</ul>
					</td>
					<td class="top">
						<ul>
							<li>Расторопша</li>
							<li>источник комплекса сильнейших природных антиоксидантов - флаволигнанов</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td class="top">
						<ul>
							<li>Полынь</li>
							<li>стимулирует рост волос, укрепляет</li>
							<li>устраняет излишнюю жирность волос</li>
						</ul>
					</td>
					<td class="top">
						<ul>
							<li>Шалфей</li>
							<li>тонизирует кожу головы, питает волосы по всей длине, улучшая структуру и внешний вид волос</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td class="top">
						<ul>
							<li>Жожоба</li>
							<li>богатейший источник витаминов и эфирных масел</li>
							<li>глубоко увлажняет и питает волосы</li>
						</ul>
					</td>
					<td class="top">
						<ul>
							<li>Агава</li>
							<li>содержит комплекс ценных микроэлементов: йод, натрий, кальций, селен, цинк, железо</li>
						</ul>
					</td>
				</tr>
			</table>
		</section>	
	</article>	
</div>