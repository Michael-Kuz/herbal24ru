<?php
require_once "printItem.tpl";
?>
<div class="left_block">
	<div class="left_header"><p><?=$title?></p></div>
	<div class="left_content">
		<nav>
			<ul>
				<?php foreach ($items as $item) { ?>
					<?=printItem($item, $items, $childrens, $active)?>
				<?php } ?>
			</ul>	
		</nav>
	</div>
</div>


