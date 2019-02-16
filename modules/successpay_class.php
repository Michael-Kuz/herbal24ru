<?php
class SuccessPay extends ModuleHornav {

	public function __construct($auth_user){
		parent::__construct();
		$this->cart = $this->getCart($auth_user);
		$this->add("title");
		$this->add("hornav");
		$this->add("auth_user");
		$this->add("message");
		$this->add("id");
		$this->add("number");
		$this->add("cart_list",$this->cart);
		$this->add("delivery");
		$this->add("delivery_cost");
		$this->add("product_ids");
		$this->add("name");
		$this->add("phone");
		$this->add("email");
		$this->add("address");
		$this->add("note");
		$this->add("in_total");
		$this->add("date_order");
		$this->add("date_send");
		$this->add("date_pay");
		$this->add("cart_summa",count($this->cart)<3 ? 0 : $this->cart["cart_summa"] );
	}
	
	public function getTmplFile() {
		return "successpay";
	}
}
?>