<?php
class IconContact extends Module {

	public function __construct($auth_user,$discount){
		parent::__construct($auth_user,$discount);
		$this->add("icon_phone");
		$this->add("title");
		$this->add("phone_number");
	}
	
	public function getTmplFile() {
		return "icon_contact";
	}
}
?>