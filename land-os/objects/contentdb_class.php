<?php

class ContentDB extends ObjectDB{

	protected static $table = "content";
	
	public function __construct(){
		parent::__construct(self::$table);
		$this->add( "section_id", "ValidateID" );
		$this->add( "title", "ValidateTitle" );
		$this->add( "intro", "ValidateSmallText" );
		$this->add( "icon", "ValidateIMG" );
	}

	/*=== устанавливаем абсолютные пути если надо ===*/
	protected function postInit(){
		if( !is_null($this->icon) ) 
			$this->icon = Config::DIR_IMG.$this->icon;
	}
	/*=== получаем нужную секцию лендинга ===*/
	public function getSectionLanding( $section_id ){
		return ContentDB::getAllOnField( self::$table, __CLASS__, "section_id", $section_id );
	}
	
	
}
?>