<?php

class Payment extends ModuleHornav{

	public function __construct(){
		parent::__construct();
		$this->add("payment_card", Config::RSB_MASTERCARD);
		$this->add("pay_forms");
	}
	
	public function getTmplFile(){
		return "payment";
	}
}
?>