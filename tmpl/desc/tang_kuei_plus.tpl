<style>
	#tankyai .desc_title {
		background-color: #a2b451;
		border-radius: 0px 10px 10px 0px;
		margin: 0px 0px 0px 0px;
		padding: 0px 0px 0px 0px;
		text-align: center;
		height: 84px;
		width: 300px;
	}
	#tankyai .desc_title p {
		color: #fff;
		padding: 4px 10px;
		font-size: 100%;
	}
	#tankyai .сertificate {
		margin: 0px 0px 10px 0px;
	}
	#tankyai article {
		padding-top: 20px;
	}
	#tankyai #tankyai_1 {
		background: url(../images/tankyai_img.png) no-repeat right center;
		background-size: 394px;
		margin: 0px;
		padding: 0px;
		height: 416px;
	}
	#tankyai #tankyai_1 h3{
		padding: 0;
	}
	#tankyai #tankyai_1 ul{
		padding: 0px;
		margin-left: 30px;
		width: 50%;
	}
	#tankyai #tankyai_1 li{
		margin: 15px 0px;
	}
	#tankyai #tankyai_1 h3 {
		margin-top: 25px;
	}
	#tankyai .composition {
		border: 2px solid #7ac142;
		border-radius: 10px;
		margin:10px auto;
		padding: 0px;
		width: 97%;
	}
	#tankyai .composition td{
		margin: 0px;
		padding: 5px 0px;
		text-align: left;
	}
	#tankyai .composition td ul {
		margin: 0px;
		padding-left: 40px;
		text-align: left;
	}
	#tankyai .composition .text{
		color: #fff;
		background-color: #7ac142;
		border-radius: 6px;
		padding: 10px 0px;
		width: 100%;
	}
	#tankyai .composition .text p{
		color: #fff;
		margin: 0px 5px 0px 5px;
		font-size: 100%;
	}
	
	#tankyai .composition .icon1 {
		margin: 0px 0px;
		width: 150px;
	}
	#tankyai .composition .icon2 {
		margin: 0px 0px;
		width: 80px;
	}
	#tankyai .middle {
		vertical-align: middle;
	}
	#tankyai .top {
		vertical-align: top;
	}
	#tankyai .center {
		text-align: center;
	}
	
	
	#tankyai #remark {
		font-size: 80%;
	}
</style>
<div id="tankyai">
	<div class="desc_title">
		<p>Фитокомплекс для снижения дискомфортных ощущений и поддержания активного образа жизни</p>
	</div>
	<div class="сertificate">
		<a href="<?=Config::DIR_IMG_CERTIFICATE.$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
	</div>
	<article>
		<section>
			<p class="red_line">Всем женщинам знакомы дискомфортные ощущения, связанные с ежемесячными изменениями, протекающими в женском организме. В такие моменты сложно вести активный образ жизни.</p>
			<p class="red_line">Тан Куай поможет снизить дискомфорт и поддержать активный образ жизни.</p>
		</section>
		<section>
			<div id="tankyai_1">
				<h3>ПРЕИМУЩЕСТВА:</h3>
				<ul>
					<li>Разработан специально для женщин, чтобы помочь Вам оставаться активными каждый день;</li>
					<li>Способствует расслаблению мышц, снимая дискомфорт и болезненные ощущения;</li>
					<li>Поддерживает женский организм, балансируя процессы в нем.</li>
				</ul>
			</div>
			<h3>В СОСТАВЕ:</h3>
			<table class="composition">
				<tr>
					<td class="middle">
						<img class="icon1" src="images/tankyai_dyagil.png" alt="корень дягеля" title="корень дягеля" />
					</td>
					<td class="middle">
						<p>Корень дягеля</p>
					</td>
					<td class="middle">
						<p>Веками в Китае это растение применялось как общий питательный тоник, нормализующий гормональный фон, и потому считалось особенно полезным для женщин.</p><br/>
						<p>Богат кальцием, витамином В, железом, магнием и эфирными маслами.</p>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<hr/>
					</td>
				</tr>
				<tr>
					<td class="middle">
						<img class="icon1" src="images/tankyai_romashka.png" alt="ромашка" title="ромашка" />
					</td>
					<td class="middle">
						<p>Ромашка</p>
					</td>
					<td class="middle">
						<p>Обладает расслабляющим и успокаивающим действием, способствует хорошему сну, снимает напряжение в мышцах.</p><br/>
						<p>Кроме того, ромашка обладает противовоспалительными, антисептическими, дезинфицирующими, болеутоляющими свойствами.</p>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<hr/>
					</td>
				</tr>
				<tr>
					<td class="middle">
						<img class="icon2" src="images/tankyai_ca.png" alt="кальций" title="кальций" />
					</td>
					<td class="middle">
						<p>Кальций</p>
					</td>
					<td>
						<p>Поддерживает костную ткань, уменьшает задержку воды в организме, активно участвует в процессах свертывания крови, играет важную роль в работе ферментных систем, влияет на деятельность сердечно-сосудистой и нервно-мышечной систем.</p>
					</td>
				</tr>
			</table>
			<p id="remark">*БАД. Не является лекарственным средством.</p>
		</section>		
	</article>	
</div>