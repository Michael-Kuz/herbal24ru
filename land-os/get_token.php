<?php
const YOUR_CLIENT_ID = "86000e42c54c4da89f054ff5b6809607";
const YOUR_CLIENT_SECRET = "6fa1b500799b4b1ba922c37773da0022";
// Идентификатор приложения
$client_id = YOUR_CLIENT_ID; 
// Пароль приложения
$client_secret = YOUR_CLIENT_SECRET;

// Если скрипт был вызван с указанием параметра "code" в URL,
// то выполняется запрос на получение токена
if (isset($_GET['code']))
 {
    // Формирование параметров (тела) POST-запроса с указанием кода подтверждения
    $query = array(
      'grant_type' => 'authorization_code',
      'code' => $_GET['code'],
      'client_id' => $client_id,
      'client_secret' => $client_secret
    );
	echo "<br>query<br>";
	print_r($query);
	//exit;
    $query = http_build_query($query);
	echo "<br>".$query;

    // Формирование заголовков POST-запроса
    $header = "Content-type: application/x-www-form-urlencoded";

    // Выполнение POST-запроса и вывод результата
    $opts = array('http' =>
      array(
      'method'  => 'POST',
      'header'  => $header,
      'content' => $query
      ) 
    );
    $context = stream_context_create($opts);
	echo "<br>".$context;
    $result = file_get_contents('https://oauth.yandex.ru/token?', false, $context);
	echo "<br>result= ".$result;
	
    $result = json_decode($result);

	// Токен необходимо сохранить для использования в запросах к API Директа
    echo "<br>access_token= ".$result->access_token;
}else 
{
  echo '<a href="https://oauth.yandex.ru/authorize?response_type=code&client_id='.$client_id.'">Страница запроса доступа</a>';
}
?>