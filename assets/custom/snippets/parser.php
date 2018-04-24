<?php
/*define('MODX_API_MODE', true);
include_once '../../../manager/includes/config.inc.php';
include_once '../../../manager/includes/document.parser.class.inc.php';
$modx = new DocumentParser();
$modx->db->connect();
$modx->getSettings();
startCMSSession();
$modx->minParserPasses = 2;*/

require_once('/assets/custom/snippets/phpQuery-onefile.php');
//echo "hello!";
//return "world!";
/*if (isset($date)) {

	return "date is: $date";
} else {

	return "date is: default date";
}*/
$base_url = "http://afisha.gidmariupol.com";
$day7 = "/index/index/day/7";

$data = file_get_contents($base_url.$day7);
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

$document = phpQuery::newDocument($page); //Загружаем полученную страницу в phpQuery
$hentry = $document->find('.div#graph-content > div'); //Находим элементы
//var_dump($hentry);
foreach ($hentry as $el) {
 $elem_pq = pq($el); //pq - аналог $ в jQuery
 var_dump($elem_pq);
 echo "<br>";
 //$url = $elem_pq->attr('href');
 //$text = trim($elem_pq->text());
 //...
}