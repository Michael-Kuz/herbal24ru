<?php
require_once "start.php";

    /* функция отправляет запрос  на API Yandex и возвращает ответ от API yandex */
	function sendRequest($params, $obj, $method) {
		$request = array(
			"method" => $method,
			"params" => $params
		);
		$request = json_encode($request);
		echo $request."<br>";
		$opts = array(
			"http" => array(
				"header" => "Content-Type: application/json; charset=utf-8\r\nAuthorization: Bearer ".Config::DIRECT_TOKEN."\r\nAccept-Language: en\r\n",
				"method" => "POST",
				"content" => $request
			)
		);
		$context = stream_context_create($opts);
		$result = json_decode(file_get_contents("https://api.direct.yandex.com/json/v5/$obj", false, $context));
		return $result;
	}
	/* 1) получаем список рекламных компаний */
	$ids = [];
	$sc = new stdClass(); //для получения всех компаний нужно указать пустой sc (SelectionCriteria)
	$params = array(
		"SelectionCriteria" => $sc,
		"FieldNames" => array("Id", "Name", "StartDate", "EndDate", "Type", "Status", "State", "Funds")
	);
	$banners = sendRequest($params, "campaigns", "get");
	$banners = $banners->result->Campaigns;
	for( $i=0; $i<count($banners); $i++ ){
		$ids[$i] = $banners[$i]->Id;
		print_r($banners[$i]);
		echo "<br>".$ids[$i]; 
		echo "<br><br>";
	}
	
	/* 2) создаем по одной группе в каждой рекламной компании */
	echo "<br>создаем группу в каждой рекламной компании<br>";
	$gr_ids = [];
	for( $i=0; $i<count($banners); $i++ ){
		$params = array(
			"AdGroups" => array( array( "Name"=>"ADgroup_1", "CampaignId"=>$ids[$i], "RegionIds"=>[0] ) )
		);
		$group = sendRequest($params, "adgroups", "add");
		$group = $group->result->AddResults;
		$gr_ids[$i] = $group[0]->Id;
		echo "<br>";
		print_r($group);
		echo "<br>";
	}
	
	/* 3) создаем по одному обьявлению в каждой группе */
	echo "<br>создаем по одному обьявлению в каждой группе<br>";
	$ads_ids = [];
	$text = new stdClass();
	$text->Title = "Лендинг без предоплаты!";
	$text->Text = "Лендинг без предоплаты!";
	$text->Mobile = "NO";
	$text->Href = "http://land-os.herbal24.ru";
	$TextAdAdd = new stdClass();
	$TextAdAdd->TextAd = $text;
	for( $i=0; $i<count($gr_ids); $i++ ){
		$TextAdAdd->AdGroupId = $gr_ids[$i];
		$params = array(
			"Ads" => array( $TextAdAdd 	)
		);
		$ads = sendRequest($params, "ads", "add");
		$ads = $ads->result->AddResults;
		$ads_ids[$i] = $ads[0]->Id;
		echo "<br>";
		print_r($ads);
		echo "<br>";
	}
	
	/* 4)Устанавливаем цену клика для обьявления */
	/*echo "<br>Устанавливаем цену Bid для каждого обьявления<br>";
	$bids = [];
	for( $i=0; $i<count($ads_ids); $i++ ){
		$bid = new stdClass();
		//$bid->CampaignId = $ids[$i];
		//$bid->AdGroupId = $gr_ids[$i];
		$bid->KeywordId = $ads_ids[$i];
		$bid->Bid = ($i+1)*1000000;
		$bids[$i] = $bid;
	}
	$params = array(
		"Bids" => $bids
	);
	$set_bids = sendRequest( $params, "bids", "set");
	print_r($set_bids);
	*/	
	/* 5) Проверяем как установились цены Bid для обьявлений */
		echo "<br>Получаем Bid цены для обьявлений<br>";
	$res = new stdClass();
	$res->CampaignIds = $ids;
	//$res->AdGroupIds = $gr_ids;	
	$params = array(
		"SelectionCriteria" => $res,
		"FieldNames" => array("KeywordId", "AdGroupId", "CampaignId", "Bid", "ContextBid")
	);
	echo "<br><br>";
	print_r($params);
	echo "<br><br>";
	$get_bids = sendRequest( $params, "bids", "get");
	print_r($get_bids);
	
	
?>