<style>
	#rouz .desc_title {
		background-color: #bbaed4;
		border-radius: 0px 10px 10px 0px;
		margin: 0px 0px 0px 0px;
		padding: 0px 0px 0px 0px;
		text-align: center;
		height: 60px;
		width: 300px;
	}
	#rouz .desc_title p {
		color: #fff;
		padding: 5px 10px;
		font-size: 100%;
	}
	#rouz article {
		padding-top: 20px;
	}
	#rouz article section p {
		text-align: justify;
	}
	#rouz .video{
		width: 500px;
		height: 330px;
	}
	#rouz table {
		width: 100%;
	}
	#rouz table td {
		padding: 0;
	}
	#rouz #rouz_1 {
		background: url(../images/rouz_img_1.png) no-repeat center center;
		background-size: 100%;
		margin: 0px;
		padding: 0px;
		height: 314px;
		width: 100%;
	}
	#rouz #rouz_1 h3 {
		margin: 0px;
		padding: 15px 0px 0px 0px;
	}
	#rouz #rouz_1 ul {
		margin: 15px 0px 15px 0px; 
	}
	#rouz #rouz_1 li {
		margin: 5px;
		padding: 0px;
		width: 46%;
	}
	#rouz #rouz_2 {
		background-color: #bbaed4;
		border-radius: 10px 0px 0px 10px;
		text-align: center;
		float: right;
		height: 56px;
		width: 300px;
	}
	#rouz #rouz_2 p {
		color: #fff;
		font-weight: 600;
		margin: 0px;
		padding: 10px 30px;
	}
	#rouz #rouz_3 img{
		width: 100%;
	}
	#rouz #rouz_3 {

	}
	#rouz .rouz_img_size{
		width: 30px;
	}
	#rouz #remark {
		margin: 0px;
		font-size: 80%;
	}
</style>
<div id="rouz">
	<div class="desc_title">
		<p>Комплекс мощных антиоксидантов для продления молодости клеток</p>
	</div>
	<div class="сertificate">
		<a href="<?=Config::DIR_IMG_CERTIFICATE.$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
	</div>
	<article>
		<section>
			<p class="red_line">Одной из причин преждевременного старения организма является повреждения клеток свободными радикалами. Чтобы продлить молодость Ваших клеток, важно защитить организм от окислительного стресса с помощью антиоксидантов, которые эффективно нейтрализуют действие свободных радикалов.</p>
			<p class="red_line">Включив биодобавку РоузГард в Ваш рацион, Вы можете быть уверены, что обеспечиваете организм мощными антиоксидантами испособствуете продлению молодости клеток.</p>
		</section>
		<section>
			<object>
				<iframe class="video" src="http://www.youtube.com/embed/_ma3Imzduf8" frameborder="0" allowfullscreen></iframe>
			</object>
		</section>
		<section>
			<table>
				<tr>
					<td>
						<div id="rouz_1">
							<h3>ПРЕИМУЩЕСТВА:</h3>
							<ul>
								<li>Уникальная формула многоуровневого действия</li>
								<li>Способствует предотвращению преждевременного старения клеток</li>
								<li>Способствует активации и усилению действия других антиоксидантов</li>
								<li>Обеспечивает мощный долговременный эффект</li>
							</ul>
						</div>
					</td>	
				</tr>		
			</table>
			<div id="rouz_2">
				<p>СУТОЧНАЯ ПОТРЕБНОСТЬ В ВИТАМИНАХ А, С, Е*</p>
			</div>
			<div class="clear"></div>	
			<div id="rouz_3">
				<h3>В СОСТАВЕ РОУЗГАРД:</h3>
				<img src="images/rouz_frame.png" alt="в составе роузгард" />
				<h2>Принимайте РоузГард каждый день:</h2>
				<img src="images/rouz_day.png" alt="в течение дня" />
			</div>
			<p id="remark">*БАД. Не является лекарственным средством.</p>
		</section>
		<object width="470" height="353">
			<iframe width="500" height="300" src="http://www.youtube.com/embed/UmQwTncbYXI" frameborder="0" allowfullscreen></iframe>
		</object>
	</article>	
</div>