<style>
	#f2 .desc_title {
		background-color: #c40f2f;
		border-radius: 0px 10px 10px 0px;
		text-align: center;
		height: 60px;
		width: 300px;
	}
	#f2 .desc_title p {
		color: #fff;
		padding: 6px 10px;
		font-size: 100%;
	}
	#f2 article {
		padding-top: 20px;
	}
	#f2 #f2_1 {
		background: url(../images/f2_img.png) no-repeat center center;
		margin: 0px;
		padding: 0px;
		height: 500px;
		width: 100%;
	}
	#f2 #f2_1 ul{
		padding: 0px;
		margin-left: 30px;
	}
	#f2 #f2_1 li{
		margin: 15px 0px;
	}
	#f2 .middle {
		vertical-align: middle;
	}
	#f2 table td {
		padding-top: 5px;
	}
	#f2 table img {
		margin-right: 15px;
		width: 40px;
	}
	#f2 table p {
		padding-left: 10px;
	}
	#f2 #remark {
		font-size: 80%;
	}
</style>
<div id="f2">
	<div class="desc_title">
		<p>22 жизненно необходимых витамина и минерала за 1 прием!</p>
	</div>
	<?php if( $product->certificate ) { ?>
		<div class="сertificate">
			<a href="<?=Config::DIR_IMG_CERTIFICATE.$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
		</div>
	<?php } ?>
	<article>
		<section>
			<p class="red_line">Необходимым условием снижения веса является сокращение потребления калорий, то есть сокращение количества потребляемой пищи. В тоже время с сокращением количества пищи сокращается и количество витаминов и минералов, поступающих из продуктов питания, и организм может испытывать их нехватку. Это может проявляться в виде упадка сил, ослабления иммунитета, плохого состояния кожи, волос и ногтей.</p>
			<p class="red_line">Мультивитаминный комплакс Формула2 поможет избежать проблем, вызванных сокращением поступления витаминов и минералов из пищи.</p>
		</section>
		<section>
			<div id="f2_1">
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
						<img src="images/vitamin_a.png" alt="витамин А" />
					</td>
					<td class="middle">
						<b>Витамин А</b>
					</td>
					<td>
						<p>Способствует укреплению имунной системы, поддерживает здоровое состояние костей и зубов и является мощным антиоксидантом. Важен для зрения.</p>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<hr/>
					</td>
				</tr>
				<tr>
					<td class="middle">
						<img src="images/vitamin_c.png" alt="витамин С"/>
					</td>
					<td class="middle">
						<b>Витамин С</b>
					</td>
					<td>
						<p>Играет важную роль в поддержании нормальной работы имунной системы.</p>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<hr/>
					</td>
				</tr>
				<tr>
					<td class="middle">
						<img src="images/elem_mn.png" alt="марганец" />
					</td>
					<td class="middle">
						<b>Марганец</b>
					</td>
					<td>
						<p>Участвует в регуляции уровня сахара в крови (способствует образованию инсулина).</p>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<hr/>
					</td>
				</tr>
				<tr>
					<td class="middle">
						<img src="images/vitamin_e.png" alt="витамин Е" />
					</td>
					<td class="middle">
						<b>Витамин Е</b>
					</td>
					<td class="middle">
						<p>Отвечает за нормальное кровообращение.</p>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<hr/>
					</td>
				</tr>
				<tr>
					<td class="middle">
						<img src="images/vitamin_b.png" alt="витамины группы В" />
					</td>
					<td class="middle">
						<b>Витамины<br/>группы В</b>
					</td>
					<td>
						<p>Необходимы для поддержки здорового клеточного метаболизма.<br/>Играют важную роль в процессах кроветворения и производства антител.</p>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<hr/>
					</td>
				</tr>
				<tr>
					<td class="middle">
						<img src="images/elem_cu.png" alt="медь" />
					</td>
					<td class="middle">
						<b>Медь</b> 
					</td>
					<td>
						<p>Участвует в процессах образования крови, костей и регенерации тканей, энергообразовании, способствует укреплению нервной системы.</p>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<hr/>
					</td>
				</tr>
				<tr>
					<td class="middle">
						<img src="images/elem_i.png" alt="йод" />
					</td>
					<td class="middle">
						<b>Йод</b> 
					</td>
					<td>
						<p>Необходим для нормального функционирования щитовидной железы.</p>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<hr/>
					</td>
				</tr>
				<tr>
					<td class="middle">
						<img src="images/vitamin_b9.png" alt="фолиевая кислота" />
					</td>
					<td class="middle">
						<b>Фолиевая кислота</b> 
					</td>
					<td>
						<p>Оказывает стимулирующее действие на кроветворение, участвует в синтезе аминокислот.</p>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<hr/>
					</td>
				</tr>
				<tr>
					<td class="middle">
						<img src="images/elem_ca.png" alt="кальций" />
					</td>
					<td class="middle">
						<b>Кальций</b> 
					</td>
					<td>
						<p>Составляет основу костной ткани, влияет на нервно-мышечную и сердечно-сосудистую системы.</p>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<hr/>
					</td>
				</tr>
				<tr>
					<td class="middle">
						<img src="images/elem_zn.png" alt="цинк" />
					</td>
					<td class="middle">
						<b>Цинк</b> 
					</td>
					<td>
						<p>В составе инсулина необходим для углеводного обмена, кроветворения, фотохимических реакций зрения.</p>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<hr/>
					</td>
				</tr>
				<tr>
					<td class="middle">
						<img src="images/elem_fe.png" alt="железо" />
					</td>
					<td class="middle">
						<b>Железо</b> 
					</td>
					<td>
						<p>Играет важную роль в образовании гемоглобина.</p>
					</td>
				</tr>
			</table>
			
			
			<p id="remark">*БАД. Не является лекарственным средством.</p>
		</section>		
	</article>
</div>	
