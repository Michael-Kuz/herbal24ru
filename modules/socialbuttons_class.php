<?php

class SocialButtons extends Module {
	
	public function __construct() {
		parent::__construct($auth_user=null,$discount=null);
		$this->add("title");
		$this->add("description");
		$this->add("url");
		$this->add("image");
	}
	
	public function getTmplFile() {
		return "social_buttons";
	}
	
}

?>