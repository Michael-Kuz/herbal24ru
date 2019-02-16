<table>
	<?php $i=0; ?>
	<?php foreach( $products as $product ){?>
		<?php if( $i%4 == 0 ){ ?>
			<tr>
		<?php } ?>	
			<td>
				<div class="intro_product">
					<a class="link_description" href="<?=$link_desc?>?id=<?=$product->id?>&section_id=<?=$product->section_id?>" >
						<img class="icon_product" src="<?=$product->img?>" alt="<?=$product->title?>" title="<?=$product->title?>" />
						<div class="name_product"><?=$product->title?></div>
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