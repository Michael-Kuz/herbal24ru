function checkForm(form) {
	var elements = $(form).find("[data-type]");
	var bad = "";
	for (var i = 0; i < elements.length; i++){
		idName = $(elements.get(i)).attr("id");
		elementTr = $(elements.get(i)).closest('.'+idName);
		if( $(elementTr).css("display") == "none" )
			continue;
		bad += checkElement(elements.get(i));
	}
	if (bad == "") {
		var t_confirm = $(form).find(["data-tconfirm"]).attr("data-tconfirm");
		if (t_confirm) return confirm(t_confirm);
		return true;
	}
	alert(bad);
	return false;
}
/* проверка файла */
function checkFile(element) {
	var bad = "";
	bad += checkElement(element);
	if (bad == "") {
		return true;
	}
	alert(bad);
	return false;
}

//========================================================

function checkElement(element) {
	var type = $(element).attr("data-type");
	var min_len = $(element).attr("data-minlen");
	var max_len = $(element).attr("data-maxlen");
	var t_min_len = $(element).attr("data-tminlen");
	var t_max_len = $(element).attr("data-tmaxlen");
	var t_empty = $(element).attr("data-tempty");
	var t_type = $(element).attr("data-ttype");
	var f_equal = $(element).attr("data-fequal");
	var t_equal = $(element).attr("data-tequal");
	var max_size = $(element).attr("data-maxsize");
	var t_max_size = $(element).attr("data-tmaxsize");
	var default_img = $(element).attr("data-defaultimg");
	var bad = "";
	if (type == "" || type == "captcha") {
		bad += checkTextInput($(element).val(), min_len, max_len, t_empty, t_min_len, t_max_len);
		bad += checkEqual($(element), f_equal, t_equal);
	}
	else if (type == "name" || type == "city") {
		bad += checkName($(element).val(), max_len, t_empty, t_type, t_max_len);
	}
	else if (type == "address") {
		bad += checkAddress($(element).val(), max_len, t_empty, t_max_len);
	}
	else if (type == "login") {
		bad += checkLogin($(element).val(), max_len, t_empty, t_type, t_max_len);
	}
	else if (type == "email") {
		bad += checkEmail($(element).val(), max_len, t_empty, t_type, t_max_len);
	}
	else if (type == "phone") {
		bad += checkPhone($(element).val(), min_len, max_len, t_empty, t_min_len, t_max_len, t_type);
	}
	else if (type == "delivery") {
		bad += checkDelivery($(element).val(), t_empty );
	}
	else if (type == "textarea") {
		bad += checkTextarea($(element).val(), max_len, t_max_len);
	}
	else if (type == "textreview") {
		bad += checkTextReview($(element).val(), max_len, t_empty, t_max_len);
	}
	else if (type == "discountID") {
		bad += checkDiscountID($(element).val(), max_len, t_type, t_max_len);
	}
	else if (type == "file") {
		bad += checkFileInput(element, max_len, t_type, t_max_len, max_size, t_max_size, default_img);
	}
	return bad;
}

function checkFileInput(element, max_len, t_type, t_max_len, max_size, t_max_size, default_img) {
	var f = document.getElementById($(element).attr("id")).files;
	var preview = document.querySelector('.avatar_img');
	//var f = document.querySelector('input[type=file]').files[0];
	var reader  = new FileReader();

	tmp = default_img.split(/(\/)/);
	
	if(f){
		var name = f[0].name; 
		var type = f[0].type;
		var size = f[0].size;
	}else{
		var name = tmp[tmp.length-1]; 
		var type = "image\/png";
		var size = 16;
	}
	
	var reg = /(\.jpg)|(\.jpeg)|(\.png)|(\.gif)/i; 
	if (max_len && name.length > max_len) {$('.avatar_img').attr("src",default_img); return t_max_len + "\n";}
	if (name.search(reg) == -1 ) {$('.avatar_img').attr("src",default_img); return t_type + "\n";}
	if (type.search(/(image\/jpeg)|(image\/jpg)|(image\/png)|(image\/gif)/) == -1 ) {$('.avatar_img').attr("src",default_img); return t_type + "\n";}
	if (size > max_size) {$('.avatar_img').attr("src",default_img); return t_max_size + "\n";}
	
	reader.onloadend = function () {
		$('.avatar_img').attr("src",reader.result);
	}
	if (f[0]) {
		reader.readAsDataURL(f[0]);
	} else {
		$('.avatar_img').attr("src",default_img);
	}
	return "";
}

function checkTextInput(value, min_len, max_len, t_empty, t_min_len, t_max_len) {
	if (value.length == 0) return t_empty + "\n";
	else {
		if (value.length < min_len) return t_min_len + "\n";
		if (max_len && value.length > max_len) return t_max_len + "\n";
	}
	return "";
}

function checkTextarea(value, max_len, t_max_len) {
	if (max_len && value.length > max_len) return t_max_len + "\n";
	return "";
}

function checkTextReview(value, max_len, t_empty, t_max_len) {
	if (value.length == 0){  return t_empty + "\n";}
	else if (max_len && value.length > max_len){ alert("max_len= "+max_len); return t_max_len + "\n";}
	return "";
}

function checkDelivery(value, t_empty) {
	if (value == 0) return t_empty + "\n";
	return "";
}


function checkAddress(address, max_len, t_empty, t_max_len) {
	if (address.length == 0) return t_empty + "\n";
	if (max_len && address.length > max_len) return t_max_len + "\n";
	return "";
}

function checkName(name, max_len, t_empty, t_type, t_max_len) {
	if (name.length == 0) return t_empty + "\n";
	if (isContainQuotes(name)) return t_type + "\n";
	if (max_len && name.length > max_len) return t_max_len + "\n";
	return "";
}

function checkDiscountID(name, max_len, t_type, t_max_len) {
	if (isContainQuotes(name)) return t_type + "\n";
	if (max_len && name.length > max_len) return t_max_len + "\n";
	return "";
}

function checkLogin(login, max_len, t_empty, t_type, t_max_len) {
	if (login.length == 0) return t_empty + "\n";
	if (isContainQuotes(login)) return t_type + "\n";
	if (max_len && login.length > max_len) return t_max_len + "\n";
	return "";
}

function checkEmail(email, max_len, t_empty, t_type, t_max_len) {
	if (email.length == 0) return t_empty + "\n";
	if (email.match(/^[a-z0-9_][a-z0-9\._-]*@([a-z0-9]+([a-z0-9-]*[a-z0-9]+)*\.)+[a-z]+$/i) == null) return t_type + "\n";
	if (max_len && email.length > max_len) return t_max_len + "\n";
	return "";
}

function checkPhone(phone, min_len, max_len, t_empty, t_min_len, t_max_len, t_type) {
	if(min_len != 0 && phone.length == 0) return t_empty + "\n";
	if(phone.length && phone.length < min_len) return t_min_len + "\n"; 
	if(max_len && phone.length > max_len)  return t_max_len + "\n";
	if(isContainQuotes(phone)) return t_type + "\n";
	if(phone.match(/^\+?([0-9]\(?\)?\-?\ ?)*$/) == null) return t_type + "\n";
	return "";
}

function isContainQuotes(string) {
	var array = new Array("\"", "'", "`", "&quot;", "&apos;");
	for (var i = 0; i < array.length; i++) {
		if (string.indexOf(array[i]) !== -1) return true;
	}
	return false;
}

function checkEqual(element, f_equal, t_equal) {
	if (f_equal == "") return "";
	var form = $(element).parents("form");
	var field = $(form).find("[name='" + f_equal + "']");
	if (element.val() != field.val()) return t_equal + "\n";
	return "";
}