<style>
	#body_buffing_scrab .desc_title {
		background-color: #a5cd40;
		border-radius: 0px 10px 10px 0px;
		margin: 0px 0px 0px 0px;
		padding: 0px 0px 0px 0px;
		text-align: center;
		height: 60px;
		width: 300px;
	}
	#body_buffing_scrab .desc_title p {
		color: #fff;
		padding: 4px 10px;
		font-size: 100%;
	}
	#body_buffing_scrab  article {
		padding-top: 20px;
	}
	#body_buffing_scrab  article p, #body_buffing_scrab  article li {
		color: #3e434a;
		font-size: 90%;
	}
	#body_buffing_scrab  #body_buffing_scrab_1 {
		background: url(../images/bel_tea_img.png) no-repeat right center;
		background-size: 325px;
		margin: 0px 0px 20px 0px;
		padding: 0px;
		height: 350px;
	}
	#body_buffing_scrab  #body_buffing_scrab_1 h3{
		padding: 0;
	}
	#body_buffing_scrab  #body_buffing_scrab_1 ul{
		padding: 0px;
		margin-left: 30px;
		width: 40%;
	}
	#body_buffing_scrab  #body_buffing_scrab_1 li{
		margin: 15px 0px;
		text-align: justify;
	}
	#body_buffing_scrab  #body_buffing_scrab_1 h3 {
		margin-top: 25px;
	}
	#body_buffing_scrab  .composition, #body_buffing_scrab  .composition td{
		padding: 0px;
	}
	#body_buffing_scrab  .composition p {
		margin: 0px;
		padding: 0px 0px 20px 10px;
	}
	#body_buffing_scrab  .justify {
		text-align: justify;
	}
	#body_buffing_scrab  .top {
		vertical-align: top;
	}
	#body_buffing_scrab  .middle {
		vertical-align: middle;
	}
	#body_buffing_scrab .icon1 {
		width: 150px;
	}
	#body_buffing_scrab ul li {
		margin: 15px 0px;
	}
	#body_buffing_scrab #remark {
		font-size: 80%;
	}
</style>
<div id="body_buffing_scrab">
	<div class="desc_title">
		<p>Комплексный уход за кожей рук и ног "Белый чай"</p>
	</div>
	<?php if( $product->certificate ) { ?>
		<div class="сertificate">
			<a href="<?=Config::DIR_IMG_CERTIFICATE.$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
		</div>
	<?php } ?>
	<article>
		<section>
			<p class="red_line">Учеными доказано, что кожа рук особенно подвержена старению. Нелегко приходится и коже ног: из-за перепадов температур, неудобной обуви кожа ног становится сухой, трескается и вызывает дискомфорт.</p>
			<p class="red_line">Комплекс средств "Белый чай" на растительной основе вернет коже рук и ног нежность, гладкость и молодость, а Вам - прекрасное настроение!</p>
		</section>
		<section>
			<div id="body_buffing_scrab_1">
				<h3>ПРЕИМУЩЕСТВА:</h3>
				<ul>
					<li>Эффективно увлажняет и питает;</li>
					<li>Способствует обновлению кожи и помогает предотвратить ее преждевременное старение;</li>
					<li>Образует тонкий защитный слой;</li>
					<li>Легко впитывается, не оставляет жирной пленки;</li>
					<li>Обладает легким ароматом белого чая.</li>
				</ul>
			</div>
			<table class="composition">
				<caption><h3>Линия "Белый чай" - не менее 90% натуральных компонентов.</h3></caption>
				<tr>
					<td class="top">
						<img class="icon1" src="images/bel_tea_tea.png" alt="белый чай" title="белый чай" />
					</td>
					<td class="middle">
						<p>Белый чай</p>
					</td>
					<td>
						<p>Лидер среди растительных антиоксидантов. Его уникальные свойства обусловлены высокой концентрацией полифенолов, активность которых в несколько раз превышает активность витамина Е. Полифенолы оказывают также противовоспалительное и антибактериальное действие, способствуют проникновению биологическиактивных веществ в кожу. Мягкий, нежный и легкий запах белого чая освежает и тонизирует.</p>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<hr/>
					</td>
				</tr>
				<tr>
					<td class="top">
						<img class="icon1" src="images/bel_tea_smorodina.png" alt="масло черной смородины" title="масло черной смородины" />
					</td>
					<td class="middle">
						<p>Масло семян черной смородины</p>
					</td>
					<td>
						<p>Очень ценное масло, так как содержит линолевую кислоту, витамин Е, каротиноиды. Способствует поддержанию целостности липидного барьера кожи, нормализуя ее влагоудерживающие свойства, защищает от негативного воздействия окружающей среды. Масло семян черной смородины заключено в микрокапсулы для лучшей сохранности и доставки активных веществ непосредственно к клеткам кожи.</p>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<hr/>
					</td>
				</tr>
				<tr>
					<td class="top">
						<img class="icon1" src="images/bel_tea_maslo.png" alt="растительные масла" title="растительные масла" />
					</td>
					<td class="middle">
						<p>Растительные масла и экстракты</p>
					</td>
					<td>
						<ul>
							<li>Масло каритэ - питательное масло-основа, обеспечивает комфортные ощущения на коже и восстановление гидро-липидной мантии;</li>
							<li>Масло жожоба обладает уникальным свойством встраиваться в защитный гидро-липидный барье и предохраняет кожу от повреждений;</li>
							<li>Масло ореха макадамия - самого дорогого ореха в мире - обладает прекрасными питательными, смягчающими и увлажняющими свойствами;</li>
							<li>Экстракт мяты быстро успокаивает раздражения, что особенно важно для участков кожи, подвергающихся механическим воздействиям.</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<hr/>
					</td>
				</tr>
				<tr>
					<td class="top">
						<img class="icon1" src="images/bel_tea_vitamini.png" alt="витамины" title="витамины" />
					</td>
					<td class="middle">
						<p>Комплекс витаминов и минералов</p>
					</td>
					<td>
						<ul>
							<li>Комплекс витаминов (В3, В5, В6, С, Е) стимулирует обновление клеток и регенерацию тканей, обеспечивает дополнительное увлажнение и смягчение;</li>
							<li>Mn+Cu+Zn* - мультиминеральный активный комплекс, стимулирует обновление клеток, способствует восстановлению тонуса кожи;</li>
							<li>D-пантенол увлажняет, способствует заживлению микроповреждений;</li>
							<li>Allantoin* смягчает, способствует обновлению клеток кожи;</li>
							<li>Биосахариды способствуют разглаживанию кожи.</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<hr/>
					</td>
				</tr>
			</table>
			<p id="remark">*Содержится в Смягчающем креме для ног.</p>
		</section>	
	</article>	
</div>