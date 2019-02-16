<?php

class Hornav extends Module {
	
	public function __construct() {
		parent::__construct($auth_user=null,$discount=null);
		$this->add("data", null, true);
	}
	
	public function addData($title, $link = false) {
		$cl = new stdClass();
		$cl->title = $title;
		$cl->link = $link;
		$this->data = $cl;
	}
	
	public function getTmplFile() {
		return "hornav";
	}
	
}

?>