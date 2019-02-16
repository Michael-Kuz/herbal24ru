<?php

class Reset extends ModuleHornav {

	public function __construct(){
		parent::__construct();
		$this->add("header");
		$this->add("hornav");
		$this->add("form");
	}
	
	public function getTmplFile(){
		return "reset";
	}
}
?>