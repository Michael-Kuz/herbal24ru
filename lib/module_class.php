<?php

abstract class Module extends AbstractModule {
	
	public function __construct($auth_user,$discount) {
		parent::__construct(new View(Config::DIR_TMPL),$auth_user,$discount);
	}
	
}

?>