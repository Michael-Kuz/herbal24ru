<?php

class InDeveloping extends ModuleHornav {
	
	public function __construct() {
		parent::__construct();
		$this->add("title");
		$this->add("hornav");
		$this->add("link");
	}
	
	public function getTmplFile() {
		return "indeveloping";
	}
	
}

?>