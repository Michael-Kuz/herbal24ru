<?php

class Form extends ModuleHornav {
	
	private $file_tpl;
	public function __construct( $file="form" ) {
		parent::__construct();
		$this->file_tpl = $file;
		$this->add("name");
		$this->add("action");
		$this->add("method", "post");
		$this->add("header");
		$this->add("message");
		$this->add("check", true);
		$this->add("enctype");
		$this->add("inputs", null, true);
		$this->add("jsv", null, true);
	}
	
	public function addJSV($field, $jsv) {
		$this->addObj("jsv", $field, $jsv);
	}
	
	//=== добавление нужных переменных в DIV блок, который находится в теле формы
	public function addDIV( $names = array() ){
		foreach( $names as $name )
			$this->add($name);
	}
	
	public function text($name, $label = "", $label_pos = "<td>", $value = "", $default_v = "", $colspan=false, $type="text") {
		$this->input($name, $type, $label, $label_pos, $value, $default_v,$cols = false, $rows = false, $multiple = false, $size = false, $options = array(), $colspan );
	}
	
	public function password($name, $label = "", $label_pos = "<td>", $default_v = "", $type="password") {
		$this->input($name, $type, $label, $label_pos, "", $default_v);
	}
	
	public function captcha($name, $label, $label_pos = "<td>", $value = "", $default_v = "", $type="captcha" ) {
		$this->input($name, $type, $label, $label_pos, $value, $default_v );
	}
	
	public function file($name, $label, $label_pos = "<td>", $colspan, $type="file" ) {
		$this->input($name, $type, $label, $label_pos, $value="", $default_v="",$cols = false, $rows = false, $multiple = false, $size = false, $options = array(), $colspan );
	}
	
	public function hidden($name, $value, $type="hidden") {
		$this->input($name, $type, "", $label_pos = "<td>", $value);
	}
	
	public function div($name, $colspan = false, $type = "div" ){
		$this->input( $name, $type, $label = false, $label_pos = "<td>", $value = false, $default_v = false, $cols = "", $rows = "", $multiple = false, $size = "1", $options = array(), $colspan );
	}
	
	public function textarea($name, $label="", $label_pos = "<td>", $value = "", $default_v = "", $cols = "", $rows = "", $colspan=false, $type="textarea") {
		$this->input($name, $type, $label, $label_pos, $value, $default_v, $cols, $rows, $multiple = false, $size = "1", $options = array(), $colspan );
	}
	
	public function submit($value, $label_pos = "<td>", $name = false, $colspan = false, $type="submit") {
		$this->input($name, $type, "", $label_pos, $value, $default_v = false, $cols = "", $rows = "", $multiple = false, $size = "1", $options = array(), $colspan );
	}
	
	public function select($name = false, $label = false, $label_pos = "<td>", $value = "", $options = array(), $type="select" ) {
		$this->input($name, $type, $label, $label_pos, $value, $default_v = false, $cols = "", $rows = "", $multiple = false, $size = false, $options );
	}
	
	private function input($name, $type, $label = false, $label_pos = "<td>", $value = false, $default_v = false, $cols = "", $rows = "", $multiple = false, $size = "1", $options = array(), $colspan = false ) {
		$cl = new stdClass();
		$cl->name = $name;
		$cl->type = $type;
		$cl->label = $label;
		$cl->label_pos = $label_pos;
		$cl->value = $value;
		$cl->default_v = $default_v;
		$cl->cols = $cols;
		$cl->rows = $rows;
		$cl->multiple = $multiple;
		$cl->size = $size;
		$cl->options = $options;
		$cl->colspan = $colspan;
		$this->inputs = $cl;
	}
	
	public function getTmplFile() {
		return $this->file_tpl;
	}
	
	//====== вывод единицы измерения с нужным суффиксом
	public function numberOfSuffix($number){
		return $this->numberOf( $number,array("рубль","рубля","рублей") );
	}
}

?>