<?php

class ReviewsMenu extends Module {
	
	private $tplfile;
	
	public function __construct( $tpl_file_name = "reviewsmenu") {
		parent::__construct($auth_user=null,$discount=null);
		$this->tplfile = $tpl_file_name;
		$this->add("title");
		$this->add("link_add_review");
		$this->add("items", null, true);
	}
	
	public function getTmplFile() {
		return $this->tplfile;
	}
	
}

?>