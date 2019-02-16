<?php

class SearchProduct extends ModuleHornav {
	private $file_tpl;
	public function __construct($name_tpl_file="search_product") {
		parent::__construct();
		$this->file_tpl = $name_tpl_file;
		$this->add("title");
		$this->add("auth_user");
		$this->add("query");
		$this->add("field");
		$this->add("error_len", false);
		$this->add("link_desc");
		$this->add("add_cart",URL::get("function.php", null, array("func"=>"add_cart") ) );
		$this->add("link_likes");
		$this->add("data",NULL,array() );
	}
		
	public function getTmplFile() {
		return  $this->file_tpl;
	}
}
?>