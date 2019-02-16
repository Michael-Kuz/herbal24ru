<?php

class Inquiry extends Module {
	
	public function __construct() {
		parent::__construct($auth_user=null,$discount=null);
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
	
	public function text($name, $label = "", $value = "", $default_v = "") {
		$this->input($name, "text", $label, $value, $default_v);
	}
	
	public function password($name, $label = "", $default_v = "") {
		$this->input($name, "password", $label, "", $default_v);
	}
	
	public function captcha($name, $label) {
		$this->input($name, "captcha", $label);
	}
	
	public function file($name, $label) {
		$this->input($name, "file", $label);
	}
	
	public function hidden($name, $value) {
		$this->input($name, "hidden", "", $value);
	}
	
	public function submit($value, $name = false) {
		$this->input($name, "submit", "", $value);
	}
	public function textarea($name, $value = "", $default_v = "") {
		$this->input($name, "textarea", $label = false, $value, $default_v);
	}
	private function input($name, $type, $label, $value = false, $default_v = false) {
		$cl = new stdClass();
		$cl->name = $name;
		$cl->type = $type;
		$cl->label = $label;
		$cl->value = $value;
		$cl->default_v = $default_v;
		$this->inputs = $cl;
	}
	
	public function getTmplFile() {
		return "inquiry";
	}
	
}

?>