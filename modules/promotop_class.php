<?php

class PromoTop extends Module {

	public function __construct() {
		parent::__construct($auth_user=null,$discount=null);
		$this->add("promo_top");
	}
	
	public function getTmplFile(){
		return "promo_top";
	}
}
?>