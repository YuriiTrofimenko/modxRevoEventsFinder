<?php
require_once('/assets/custom/snippets/phpQuery-onefile.php');
require_once('/assets/custom/snippets/ticketCreator.php');
//echo "hello!";
//return "world!";
/*if (isset($date)) {

	return "date is: $date";
} else {

	return "date is: default date";
}*/
/*var_dump(checkTicket('2', 'Событие 1'));
echo "<br>";
var_dump(checkTicket('2', 'Событие 2'));
echo "<br>";
var_dump(checkTicket('2', 'Событие 3'));
echo "<br>";
echo "<br>";*/
$base_url = "http://afisha.gidmariupol.com";
$day7 = "/index/index/day/7";

//$data = file_get_contents($base_url.$day7);
$data = file_get_contents($base_url);
//var_dump($data);
//$doc = new DOMDocument();
//$doc->loadHTML($data);
//var_dump($doc);
//$searchNodes = $doc->getElementsByTagName("a");
//"div#graph-content > div"
//return $searchNodes[20]->getAttribute('href');

//$xpath = new DOMXPath($doc);
//$nlist = $xpath->query("//*[@id='graph-content']/div[1]");

//var_dump($nlist);

//var_dump($doc['div#graph-content > div']);
//Обрабатываем переменную с помощью phpQuery:

$date = date('Y-m-d', strtotime("+7 days"));
echo $date;

$document = phpQuery::newDocument($data); //Загружаем полученную страницу в phpQuery
//$hentry = $document->find('.div#graph-content > div'); //Находим элементы
$hentry = $document->find('div#graph-content > div');
//var_dump($hentry);
foreach ($hentry as $el) {

 $elem_pq = pq($el); //pq - аналог $ в jQuery
 //var_dump($elem_pq->find('img')->attr('src'));
 //echo $elem_pq->find('h1')->text();
 //echo "<br>";
 $url = $elem_pq->find('table.type td a')->attr('href');
 if (!empty($url)) {
 	
 	echo $url;
 	$event = file_get_contents($url);
 	$eventDocument = phpQuery::newDocument($event);

 	$eventHeader = $eventDocument->find('div.b-card-full__header h1')->text();
 	echo $eventHeader;
 	echo "<br>";
 	echo $eventDocument->find('div.b-card-full__age_limit')->text();
 	echo "<br>";
 	//String tabTitleElementString = documentEventDetails.select("a.m-session").text();
 	$eventIsFilm = $eventDocument->find('a.m-session')->text();
 	echo $eventIsFilm;
 	echo "<br>";
 	if ($eventIsFilm) {

 		//TODO constants
 		if (!checkTicket('2', $eventHeader)) {
 			
 			createTicket('2', $eventHeader);
 		}
 		//echo "test";
 		$info = $eventDocument->find('table.right > tr');
 		//echo $info;
 		//echo "<br>";
 		//var_dump($info->html());
 		foreach ($info as $infoItem) {
 			
 			$infoItem = pq($infoItem);
 			//echo $infoItem;
 			echo $infoItem->find('td.label')->text();
 			echo "<br>";
 			echo $infoItem->find('td.data')->text();
 			echo "<br>";
 		}

 		//Get content
 		//String fullContentString = documentEventDetails.select("div.content").text();
 		$fullContentString = $eventDocument->find('div.content')->text();
 		echo $fullContentString;
 		echo "<br>";

 		//Picture
 		$img = $eventDocument->find('div.session > div.image > img')->attr('src');
 		echo $img;
 		echo "<br>";
 		//
 	}
 	echo "<br>";
 	echo "<br>";
 	break;
 }
  //echo "<br>";

 
}