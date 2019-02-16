<?php

class UserReviewsController extends Controller {

	public function actionReviews() {
		$message_name = "review";
		
		if( isset($_FILES["review_avatar"]) )
			$avatar = $_FILES["review_avatar"]["name"] ? Config::DIR_AVATAR.$_FILES["review_avatar"]["name"] : Config::DIR_AVATAR.Config::DEFAULT_AVATAR;
		else $avatar =  Config::DIR_AVATAR.Config::DEFAULT_AVATAR;
		if ($this->request->review) {
			if( $_FILES["review_avatar"]["name"] )
				$img = $this->fp->uploadIMG($message_name, $_FILES["review_avatar"], Config::MAX_SIZE_AVATAR, Config::DIR_AVATAR);
			else $img =  Config::DEFAULT_AVATAR;
			if ($img) {
				$captcha = $this->request->review_captcha;
				$checks = array(); // открываем массив checks и заводим туда все необходимые проверки к форме "review"
				$checks[] = array(Captcha::check($captcha), true, "ERROR_CAPTCHA_CONTENT");
				$fields = array(array("news", true),
								array("avatar", $img), 
								array("name",$this->request->review_name), 
								array("text",$this->request->review_text),
								array("moderation",uniqid()) );
				$review = new ReviewsDB();
				$review = $this->fp->process($message_name, $review, $fields, $checks);
				if ($review instanceof ReviewsDB) {
					$this->mail->setFrom(Config::REVIEW_EMAIL);
					$this->mail->setFromName(Config::SITENAME);//устанавливаем имя сайта
					// отправляем сообщение на мэйл Config::REVIEW_EMAIL с оповещением, что пришел новый отзыв
					$this->mail->send(Config::REVIEW_EMAIL, array("review" => $review), "new_review");
					$this->redirect( URL::get("moderation","userreviews")  );
				}else{
					if( $img != Config::DEFAULT_AVATAR )
						File::delete(Config::DIR_AVATAR.$img);
				}
			}
		}
				
		$this->title = "Просмотр и добавление отзывов покупателей.";
		$this->meta_desc = "Просмотр и добавление отзывов покупателей.";
		$this->meta_key = "просмотр отзывов, добавление отзыва, добавление отзывов покупателей, отзывы покупателей";
		
		/* отзывы покупателей */
		$items = ReviewsDB::getAllModerated();
		$reviews = new ReviewsMenu("reviews");
		$reviews->title = "ОТЗЫВЫ ПОКУПАТЕЛЕЙ";
		$reviews->link_add_review = URL::get("reviews", "userreviews" );
		$reviews->items = $items;
						
		$form_avatar = new Form("form_original");
		$form_avatar->name = "review";
		$form_avatar->action = URL::current();
		$form_avatar->enctype = "multipart/form-data";
		$form_avatar->message = $this->fp->getSessionMessage($message_name);
		$form_avatar->file("review_avatar", "", "<td>", $colspan = 2, $type="file_original");
		$form_avatar->text("review_name", $label = "Ваше имя", $label_pos = "<td>", $value = $this->request->review_name, $default_v = "Ваше имя", $colspan = false, $type="text_original");
		$form_avatar->textarea("review_text", $label = "Текст отзыва", $label_pos = "<td>", $value = $this->request->review_text, $default_v = "Текст отзыва", $cols="30", $rows = "5", $colspan = false, $type="textarea_original");
		$form_avatar->captcha("review_captcha", "", "", "","Введите код с картинки:", $type="captcha_original");
		$form_avatar->submit("Отправить отзыв", $label_pos = false, $name = false, $colspan = 2, $type="submit_original");
		
		$form_avatar->addJSV("review_avatar", $this->jsv->avatar());
		$form_avatar->addJSV("review_name", $this->jsv->name());
		$form_avatar->addJSV("review_text", $this->jsv->textreview() );
		$form_avatar->addJSV("review_captcha", $this->jsv->captcha());
				
		$hornav = $this->getHornav();
		$hornav->addData("Просмотр и добавление отзывов покупателей.");
		
		$this->render($this->renderData(array("title" => $this->title, "hornav" => $hornav, "reviews"=>$reviews, "form_avatar" => $form_avatar), "view_add_review", array("avatar" => $avatar, "max_size" => (Config::MAX_SIZE_AVATAR / KB_B))));
	}
	
	public function actionModeration(){
		$this->title = "Сообщение отправлено на модерацию";
		$this->meta_desc = "Сообщение отправлено на модерацию";
		$this->meta_key = "сообщение отправлено, модерация";
		
		$pm = new PageMessage();
		$pm->header = "Ваш отзыв отправлен.";
		$pm->text = "Спасибо за Ваш отзыв. Через некоторое время он появится на сайте.";
		$this->render($pm);
	}
	
	protected function access() {
		if ($this->auth_user) return true;
		return true;
	}
	
}

?>