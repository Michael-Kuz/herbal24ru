<?php

class Results extends ModuleHornav{
	
	public function __construct(){
		parent::__construct();
		$this->add("results",null,array());
	}
		
	public function getTmplFile(){
		return "results";
	}
}
?>