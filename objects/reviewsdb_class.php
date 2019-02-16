<?php

class ReviewsDB extends ObjectDB {
	
	protected static $table = "reviews";
	
	public function __construct() {
		parent::__construct( self::$table );
		$this->add("news", "ValidateBoolean");
		$this->add("name", "Validatename");
		$this->add("avatar", "Validateimg");
		$this->add("text", "ValidateTextReview");
		$this->add("moderation", "ValidateActivation");
		$this->add("date_in", "Validatedate", self::TYPE_TIMESTAMP, $this->getDate());
	}
	
	//=========== получить только отмодерированные отзывы
	public static function getAllModerated(){
		return self::getAllOnWhere(self::$table, __CLASS__, "moderation = ".self::$db->getSQ(), array(""), $order = "rand()", $ask = true, $count = false, $offset = false);
	}
	
	//=========== устанавливаем абсолютный путь к файлам
	protected function postInit(){
		if( !is_null($this->avatar) ) $this->avatar = Config::DIR_AVATAR.$this->avatar;
		if( !is_null($this->certificate) ){
			$this->certificate = Config::DIR_IMG_CERTIFICATE.$this->certificate;
			if( !file_exists($this->certificate) )
				$this->certificate = basename($this->certificate);
		}
		/* проверка: являетсяли сомментарий новым  */
		if( $this->news ){
			if( is_null($this->date_in) ) { // если дата ввода в базу равна NULL, то инициализируем дату текущей датой и прописываем в базу 
				$this->date_input = time();
				$this->setDateOnID($this->date_in);
			}elseif( !is_null($this->date_in) ){ // если дата не рана NULL то ищем разницу в дняж между текущей датои и датой ввода прод. в базу
				$time_diff = time() - strtotime($this->date_in);
				$days = floor( $time_diff/86400 );
				if( $days > 183 ){ // если разница в днях составляет больше чем 183 дня, то устанавливаем влаг новинки в false и прописываем в базу
					$this->news = false;
					$this->setNewsOnID($this->news);
				}
			}
		}
		if( !is_null($this->img) && !$this->news ) $this->img = Config::DIR_IMG_FOOD.$this->img;
		elseif( !is_null($this->img) && $this->news ) $this->img = Config::DIR_IMG_FOOD_NEWS.$this->img;
		return true;
	}
	
	//============ перед проверкой имен файлов обрезаем лишнию информацию о пути к этим файлам
	protected function preValidate(){
		if( !is_null($this->img) ) $this->img = basename($this->img);
		if( !is_null($this->promo_info) ) $this->promo_info = basename($this->promo_info);
		if( !is_null($this->file_name_tpl) ) $this->file_name_tpl = basename($this->file_name_tpl);
		if( !is_null($this->certificate) ) $this->certificate = basename($this->certificate);
		return true;
	}
	
	//===== запрос данных из таблицы
	private static function getBaseSelect(){
		$select = new Select( self::$db );
		$select->from( self::$table, "*" );
		return $select;
	}
	
	private function postHandling() {
	}
	
	//=== инициализируем дату написания комментария по его ID
	private function setDateOnID( $date_input ){
		$this->setFieldsOnID( array("date_input"=>$date_input) );
	}
	
}
?>