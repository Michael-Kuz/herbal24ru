	function showMessage(message,event){
		$("#interactive_message").css("left", event.pageX);
		$("#interactive_message").css("top", event.pageY);
		$("#interactive_message").html(message);
		$("#interactive_message").show(200);
	}
$(document).ready( function() {
	//==================================
	/*=== прокрутка страницы до предыдущего положения при ее обновлении ===*/
	//var scrollTop = window.pageYOffset || document.documentElement.scrollTop;
	//alert( "Текущая прокрутка: " + scrollTop );
	//-----------------------------------------------------------------------------------
	/*=== Инициализируем обьект для эффектов WOW ===*/
	var wow = new WOW();
	wow.init();
	//-----------------------------------------------------------------------------------
	/*=== оригинальный scroll bar ===*/
	$(".content nav, #consultation_folder nav").niceScroll({cursoropacitymin: 0.2});
	//-----------------------------------------------------------------------------------
	/*=== обработка событий от radio-кнопок при перезагрузки страницы CART ===*/
	$("#cart_trust-1 fieldset").ready(function(){
		var el_input = document.getElementsByName('type_delivery');
		for (var i = 0; i < el_input.length; i++) {
			if( el_input[i].checked ){
				switch( el_input[i].value ){
					case "self":
						$(".cour_post_mail").css("display", "none");
						$(".cour_post_mail textarea[name='address']").removeAttr("required");
						$(".self").css("display", "block");
						$("#cart_trust-1 input[name='city']").attr("required","");
						break;
					case "courier":
					case "postamat":
					case "mail":
						$(".self").css("display", "none");
						$("#cart_trust-1 input[name='city']").removeAttr("required");
						$(".cour_post_mail").css("display", "block");
						$(".cour_post_mail textarea[name='address']").attr("required","");
						break;
					default:
				}
			}
		}
	});
	/*=== Обработка событий click от radio-кнопок на странице CART ===*/
	$("#cart_trust-1 input[type='radio']").bind("click", function(){
		switch( $(this).val() ){
			case "self":
				$(".cour_post_mail").css("display", "none");
				$(".cour_post_mail textarea[name='address']").removeAttr("required");
				$(".self").css("display", "block");
				$("#cart_trust-1 input[name='city']").attr("required","");
				break;
			case "courier":
			case "postamat":
			case "mail":
				$(".self").css("display", "none");
				$("#cart_trust-1 input[name='city']").removeAttr("required");
				$(".cour_post_mail").css("display", "block");
				$(".cour_post_mail textarea[name='address']").attr("required","");
				break;
			default:
		}
	});
	//-----------------------------------------------------------------------------------
	/*=== страница CART обработка изменений количества продукта ===*/
	function DeliveryPrice( obj ){ /*=== корректировка цены доставки ===*/
		var el_p = document.getElementsByClassName('delivery_info');
		for (var i = 0; i < el_p.length; i++) {
			var el = el_p[i].getElementsByTagName('span');
			switch( i ){
				case 1:
					el[0].innerHTML = obj.for_free_delivery ? obj.courier_price+" руб." : "бесплатно";
					break;
				case 2:
					el[0].innerHTML = obj.for_free_delivery ? obj.postamat_price+" руб." : "бесплатно";
					break;
				case 3:
					el[0].innerHTML = obj.mail_price+" руб.";
			}
		}
	}
	
	function ConditionsForFreeDelivery( obj ){ /*=== вывод инфы по условию бесплатной доставки ===*/
		//выдаем инфу по условиям бесплатной доставки
		if( obj.for_free_delivery == obj.summ_for_free_delivery ) { 
			$("#cart_trust-1 .free_delivery").html( "Чтобы получить бесплатную доставку в постамат или курьером, необходимо сделать заказ на сумму не менее <b>"+obj.for_free_delivery+" "+obj.suffix+"."+"</b> (данная акция не распространяется на протеиновые батончики)" );
		} else if( obj.for_free_delivery > 0 && obj.for_free_delivery < obj.summ_for_free_delivery ) { 
			$("#cart_trust-1 .free_delivery").html( "Чтобы получить бесплатную доставку в постамат или курьером, необходимо сделать заказ на сумму не менее <b>"+obj.for_free_delivery+" "+obj.suffix+"."+"</b> (данная акция не распространяется на протеиновые батончики)" );
		} else if( obj.for_free_delivery == 0 ) { 
			$("#cart_trust-1 .free_delivery").html( "Вы можете воспользоваться бесплатной доставкой в постамат или бесплатной доставкой курьером." );
			DeliveryPrice( obj ); //корректируем стоимость доставки
			return;
		}
		DeliveryPrice( obj ); //корректируем стоимость доставки
	}
	function funcB_cart_trust_1(){
	}
	function funcS_cart_trust_1(data,d){
		//$(".result").html(data);
		var obj = JSON && JSON.parse(data) || $.parseJSON(data);
		$("#cart_trust-1 .cart_list").each(function(n,element){
			$("#cart_trust-1 .summa_"+n+" b").html(obj[n].summa);
		});
		$(".cart_summa b").html(obj.cart_summa);
		//формируем сообщение о условиях бесплатной доставки
		if( obj.auth_user )
			ConditionsForFreeDelivery( obj );
	}
	$("#cart_trust-1 input[type='number']").bind("change", function( elements ){
		var cart = {};
		cart.func = "update_cart";
		$("#cart_trust-1 table input[type='number']").each(function(n,element){
			cart[$(element).attr("name")] = $(element).val();
		});
		$.ajax({
			url: "/function.php",
			data:( cart ),
			dataType: "html",
			beforSend: funcB_cart_trust_1(),
			success: funcS_cart_trust_1
		});
	});
	//-----------------------------------------------------------------------------------
	/*===  функция вывода подсказки при наведении на картинку  ===*/
	$(".rub").bind("mouseover",function(event){
		showMessage('Чтобы увидеть цену, введите Ваш логин и пароль,<br/>чтобы получить логин и пароль зарегистрируйтесь<br/>или отправьте заявку',event);	
	});
	$(".rub").bind("mouseout",function(event){
		$("#interactive_message").hide();	
	});
	/*=== функция открывающая окно "Политика безопасности" ===*/
	$("#register a, .win-security-policy").bind("click",function(event){
		$("#security-policy").animate({opacity: 'show'}, 100);	
	});
	
	/*=== функция закрывающая окно формы обратного звонка, окна Политика безопасности ===*/
	$(".close_button").bind("click",function(event){
		$("#call_back").hide(100);	
		$(".success").hide(100);
        $("#security-policy").hide(100); 
	});
	
	/*=== передача данных в форме обратного звонка через Ajax ===*/
	function funcB(){
	}
	function funcS(data,d){
		data = JSON.parse(data);
		if(data["send"] == true){
			$(".success div:not(.clear)").html(data["text"]);
			$(".success").show(100);
			$("#call_back").hide();
			$("#call_back div.message").text("");
		}
		else{
			$("#call_back div.message").text(data["text"]);
			$(".success div:not(.clear)").html("");
		}
	}

	$("#call_back form").bind("submit", function(){
		$.ajax({
			url: "../function.php",
			data:( { func: $("#call_back input[type='hidden']").val() ,
				    call_back: $("#call_back input[type='submit']").val(),
					name: $("#call_back input[name='name']").val(),
					phone: $("#call_back input[type='tel']").val(),
					captcha: $("#call_back input[name='captcha']").val()
					} ),
			dataType: "html",
			beforSend: funcB(),
			success: funcS
		});
		return false;
	});
	/*-------------------------------------------------------------*/
	/*  функция плавного увеличения фото на странице "РЕЗУЛЬТАТЫ"  */
	$("#results img").bind("click",function(event){
		$(".zoom").remove();
		var copy = $(event.target).clone();
					
		// зоздаем контейнер для размещения фото и информации	
		$("<div class='zoom'><img class='close' src='images/but_close.png'/><div class='clear'></div></div>").appendTo("#results");
		//$(".zoom").css("display", "none");
		$(".zoom").css("opacity", "0" );	 
		$(".zoom").css("position", "fixed");
		$(".zoom").css("top", "10%" );
		$(".zoom").css("border", "2px solid #dadbdb" );
		$(".zoom").css("border-radius", "5px" );
		$(".zoom").css("background-color", "#fff" );
		$(".zoom").css("padding","0px");
		$(".zoom img").css("float", "right");
		$(".zoom img").css("width", "20px");
		$(".zoom img").css("border-radius", "3px");
		$(".zoom img").css("cursor", "pointer" );
		$(".zoom img").mouseover( function(){ $(".zoom img.close").attr("src", "images/but_close_active.png") });
		$(".zoom img").mouseout( function(){ $(".zoom img.close").attr("src", "images/but_close.png") });
		$(document).on("click",".zoom img.close",function(){
			$(".zoom").remove();
		});
		// задаем css для фотографии
		$(copy).css("width", "300px");
		$(copy).css("margin", "10px");
		// вычисляем отступ слева, для размещения фото по центру
		var left_gap = ($("html").width() - $(copy).width())/2;
		// задаем отступ слева для контейнера
		$(".zoom").css("left",left_gap.toString()+"px");
		// вставляем фото в контейнер
		$(copy).appendTo(".zoom");
		// вставляем комментарии в контейнер
		$("<p class='name'>"+$(copy).attr("data-name")+"</p>").appendTo(".zoom");
		$("<p class='desc'>"+$(copy).attr("data-desc")+"</p>").appendTo(".zoom");
		// делаем css для комментариев
		$(".zoom p.name").css("text-align","center");
		$(".zoom p.name").css("margin-bottom","5px");
		$(".zoom p.desc").css("width",$(copy).css("width"));
		$(".zoom p.desc").css("text-align","center");
		$(".zoom p.desc").css("margin-bottom","5px");
		 //делаем анимацию
		//$(".zoom").fadeIn(500);
		$(".zoom").animate(
			{
				opacity: 1
			},
			500);
		
	});
	//-----------------------------------------------------------------------------
	/* Оформление кнопки "Оформить заказ" */
	$("#order_step1 img").bind("mouseover", function handlerMouseOver(){
		$("#order_step1 img").attr( "src","images/cart_order_active.png" );
	});
	$("#order_step1 img").bind("mouseout", function handlerMouseOut(){
		$("#order_step1 img").attr( "src","images/cart_order.png" );
	});
	//------------------------------------------------------------
	/* Проверка наличия товара в корзине */
	$("#order_step1").bind( "click", function CartGoodsCount(){
		var element_goods_count = $("input[name='goods_count']");
		if( element_goods_count.get(0).value == "" ){
			$("#order_step1").after("<div class='q_win_info'><img src='images/but_close.png'/><p class='q_text'>В Вашей корзине нет товаров. Добавьте в корзину нужные Вам продукты из раздела.</p><a href='/'>КАТАЛОГ ПРОДУКЦИИ</a></div>");
			$(".q_win_info").css("position", "fixed" );	 
			$(".q_win_info").css("top", "40%" );
			$(".q_win_info").css("left", "30%" );
			$(".q_win_info").css("height", "150px" );
			$(".q_win_info").css("width", "400px" );
			$(".q_win_info").css("border", "2px solid #7CC045" );
			$(".q_win_info").css("border-radius", "5px" );
			$(".q_win_info").css("background-color", "#eeeeee" );
			$(".q_win_info img").css("float", "right");
			$(".q_win_info img").css("width", "20px");
			$(".q_win_info img").css("border-radius", "3px");
			$(".q_win_info img").css("cursor", "pointer" );
			$(".q_win_info img").mouseover( function(){ $(".q_win_info img").attr("src", "images/but_close_active.png") });
			$(".q_win_info img").mouseout( function(){ $(".q_win_info img").attr("src", "images/but_close.png") });
			$(".q_text").css("font-size", "140%" );
			$(".q_text").css("padding", "20px 15px" );
			$(".q_win_info a").css("background-color", "#7CC045" );
			$(".q_win_info a").mouseout(function(){ $(".q_win_info a").css("background-color", "#7CC045" ) });
			$(".q_win_info a").mouseover( function(){$(".q_win_info a").css("background-color", "#ffb11f" )	});
			$(".q_win_info a").css("color", "#ffffff" );
			$(".q_win_info a").css("text-decoration", "none" );
			$(".q_win_info a").css("padding", "6px 20px 6px 20px" );
			$(".q_win_info a").css("border-radius", "5px" );
			$(".q_cancel").css("cursor", "pointer" );
			$(document).on("click",".q_win_info img",function(){
				$(".q_win_info").remove();
			});
		}
		else{
			idDiscountCart();
		}
		
	});
	
	/*=== смена изображения в каптче ===*/
	
	$(".captcha img:first-child").bind("click", function(event) {
		var captcha = $(".captcha img:last-child");
		var src = $(captcha).attr("src");
		if ((ind = src.indexOf("?")) == -1) src += "?" + Math.random();
		else src = src.substring(0, ind) + "?" + Math.random();
		$(captcha).attr("src", src);
		//window.location.href = src;
	});
	
	//------------------------------------------------------------
	/* меню выбора способа оплаты на странице ADDORDER и SECCESSPAY */
	var disp = new Dispatcher();
	var pay_menu = document.querySelector("#lightmenu");
	if( pay_menu !== null ){ //вешаем обработчик, только если данный элемент существует
	//событие при клике на иконке верхнего меню платежных систем
		pay_menu.addEventListener("click", function(event){ 
			var data = [];
			if( event.target.localName !== 'img' ) return;
			var class_Name = event.target.parentNode.className; //получили class платежной системы
					
			var td_off = document.querySelector("#lightmenu td.active"); //получили элемент который нужно погасить	
			
			var td_on = event.target.parentNode.parentNode; //получили элемент который нужно включить
					
			data = [td_off, td_on, class_Name]; 
			//data[0] - ячейка меню, которую нужно погасить
			//data[1] - ячейка меню, которую нужно включить
			//data[2] - имя класса ячейки на которой произошло событие(event)
			disp.trigger("switch_pay_menu", data); //триггер на переключение платежного меню
			disp.trigger("switch_attention", data);
		});
	}
	/* переключение кнопки в платежном меню */
	disp.on("switch_pay_menu", function( el_array ){ 
		el_array[0].classList.remove("active");
		el_array[1].classList.add("active");
	});
	
	/* Вывод соответствующей платежной системы */
	disp.on("switch_pay_menu", function(el_array){ 
		var radio_ac = document.querySelector("#visamastercard .form-pay-table input[id='ac']");
		var radio_pc = document.querySelector("#visamastercard .form-pay-table input[id='pc']");
		var label_ac = document.querySelector("[for='ac']");
		var label_pc = document.querySelector("[for='pc']");
		
		if( el_array[2] == "visamastercard" ){
			document.querySelector(".attention").style.display = "flex";
			document.querySelector("#sberbank").style.display = "none";
			document.querySelector("#visamastercard").style.display = "flex";
			$(radio_pc).removeAttr("checked");
			radio_pc.classList.remove("checked");
			$(radio_ac).attr("checked", "checked");
			label_pc.classList.remove("checked");
			label_ac.classList.add("checked");
			radio_ac.classList.add("checked");
		}else if( el_array[2] == "yandexmoney" ){
			document.querySelector(".attention").style.display = "flex";
			document.querySelector("#sberbank").style.display = "none";
			document.querySelector("#visamastercard").style.display = "flex";
			$(radio_ac).removeAttr("checked");
			radio_ac.classList.remove("checked");
			$(radio_pc).attr("checked", "checked");
			label_ac.classList.remove("checked");
			label_pc.classList.add("checked");
			radio_pc.classList.add("checked");
		}else if( el_array[2] == "sberbank" ){
			document.querySelector("#visamastercard").style.display = "none";
			document.querySelector("#sberbank").style.display = "block";
			document.querySelector(".attention").style.display = "none";
		}
	});
	
	/* Событие при клике на переключателе visa - y.money платежной системы */
	var pay_sist_switch = document.querySelector(".pay-sist-switch");
	if( pay_sist_switch !== null ){ //вешаем обработчик, только если данный элемент существует
		pay_sist_switch.addEventListener("click", function(event){ 
			var data = []; 
			if( event.target.localName !== "input" )return;
			
			radio_off = document.querySelector(".pay-sist-switch input.checked");
			label_off = document.querySelector(".pay-sist-switch label.checked");
			td_menu_off = document.querySelector("#lightmenu td.active");
			ev_radio_value = event.toElement.attributes.value.value;
			
			data = [radio_off, label_off, event, td_menu_off, ev_radio_value];
			//data[0] - конопка input type=radio, которую нужно погасить
			//data[1] - label[for=] для соответствующего input type=radio, который нужно погасить
			//data[2] - элемент на котором произошло событие(event)
			//data[3] - ячейка меню, которую нужно погасить
			//data[4] - значение(value) поля input type=radio на котром произошло событие(value)
			disp.trigger("pay_sist_switch", data);
			disp.trigger("switch_attention", data);
		});
	}
	/* управление подсветкой кнопок верхнего платежного меню и переключателей visa - y.money */
	disp.on("pay_sist_switch", function(data){ 
		
		{data[0].classList.remove("checked"); //блок - гасим кнопку переключателя visa - y.money
		data[1].classList.remove("checked");
		$(data[0]).removeAttr("checked");}
		
		{data[2].target.classList.add("checked"); //блок зажигаем кнопку переключателя visa - y.money
		data[2].target.setAttribute("checked", "checked");
		data[2].target.nextElementSibling.classList.add("checked");}
				
		data[3].classList.remove("active"); //блок - зажигаем кнопку верхнего меню
		if( data[4] == "AC"){
			document.querySelector("#lightmenu div.visamastercard").parentNode.classList.add("active");
		}else if( data[4] == "PC" ){
			document.querySelector("#lightmenu div.yandexmoney").parentNode.classList.add("active");
		}
	});
	
	/* Управление контентом блока attention */
	disp.on("switch_attention", function(data){ 
		var type_sw = data[data.length-1]; 
		var limit = document.querySelector(".attention-data").attributes["data-limit"].value;
		var total = document.querySelector(".attention-data").attributes["data-total"].value;
			
		if( type_sw == "visamastercard" || type_sw == "AC" ){
			document.querySelector(".attention").style.display = "flex";
			document.querySelector(".attention .attention-text p:nth-child(1)").classList.remove("hide");
			document.querySelector(".attention .attention-text p:nth-child(1)").classList.add("show");
			if( +total <= +limit ){
				document.querySelector(".attention .attention-text p:nth-child(2)").classList.remove("show");
				document.querySelector(".attention .attention-text p:nth-child(2)").classList.add("hide");
			}else{
				document.querySelector(".attention .attention-text p:nth-child(2)").classList.remove("hide");
				document.querySelector(".attention .attention-text p:nth-child(2)").classList.add("show");
			}
		}else if( type_sw == "yandexmoney" || type_sw == "PC" ){
			if( +total <= +limit ){
				document.querySelector(".attention").style.display = "none";
			}else{
				document.querySelector(".attention .attention-text p:nth-child(1)").classList.remove("show");
				document.querySelector(".attention .attention-text p:nth-child(1)").classList.add("hide");
				document.querySelector(".attention .attention-text p:nth-child(2)").classList.remove("hide");
				document.querySelector(".attention .attention-text p:nth-child(2)").classList.add("show");
			}
		}
	});
	/* обработка события при изменении суммы оплаты */
	var input_sum = document.querySelector(".form-pay-wrap input[name='sum']");
	if( input_sum !== null ){
		input_sum.addEventListener("change", function(event){
			var input_sec_url = document.querySelector(".form-pay-wrap input[name='successURL']");
			var send_url_val = input_sec_url.value; 
			send_url_val = send_url_val.replace(/&send_sum=\d+/g,"");
			send_url_val += "&send_sum="+input_sum.value;
			input_sec_url.setAttribute('value', send_url_val);
		});
	}
	/*------------------------------------------------------------------------*/
	/*  Формируем ссылку */
	function formingLinks(id){
		var el_form = $(id+" form");
		var el_inputs = $(id+" input");
		var link = el_form.get(0).action;
		for( var i=0; i<el_inputs.length; i++ ){
				link += "&"+el_inputs.get(i).name+"="+el_inputs.get(i).value;
		}
		return link;
	}
});

var tmp_id = 0;
var tmp_comment = null;

$(document).ready(function() {
	var w = $(window).width();
	if (w <= 768) {
		$("#left").html($("#left").html() + $("#right").html());
		$("#right").remove();
	}
	if (w <= 600) {
		var h2 = $("#course h2");
		$("#course h2").remove();
		$(h2).prependTo("#course");
	}
	if (w <= 468) {
		$("#top_sep").replaceWith("<br /><br />");
	}
	$("a[rel='external']").attr("target", "_blank");
	prettyPrint();
	
	$(document).on("click", "#comment_cancel span", function(event) {
		commentCancel();
	});
	
	$(document).on("click", "#add_comment", function(event) {
		commentCancel();
		showFormComment();
	});
	
	$(document).on("click", "#comments .reply_comment", function(event) {
		commentCancel();
		var parent_id = $(event.target).parents("div").get(0).id;
		$("#form_add_comment").appendTo("#" + parent_id);
		$("#form_add_comment #parent_id").val(parent_id.substr("comment_".length));
		showFormComment();
	});
	
	$(document).on("click", "#form_add_comment .button", function(event) {
		if ($("#form_add_comment textarea").val()) {
			var query;
			var comment_id = $("#comment_id").val();
			var text_comment = $("#text_comment").val();
			if (comment_id != 0) {
				query = "func=edit&obj=comment&name=text_" + comment_id + "&value=" + encodeURIComponent(text_comment);
				ajax(query, error, successEditComment);
			}
			else {
				var parent_id = $("#parent_id").val();
				var article_id = $("#article_id").val();
				query = "func=add_comment&parent_id=" + parent_id + "&article_id=" + article_id + "&text=" + encodeURIComponent(text_comment);
				ajax(query, error, successAddComment);
			}
		}
		else alert("Вы не ввели текст комментария!");
	});
	
	$(document).on("click", "#comments .edit_comment", function(event) {
		commentCancel();
		var parent_id = $(event.target).parents("div").get(0).id;
		tmp_comment = $("#" + parent_id).clone();
		$("#form_add_comment #comment_id").val(parent_id.substr("comment_".length));
		var temp = $("#" + parent_id + " .text").html();
		temp = temp.replace(/&lt;/g, "<");
		temp = temp.replace(/&gt;/g, ">");
		temp = temp.replace(/&amp;/g, "&");
		$("#form_add_comment #text_comment").val(temp);
		$($("#" + parent_id)).replaceWith($("#form_add_comment"));
		showFormComment();
	});
	
	$(document).on("click", "#comments .delete_comment", function(event) {
		commentCancel();
		if (confirm("Вы уверены, что хотите удалить комментарий?")) {
			var comment_id = $(event.target).parents("div").get(0).id.substring("comment_".length);
			tmp_id = comment_id;
			var query = "func=delete&obj=comment&id=" + comment_id;
			ajax(query, error, successDeleteComment);
		}
	});
	
});

function error() {
	alert("Произошла ошибка! Попробуйте операцию позже.");
}

function successAddComment(data) {
	data = data["r"];
	data = JSON.parse(data);
	var comment = getTemplateComment(data.id, data.user_id, data.name, data.avatar, data.text, data.date);
	if (data.parent_id != 0) {
		$("#form_add_comment").appendTo("#comments");
		$("#comment_" + data.parent_id).append(comment);
	}
	else $("#form_add_comment").before(comment);
	
	closeFormComment();
}

function successEditComment(data) {
	if (data["r"]) $(tmp_comment).find(".text").html(data["r"]);
	if (data) {
		var form = $("#form_add_comment").clone();
		$("#form_add_comment").replaceWith($(tmp_comment));
		tmp_comment = null;
		$(form).appendTo("#comments");
	}
	else error();
	closeFormComment();
}

function successDeleteComment(data) {
	if (data["r"]) {
		$("#comment_" + tmp_id).fadeOut(500, function() {
			$("#comment_" + tmp_id).remove();
			$("#count_comments").text($(".comment").length);
			tmp_id = 0;
		});
	}
	else error();
}

function getTemplateComment(id, user_id, name, avatar, text, date) {
	var str = "<div class='comment' id='comment_" + id + "'>";
	str += "<img src='" + avatar + "' alt='" + name + "' />";
	str += "<span class='name'>" + name + "</span>";
	str += "<span class='date'>" + date + "</span>";
	str += "<p class='text'>" + text + "</p>";
	str += "<div class='clear'></div>";
	str += "<p class='functions'><span class='reply_comment'>Ответить</span> <span class='edit_comment'>Редактировать</span> <span class='delete_comment'>Удалить</span>"; 
	str += "</div>";
	return str;
}

function showFormComment() {
	$("#form_add_comment").css("display", "inline-block");
	$("#form_add_comment textarea").focus();
}

function commentCancel() {
	if (tmp_comment) {
		successEditComment(true);
	}
	closeFormComment();
}

function closeFormComment() {
	$("#form_add_comment #parent_id").val(0);
	$("#form_add_comment #text_comment").val("");
	$("#form_add_comment #comment_id").val(0);
	$("#form_add_comment").css("display", "none");
	$("#count_comments").text($(".comment").length);
}


function getSocialNetwork(f, t, u) {
	if (!t) t=document.title;
	if (!u) u=location.href;
	t = encodeURIComponent(t);
	u = encodeURIComponent(u);
	var s = new Array(
		'http://www.facebook.com/sharer.php?u='+u+'&t='+t+'" title="Поделиться в Facebook"',
		'http://vkontakte.ru/share.php?url='+u+'" title="Поделиться В Контакте"',
		'http://www.odnoklassniki.ru/dk?st.cmd=addShare&st._surl='+u+'&title='+t+'" title="Добавить в Одноклассники"',
		'http://twitter.com/share?text='+t+'&url='+u+'" title="Добавить в Twitter"',
		'http://connect.mail.ru/share?url='+u+'&title='+t+'" title="Поделиться в Моем Мире@Mail.Ru"',
		'http://www.google.com/buzz/post?message='+t+'&url='+u+'" title="Добавить в Google Buzz"',
		'http://www.livejournal.com/update.bml?event='+u+'&subject='+t+'" title="Опубликовать в LiveJournal"',
		'http://www.friendfeed.com/share?title='+t+' - '+u+'" title="Добавить в FriendFeed"'
	);
	for(i = 0; i < s.length; i++)
		document.write('<a rel="nofollow" style="display:inline-block;width:32px;height:32px;margin:0 7px 0 0;background:url('+f+'icons.png) -'+32*i+'px 0" href="'+s[i]+'" target="_blank"></a>');
}

function ajax(data, func_error, func_success) {
	$.ajax({
		url: "/api.php",
		type: "POST",
		data: (data),
		dataType: "text",
		error: func_error,
		success: function(result) {
			result = $.parseJSON(result);
			func_success(result);
		}
	});
}