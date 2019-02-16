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
<form class="form-statistics" name="admin_statistics" action="<?=$action?>" method="<?=$method?>" >
	<label>From</label><input type="date" name="from" value="" >
	<label>To</label><input type="date" name="to" value="" >
	<label>UTM-Source</label><input type="text" name="utm_source" value="" >
	<label>UTM-Campaing</label><input type="text" name="utm_campaing" value="" >
	<label>UTM-Content</label><input type="text" name="utm_content" value="" >
	<label>UTM-Term</label><input type="text" name="utm_term" value="" >
	<label>ref</label><input type="text" name="ref" value="" >
	<label>Date</label><input type="date" name="date" value="" >
	<input type="submit" name="admin_statistics" value="ОТПРАВИТЬ ЗАПРОС" >
</form>
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

		