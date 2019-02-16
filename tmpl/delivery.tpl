<div class="center_block" >
	<div class="center_header">
		<h1>Доставка</h1>
	</div>
	<?php if( $hornav ) {?>
		<?=$hornav?>
	<?php }?>
	<div class="center_content">
		<div id="delivery">
			<h3><a href="<?=$link_self?>">Cамовывоз.</a></h3>
			<?php if( $view_self ){ ?>
				<div class="text">
					<p>Забрать Ваш заказ вы можете по адресу:</p>
					<p>   г.Москва, м.Сокол, Ленинградский пр-кт, д. 76, корп.1</p>
					<p>   с 10:30 до 21:00 с пнд. по пятн.</p>
					<p>   с 11:00 до 16:00 в субб.</p>
					<p>   Воскресенье - выходной.</p>
				</div>
				<div>
					<script type="text/javascript" charset="utf-8" src="https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=DcZpSpKNNawEPxZvZWfonwwiH6l68aT1&width=400&height=300&lang=ru_UA&sourceType=constructor"></script>
				</div>
			<?php } ?>
			<h3><a href="<?=$link_delivery?>">Доставка по Москве, Московской области и другие регионы России.</a></h3>
			<?php if( $view_delivery ){	include "moscow_region_delivery.tpl"; } ?>	
		</div>
	</div>	
</div>