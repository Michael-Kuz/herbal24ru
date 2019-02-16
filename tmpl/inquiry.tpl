<div id="inquiry">
	<?php if ($header) { ?><p><?=$header?></p><?php } ?>
	<?php if ($message) { ?><p class="message"><?=$message?></p><?php } ?>
	<div <?php if ($name) { ?>id="<?=$name?>"<?php } ?>>
		<form <?php if ($name) { ?>name="<?=$name?>"<?php } ?> action="<?=$action?>" method="<?=$method?>" <?php if ($check) { ?>onsubmit="return checkForm(this)"<?php } ?> <?php if ($enctype) { ?>enctype="<?=$enctype?>"<?php } ?>>
			<table>
				<tr>
					<td>
						<?php foreach ($inputs as $input) { ?>
							<?php include "f_".$input->type.".tpl"; ?>
						<?php } ?>
					</td>
				</tr>
			</table>
		</form>
	</div>
</div>
