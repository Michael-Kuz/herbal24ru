<nav id="horizontal">
	<ul>
		<?php foreach ($items as $item) { ?>
			<li>
				<a <?php if ($item->link == $uri) {?>class="active"<?php } ?> <?php if ($item->external) { ?>rel="external"<?php } ?> href="<?=$item->link?>"><?=$item->title?></a>
			</li>
		<?php } ?>
	</ul>
	<form  class="float-right" name="search" action="<?=$link_search?>" method="get" >
		<table>
			<tr>
				<td><input type="text" name="query" placeholder="Поиск" ></td>
				<td><input type="submit" value="" ></td>
			</tr>
		</table>
	</form>
	<div class="clear"></div>
</nav>
