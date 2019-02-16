<?php

class PromoInfo extends Module {

	public function __construct() {
		parent::__construct($auth_user=null,$discount=null);
		$this->add("promo_info");
	}
	
	public function getTmplFile(){
		return "promo_info";
	}
}
?>