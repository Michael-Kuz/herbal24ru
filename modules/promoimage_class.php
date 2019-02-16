<?php

class PromoImage extends Module{
	
	public function __construct(){
		parent::__construct($auth_user=null,$discount=null);
		$this->add("img");
		$this->add('slide_checked');
	}
	public function getTmplFile(){
		return "promo_image";
	}
}
?>