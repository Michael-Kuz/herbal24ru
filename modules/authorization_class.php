<?php
class Authorization extends ModuleHornav {
	
	private $file_tpl;
	public function __construct( $file_name="authorization"){
		parent::__construct();
		$this->file_tpl = $file_name;
		$this->add("title");
		$this->add("hornav");
		$this->add("form_auth");
	}
	
	public function getTmplFile() {
		return $this->file_tpl;
	}
}