<footer>
	<div id="f_sep_1"></div>
	<nav>
		<ul>
			<?php foreach ($items as $item) { ?>
				<li>
					<a <?php if ($item->link == $uri) { ?>class="active"<?php } ?> <?php if ($item->external) { ?>rel="external"<?php } ?> href="<?=$item->link?>"><?=$item->title?></a>
				</li>
			<?php } ?>
		</ul>
	</nav>
	<form name="search" action="<?=$link_search?>" method="get" >
		<table>
			<tr>
				<td><input type="text" name="query" placeholder="Поиск" ></td>
				<td><input type="submit" value="" ></td>
			</tr>
		</table>
	</form>
	<div class="clear"></div>
	<p>Copyright &copy; 2014-<?=date("Y")?> Кузьменко Михаил Юрьевич. Все права защищены.</p>
	<div id="counter">
		<?php include_once "counter.php"; ?>
	</div>
</footer>