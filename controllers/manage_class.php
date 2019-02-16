<?php
class Manage extends Controller {

	public function __construct(){
		parent::__construct();
		
	}
	
	public function switchDisplayContent($name){
		$this->DisplayContent($name);
	}
		
	public function addCart($id = false, $section_id = false) {
		if(!$id) $id = $this->request->id;
		if(!$section_id) $section_id = $this->request->section_id;
		$product_db = $this->getProductClass($section_id);
		$product_db->load($id);
		if( !$product_db->isSaved() ) $this->notFound();
		if ( !session_id() ) session_start();
		//== проверяем является ли обьект комплексной программой
		if( $product_db instanceof ComplexProgDB ){
			$add = "";
			$this->getAllComplex($product_db->product_ids);
			$this->NumberCansCorrection($product_db->id);
			for( $i=0; $i<count($this->all_products); $i++ )
				foreach( $this->all_products[$i] as $product )
					if( $product->num )
						for( $j=0; $j<$product->num; $j++ ){
							$section_id = $product->section_id;
							$id = $product->id;
							if( $add == "" ) $add = "$section_id->$id";
							else $add .= ","."$section_id->$id"; 
						}
		}else $add = "$section_id->$id";
		//== заносим данные корзины в сессию
		if ( isset($_SESSION["cart"]) ) $_SESSION["cart"] .= ",".$add;
		else $_SESSION["cart"] = $add;
	}
	
	public function deleteCart($id = false, $section_id = false){
		if(!$id) $id = $this->request->id;
		if(!$section_id) $section_id = $this->request->section_id;
		$product_del = "$section_id->$id"; 
		$ids = explode( ",",$_SESSION["cart"] );
		unset($_SESSION["cart"]);
		for( $i=0; $i<count($ids); $i++ ){
			if( $ids[$i] != $product_del ){
				$tmp = explode( "->",$ids[$i] );
				$this->addCart( $tmp[1],$tmp[0] );
			}	
		}
	}
	public function updateCart(){
		unset($_SESSION["cart"]);
		$discount_id = "";
		foreach( $_REQUEST as $k=>$v ){
			if( strpos($k,"->") === false) continue;
			$tmp = explode("->",$k);
			$section_id = $tmp[0];
			$id = $tmp[1];
			for( $i=0; $i<$v; $i++ )
				$this->addCart( $id,$section_id );
		}
		// формируем массив данных для отправки по ajax
		$this->summForFreeDelivery(); //сразу после корректировки $_SESSION["cart"] расчитываем $_SESSION["ForFreeDelivery"] 
		$cart = new CartPage($this->auth_user);     //формируем массив с передаваемыми данными по запросу ajax
		$tmp = array();
		$tmp = $cart->cart_list;
		$tmp["auth_user"] = $this->auth_user ? true : false;
		$tmp["for_free_delivery"] = $_SESSION["ForFreeDelivery"];
		$tmp["summ_for_free_delivery"] = Config::SUMM_FOR_FREE_DELIVERY;
		$tmp["suffix"] = $cart->numberOfSuffix($_SESSION["ForFreeDelivery"]);
		$tmp["courier_price"] = $this->getDeliveryCost("courier");
		$tmp["postamat_price"] = $this->getDeliveryCost("postamat");
		$tmp["mail_price"] = $this->getDeliveryCost("mail");;
		$json = json_encode($tmp);
		//отправляем данные по корзине по запросу ajax
		echo $json;
		exit;
		if( $this->request->discount_id ){
			$discount_id = $_REQUEST["discount_id"];
			$user = $this->fp->authOnDiscountID( "authOnDiscountID", "UserDB", "authOnDiscountID", $discount_id );
		}
	}
	//===== обрабатываем лайки
	public function updateLikes(){
		$section_db = new SectionDB();
		$section_db->load( $this->request->section_id );
		if( !$section_db->isSaved() ) $this->notFound();
		$product_db = $this->getProductClass( $section_db->id );
		$product_db->load( $this->request->id );
		if( !$product_db->isSaved() ) $this->notFound();
		$string=array();
		$section_id = $product_db->section_id;
		$id = $this->request->id;
		$like = $section_id."->".$id;
		if( !session_id() ) session_start();
		if( !isset($_SESSION["likes"]) ) $_SESSION["likes"] = false;
		if ($_SESSION["likes"]) {
			$string = explode( ",",$_SESSION["likes"] );
			for( $i=0; $i<count($string); $i++ ){
				if( $string[$i] == $like )
					return false;
			}	
			$_SESSION["likes"].=",".$like;
		}
		else $_SESSION["likes"] = $like;
		$product_db->likes++;
		$product_db->setLikesOnID( $product_db->likes );
	}
	
	//===== сохраняем изменения в наборе продуктов комплексной программы или количество программ на месяц
	public function save_composition( $section_id = false, $id = false, $num_months = false ){
		if(!$id) $id = $this->request->id;
		if(!$section_id) $section_id = $this->request->section_id;
		if(!$num_months)
			if($this->request->num_months)
				$num_months = $_SESSION["num_months"."$id"] = $this->request->num_months;
			else $num_months = 1;
		$product_db = $this->getProductClass($section_id);
		$product_db->load($id);
		if( !$product_db->isSaved() ) $this->notFound();
		if ( !session_id() ) session_start();
		//== проверяем является ли обьект комплексной программой
		if( $product_db instanceof ComplexProgDB ){
			$this->getAllComplex($product_db->product_ids);
			for( $i=0; $i<count($this->all_products); $i++ ){
				foreach( $this->all_products[$i] as $product_cat ){
					$product_cat->short_name = str_replace(" ", "_", $product_cat->short_name);
					if( $this->request->save_cmpos) //Запрос на изменение набора продуктов в программе
						if( array_key_exists( $product_cat->short_name.$product_db->id, $_REQUEST ) ){
							$_SESSION[$product_cat->short_name.$product_db->id] = $this->request->{$product_cat->short_name.$product_db->id} * $num_months;
						}
					if($this->request->num_months){	// Запрос на изменение количества месячных программ
						if( $product_cat->num ){
							$_SESSION[$product_cat->short_name.$product_db->id] = $product_cat->num * $num_months;
						}
						else unset( $_SESSION[$product_cat->short_name.$product_db->id] );
					}
					$product_cat->short_name = str_replace("_", " ", $product_cat->short_name);
				}
			}
		}
	}	
	/*=== Функция обработки данных полученных из формы запроса обратного звонка ===*/
	public function call_back(){
		$message_name = "call_back"; 
		//сначало надо проверить КАПТЧУ(captchar)
		if( $this->request->call_back ){
			if( Captcha::check($this->request->captcha) ){
				$this->mail->setFromName( $this->request->name );
				if( $this->mail->send( Config::INQUIRY_EMAIL, array("name"=>$this->request->name, "phone"=>$this->request->phone, "date_send"=>date("d.m.Y G:i:s" ) ), "call_back" ) ){
					$this->fp->setSessionMessage( $message_name, "SUCCESS_MESSAGE_SEND" );
				}else{
					$this->fp->setSessionMessage( $message_name, "UNKNOWN_ERROR_SEND" );
				}
				$data = array("send"=>true, "text"=>$this->fp->getSessionMessage( $message_name ) );
			}else{ 
				$this->fp->setSessionMessage( $message_name, "ERROR_CAPTCHA_CONTENT" );	
				$data = array("send"=>false, "text"=>$this->fp->getSessionMessage( $message_name ) );
			}	
			echo json_encode($data);
			exit;
		}
	}
	
	/*=== Функция обработки данных полученных из формы запроса обратного звонка ===*/
	public function windSecPolicy(){
		$dir_name = Config::DIR_TMPL.$this->request->func.'.tpl';
		$content = file_get_contents($dir_name);
		$data = array("text"=>$content );
		echo json_encode($data);
		exit;
	}
}
?>