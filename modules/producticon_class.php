<?php

class ProductIcon extends ModuleHornav{

	private $tpl_file;
	public function __construct( $name_tpl_file = "producticon" ){
		parent::__construct();
		$this->tpl_file = $name_tpl_file;
		$this->add("products",null,array());
		$this->add("link_desc");
		$this->add("add_cart", URL::get("function.php", null, array("func"=>"add_cart") ) );
		$this->add("link_likes", URL::get("function.php", null, array("func"=>"likes") ) );
		$this->add("auth_user");
	}
	
		
	public function getTmplFile(){
		return $this->tpl_file;
	}
}
?>