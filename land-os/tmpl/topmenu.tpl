<nav class="top-menu">
	<?php foreach( $items as $item ) { ?>
		<a class="top-menu-item link-effect-1 <?php if($item->link == $uri) {?>active<?php } ?>" href="<?=Config::ADDRESS?><?=$item->link?>" <?php if($item->link == "#") { ?>id="popup"<?php } ?>><?=$item->title?></a>
	<?php } ?>
</nav>