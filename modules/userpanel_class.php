<?php

class UserPanel extends Module {
	
	public function __construct() {
		parent::__construct($auth_user=null,$discount=null);
		$this->add("logout");
		$this->add("name");
	}
	
	public function addItem($title, $link) {
		$cl = new stdClass();
		$cl->title = $title;
		$cl->link = $link;
		$this->items = $cl;
	}
	
	public function getTmplFile() {
		return "user_panel";
	}
	
}

?>