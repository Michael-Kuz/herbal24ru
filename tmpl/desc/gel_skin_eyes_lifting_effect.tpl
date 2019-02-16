<style>
	#gel_skin_eyes_lifting_effect .desc_title {
		background-color: #5fb346;
		border-radius: 0px 10px 10px 0px;
		margin: 0px 0px 5px 0px;
		padding: 0px 0px 0px 0px;
		text-align: center;
		height: 80px;
		width: 300px;
	}
	#gel_skin_eyes_lifting_effect .desc_title p {
		color: #fff;
		padding: 16px 10px;
		font-size: 100%;
	}
	#gel_skin_eyes_lifting_effect  article {
		padding-top: 20px;
	}
	#gel_skin_eyes_lifting_effect  article h3{
		margin: 0px;
		padding: 0px;
	}
	#gel_skin_eyes_lifting_effect  article p{
		margin: 0px;
		padding: 0px;
	}
	#gel_skin_eyes_lifting_effect  article p, #gel_skin_eyes_lifting_effect  article li {
		color: #3e434a;
		font-size: 90%;
	}
	#gel_skin_eyes_lifting_effect ul li {
		margin: 5px 0px;
	}
	#gel_skin_eyes_lifting_effect .video{
		margin: 5px 0px 0px 0px;
		width: 500px;
		height: 330px;
	}
	#gel_skin_eyes_lifting_effect .justify {
		text-align: justify;
	}
	#gel_skin_eyes_lifting_effect .top {
		vertical-align: top;
	}
	#gel_skin_eyes_lifting_effect .middle {
		vertical-align: middle;
	}
</style>
<div id="gel_skin_eyes_lifting_effect">
	<div class="desc_title">
		<p>Гель для кожи вокруг глаз с эффектом лифтинга</p>
	</div>
	<?php if( $product->certificate ) { ?>
		<div class="сertificate">
			<a href="<?=Config::DIR_IMG_CERTIFICATE.$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
		</div>
	<?php } ?>
	<article>
		<section>
			<p>Способствует улучшению внешнего вида нежной кожи вокруг глаз, повышая ее упругость и эластичность.</p>
		</section>
		<section>
			<ul>
				<li>Способствует снижению отечности вокруг глаз всего за 7 дней.</li>
				<li>Содержит восстанавливающий экстракт огурца.</li>
				<li>Подходит для всех типов кожи.</li>
				<li>Без добавления парабенов.</li>
				<li>Протестировано дерматологами.</li>
			</ul>
			<p><b>ПРИМЕНЕНИЕ:</b> легкими движениями нанесите гель тонким слоем на область вокруг глаз до полного впитывания.</p>
		</section>	
		<section>
			<object>
				<iframe class="video" src="http://www.youtube.com/embed/cKTNOvMUwm8" frameborder="0" allowfullscreen></iframe>
			</object>
		</section>
	</article>	
</div>