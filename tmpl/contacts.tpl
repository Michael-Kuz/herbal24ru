<div class="center_block" >
	<div class="center_header">
		<h1><?=$header?></h1>
	</div>
	<?=$hornav?>		
	<div class="center_content">	
		<div id="contacts">
			<table>
				<tr>
					<td></td>
					<td></td>
					<td rowspan="6">
						<img id="my_foto_contact" src="images/<?=$adm_foto?>" alt="Мое фото" />
					</td>
				</tr>
				<tr>
					<td>Телефон:</td>
					<td><?=$adm_phone." ".$adm_name?></td>
				</tr>
				<tr>
					<td>E-mail:</td>
					<td><a href="#"><?=$adm_email?></a></td>
				</tr>
				<tr>
					<td>Facebook:</td>
					<td><a href="<?=$adm_facebook?>" target="<?=$target_facebook?>"><?=$adm_facebook?></a></td>
				</tr>
				<tr>
					<td>VKontakte:</td>
					<td><a href="<?=$adm_vk?>" target="<?=$target_vk?>" ><?=$adm_vk?></a></td>
				</tr>
				<tr>
					<td>Skype:</td>
					<td><?=$adm_skype?></td>
				</tr>
				<tr>
					<td colspan="3"><?=$contact_form?></td>
				</tr>
			</table>
		</div>
	</div>	
</div>
