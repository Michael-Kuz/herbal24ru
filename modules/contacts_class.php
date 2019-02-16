<?php

class Contacts extends ModuleHornav {

	public function __construct(){
		parent::__construct();
		$this->add("header");
		$this->add("adm_address", Config::ADM_ADDRESS);
		$this->add("adm_foto", Config::ADM_FOTO);
		$this->add("adm_phone", Config::ADM_PHONE);
		$this->add("phone_olya", Config::PHONE_OLYA);
		$this->add("adm_name", Config::ADM_NAME);
		$this->add("adm_email", Config::ADM_EMAIL);
		$this->add("adm_vk", Config::ADM_VK);
		$this->add("adm_skype", Config::ADM_SKYPE);
		$this->add("target_vk", Config::TARGET_VK);
		$this->add("adm_facebook", Config::ADM_FACEBOOK);
		$this->add("targer_facebook", Config::TARGET_FACEBOOK);
		$this->add("contact_form");
	}
	
	public function getTmplFile(){
		return "contacts";
	}
}
?>