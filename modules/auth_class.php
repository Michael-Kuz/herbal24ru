<?php

class Auth extends Module {
	
	private $file_tpl;
	public function __construct( $file_name = "auth" ) {
		parent::__construct($auth_user=null,$discount=null);
		$this->file_tpl = $file_name;
		$this->add("action");
		$this->add("message");
		$this->add("link_register");
		$this->add("link_reset");
		$this->add("link_remind");
	}
	
	public function getTmplFile() {
		return $this->file_tpl;
	}
	
}

?>