<div class="center_block" >
	<div class="center_header">
		<h1>Результаты</h1>
	</div>
	<?php if( $hornav ){ ?>
		<?=$hornav?>
	<?php } ?>
	<div class="center_content">
		<div id="results">
			<table>
				<?php $i=0; ?>
				<?php foreach( $results as $result ){?>
					<?php if( $i%4 == 0 ){ ?>
						<tr>
					<?php } ?>	
						<td>
							<div class="intro_product">
								<a href="#" onclick="return false;">
									<img class="icon_product" src=" <?=$result->img?>" alt="<?=$result->name?>" title="<?=$result->title?>" data-title="<?=$result->title?>" data-name="<?=$result->name?>" data-desc="<?=$result->description?>" data-img=<?=$result->img?> />
								</a>
							</div>
						</td>
					<?php if( ($i+1)%4 == 0 ){ ?>
						</tr>
					<?php } $i++; ?>	
				<?php } ?>
				<?php while( $i%4 != 0) { ?>
							<td></td>
							<?php if( ($i+1)%4 == 0 ){ ?>
									</tr>
							<?php } $i++; ?>
				<?php } ?>
			</table>
			<div class="results_disclaimer">
				Любые утверждения в отношении контроля веса относятся к Программе контроля веса Herbalife, включающей, помимо прочего, сбалансированную диету, регулярные физические упражнения, ежедневное потребление необходимого количества жидкости, употребление биологически активных добавок в случае необходимости и достаточный отдых. Все результаты индивидуальны и могут различаться.
			</div>
		</div>
	</div>	
</div>	