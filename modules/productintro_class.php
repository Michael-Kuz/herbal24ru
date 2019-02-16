<?php

class ProductIntro extends ModuleHornav{

	private $tpl_file;
	public function __construct( $name_tpl_file="product_intro" ){
		parent::__construct();
		$this->tpl_file = $name_tpl_file;
		$this->add("product");
		$this->add("section");
		$this->add("product_icon");
		$this->add("add_cart",URL::get("function.php", null, array("func"=>"add_cart") ) );
		$this->add("auth_user");
		$this->add("tab");
		$this->add("tab_active");
		$this->add("show_img");
	}
	
		
	public function getTmplFile(){
		return $this->tpl_file;
	}
}
?>