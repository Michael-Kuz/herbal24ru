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
<div class="admin-table">
	<div class="admin-table-row">
		<div class="admin-table-cell">
			Общее количество заявок
		</div>
		<div class="admin-table-cell">
			Число обработанных заявок
		</div>
		<div class="admin-table-cell">
			Число оплаченных заявок
		</div>
		<div class="admin-table-cell">
			Число анулированных заявок
		</div>
		<div class="admin-table-cell">
			Общая сумма заявок
		</div>
		<div class="admin-table-cell">
			Общая сумма обработанных заявок
		</div>
		<div class="admin-table-cell">
			Общая сумма оплаченных заявок
		</div>
		<div class="admin-table-cell">
			Общая сумма анулированных заявок
		</div>
	</div>
	<div class="admin-table-row">
		<div class="admin-table-cell">
			<?=$total_orders?>
		</div>
		<div class="admin-table-cell">
			<?=$confirm_orders?>
		</div>
		<div class="admin-table-cell">
			<?=$paid_orders?>
		</div>
		<div class="admin-table-cell">
			<?=$cancel_orders?>
		</div>
		<div class="admin-table-cell">
			<?=$total_summ?> руб.
		</div>
		<div class="admin-table-cell">
			<?=$confirm_sum?> руб.
		</div>
		<div class="admin-table-cell">
			<?=$paid_sum?> руб.
		</div>
		<div class="admin-table-cell">
			<?=$cancel_sum?> руб.
		</div>
	</div>
</div>

		