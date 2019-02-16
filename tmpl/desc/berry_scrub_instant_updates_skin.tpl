<style>
	#berry_scrub_instant_updates_skin .desc_title {
		background-color: #5fb346;
		border-radius: 0px 10px 10px 0px;
		margin: 0px 0px 5px 0px;
		padding: 0px 0px 0px 0px;
		text-align: center;
		height: 80px;
		width: 300px;
	}
	#berry_scrub_instant_updates_skin .desc_title p {
		color: #fff;
		padding: 16px 10px;
		font-size: 100%;
	}
	#berry_scrub_instant_updates_skin  article {
		padding-top: 20px;
	}
	#berry_scrub_instant_updates_skin  article h3{
		margin: 0px;
		padding: 0px;
	}
	#berry_scrub_instant_updates_skin  article p{
		margin: 0px;
		padding: 0px;
	}
	#berry_scrub_instant_updates_skin  article p, #berry_scrub_instant_updates_skin  article li {
		color: #3e434a;
		font-size: 90%;
	}
	#berry_scrub_instant_updates_skin ul li {
		margin: 5px 0px;
	}
	#berry_scrub_instant_updates_skin .video{
		margin: 5px 0px 0px 0px;
		width: 500px;
		height: 330px;
	}
	#berry_scrub_instant_updates_skin .justify {
		text-align: justify;
	}
	#berry_scrub_instant_updates_skin .top {
		vertical-align: top;
	}
	#berry_scrub_instant_updates_skin .middle {
		vertical-align: middle;
	}
</style>
<div id="berry_scrub_instant_updates_skin">
	<div class="desc_title">
		<p>Ягодный скраб для мгновенного обновления кожи</p>
	</div>
	<?php if( $product->certificate ) { ?>
		<div class="сertificate">
			<a href="<?=Config::DIR_IMG_CERTIFICATE.$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
		</div>
	<?php } ?>
	<article>
		<section>
			<p>Ягодный скраб, обогащенный антиоксидантами, отшелушивает, помогая сделать кожу мягкой и гладкой.</p>
		</section>
		<section>
			<ul>
				<li>Кожа выглядит более здоровой.</li>
				<li>Подходит для любого типа кожи.</li>
				<li>Без добавления парабенов и сульфатов.</li>
				<li>Протестировано дерматологами.</li>
			</ul>
			<p><b>ПРИМЕНЕНИЕ:</b> круговыми массажными движениями аккуратно нанесите средство на влажную кожу (избегайте области вокруг глаз). Смойте теплой водой. Затем на сухую кожу нанесите тонизирующий лосьон, антивозрастную сыворотку и увлажняющее средство. Используйте от 1 до 3 раз в неделю, по мере необходимости.</p>
		</section>	
		<section>
			<object>
				<iframe class="video" src="http://www.youtube.com/embed/qqxQY2Sf9ng" frameborder="0" allowfullscreen></iframe>
			</object>
		</section>
	</article>	
</div>