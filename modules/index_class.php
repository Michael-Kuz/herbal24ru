<?php

class Index extends ModuleHornav{

	public function __construct(){
		parent::__construct();
		$this->add("title");
		$this->add("promo_info");
		$this->add("product_icon");
		$this->add("auth_user");
	}
	
	public function getTmplFile(){
		return "index";
	}
}
?>