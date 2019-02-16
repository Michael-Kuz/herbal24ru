<div class="center_block" >
	<div class="center_header">
		<h1><?=$title?></h1>
	</div>
	<?=$hornav?>
	<div class="center_content">
		<div id="addorder">
			<h2>Ваша заявка принята!</h2>
			<p>Дистрибьютор Гербалайф свяжется с Вами в ближайшее время.</p>
			<?php if( $message ){ ?>
				<p><?=$message?></p>
			<?php } ?>
			<table class="info">
				<tr>
					<td colspan="5">
						<hr/>
					</td>	
				</tr>
				<tr>
					<td calspan="2">Номер заявки: </td><td colspan="3" class="bold"><?=$number?></td>
				</tr>
				<tr>
					<td colspan="5">
						<hr/>
					</td>	
				</tr>
				<tr>
					<td colspan="2" >ФИО: </td><td colspan="3" ><?=$name?></td>
				</tr>
				<tr>
					<td colspan="5">
						<hr/>
					</td>	
				</tr>
				<tr>		
					<td colspan="2" >Телефон: </td><td colspan="3" ><?=$phone?></td>
				</tr>
				<tr>
					<td colspan="5">
						<hr/>
					</td>	
				</tr>
				<tr>		
					<td colspan="2" >E-mail: </td><td colspan="3" ><?=$email?></td>
				</tr>
				<tr>
					<td colspan="5">
						<hr/>
					</td>	
				</tr>
				<tr>
					<td colspan="2">Ваш вопрос: </td><td colspan="3" ><?=$note?></td>
				</tr>
				<tr>
					<td colspan="5">
						<hr/>
					</td>	
				</tr>
				<tr>
					<td colspan="2" >Дата заявки: </td><td colspan="3" ><?=$date_order?></td>
				</tr>	
				<tr>
					<td colspan="5">
						<hr/>
					</td>	
				</tr>
			</table>
		</div>
	</div>
</div>