<?php
class Order extends ModuleHornav {

	public function __construct(){
		parent::__construct();
		$this->add("title");
		$this->add("auth_user");
		$this->add("discount_id");
		$this->add("order_form");
	}
	
	public function getTmplFile() {
		return "order";
	}
}
?>