<div class="parent-message">
	<div class="message">
		<p class="result"></p>
		<div class="ok-button">OK</div>
	</div>
</div>
<div class="admin-header">
	<div id="admin-h1">
		<h1><?=$title?></h1>
	</div>
</div>
<form class="admin-form-orders" name="admin_orders" action="<?=$action?>" method="<?=$method?>" onsubmit="return false" >
	<input class="delete" type="submit" name="delete" value="Удалить заказ">
	<input class="add" type="submit" name="add" value="Добавить заказ">
	<input class="save" type="submit" name="admin_orders" value="Сохранить заказ">
	<div class="admin-orders-table">
		<div class="admin-orders-table-row">
			<div class="admin-orders-table-cell">
			</div>
			<div class="admin-orders-table-cell">
				ID
			</div>
			<div class="admin-orders-table-cell">
				Имя
			</div>
			<div class="admin-orders-table-cell">
				Цена
			</div>
			<div class="admin-orders-table-cell">
				Телефон
			</div>
			<div class="admin-orders-table-cell">
				Мэйл
			</div>
			<div class="admin-orders-table-cell">
				Дата
			</div>
			<div class="admin-orders-table-cell">
				Дата подтверждения
			</div>
			<div class="admin-orders-table-cell">
				Дата оплаты	
			</div>
			<div class="admin-orders-table-cell">
				Дата анулирования	
			</div>
		</div>
			<?php foreach( $orders as $order) { ?>
				
				<div class="admin-orders-table-row" data-save="true">
					<div class="admin-orders-table-cell">
						<input  type="radio" name="radio" >
					</div>
					<div class="admin-orders-table-cell">
						<input  type="number" name="id" value="<?=$order->id?>" disabled >
					</div>
					<div class="admin-orders-table-cell">
						<input  type="text" name="name" value="<?=$order->name?>" pattern="^[0-9a-zA-Zа-яА-ЯёЁ_ ]+$" title="Допустимы буквы и цифры" maxlength="100" disabled required />
					</div>
					<div class="admin-orders-table-cell">
						<input  type="number" name="price" value="<?=$order->price?>" title="Десять цифр без пробелов"  disabled />
					</div>
					<div class="admin-orders-table-cell">
						<input  type="tel" name="phone" value="<?=$order->phone?>" title="Десять цифр без пробелов" pattern='[0-9]{10}' disabled required />
					</div>
					<div class="admin-orders-table-cell">
						<input  type="email" name="email" pattern='^[a-z0-9_][a-z0-9\._-]*@([a-z0-9]+([a-z0-9-]*[a-z0-9]+)*\.)+[a-z]+$' value="<?=$order->email?>" disabled>
					</div>
					<div class="admin-orders-table-cell">
						<input  type="<?php if($order->date_order) { ?>datatime<?php } else { ?>date<?php } ?>" name="date_order" value="<?=$order->date_order?>" title="Введите дату в формате дд.мм.гггг время в формате чч:мм:сс" pattern='\d{2}\.\d{2}\.\d{4}(\s\d{2}:\d{2}:\d{2}){0,1}' disabled required />
					</div>
					<div class="admin-orders-table-cell">
						<input  type="<?php if($order->date_confirm) { ?>datatime<?php } else { ?>date<?php } ?>" name="date_confirm" value="<?=$order->date_confirm?>" disabled>
					</div>
					<div class="admin-orders-table-cell">
						<input  type="<?php if($order->date_pay) { ?>datatime<?php } else { ?>date<?php } ?>" name="date_pay" value="<?=$order->date_pay?>" disabled>
					</div>
					<div class="admin-orders-table-cell">
						<input  type="<?php if($order->date_cancel) { ?>datatime<?php } else { ?>date<?php } ?>" name="date_cancel" value="<?=$order->date_cancel?>" disabled>
					</div>
				</div>
			<?php } ?>
	</div>
</form>

		