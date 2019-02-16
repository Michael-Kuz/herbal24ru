<?php
class CartPage extends ModuleHornav {
	
	private $file_tpl;
	public function __construct($auth_user, $name_tpl_file="cart_page"){
		parent::__construct();
		$this->file_tpl = $name_tpl_file;
		$this->cart = $this->getCart($auth_user);
		$this->add("title");
		$this->add("auth_user");
		$this->add("deliveries");
		$this->add("checked");
		$this->add("city");
		$this->add("address");
		$this->add("name");
		$this->add("phone");
		$this->add("email");
		$this->add("comment");
		$this->add("ForFreeDelivery");
		$this->add("suffix");
		$this->add("discount_id");
		$this->add("message");
		$this->add("error_code");
		$this->add("cart_list",$this->cart);
		$this->add("cart_summa",count($this->cart)<3 ? 0 : $this->cart["cart_summa"] );
		$this->add("name","cart");
		$this->add("action",URL::get( "function.php",NULL,array("func"=>"update_cart") ) );
		$this->add("method","post");
		$this->add("link_name",URL::get("order") );
	}
	
	public function getTmplFile() {
		return $this->file_tpl;;
	}
	
	//====== вывод единицы измерения с нужным суффиксом
	public function numberOfSuffix($number){
		return $this->numberOf( $number,array("рубль","рубля","рублей") );
	}
}
?>