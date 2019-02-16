<?php

class FooterMenu extends Module {
	
	public function __construct() {
		parent::__construct($auth_user=null,$discount=null);
		$this->add("uri");
		$this->add("items", null, true);
		$this->add("link_search");
	}
	
	public function getTmplFile() {
		return "footer";
	}
	
}

?>