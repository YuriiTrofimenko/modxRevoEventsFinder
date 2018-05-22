<?php
require_once('/assets/custom/snippets/phpQuery-onefile.php');
require_once('/assets/custom/snippets/ticketCreator.php');

$base_url = "http://afisha.gidmariupol.com";
$day7 = "/index/index/day/7";

$data = file_get_contents($base_url.$day7);
//$data = file_get_contents($base_url);

//Обрабатываем переменную с помощью phpQuery:

$date = date('Y-m-d', strtotime("+7 days"));
//echo $date;

$document = phpQuery::newDocument($data); //Загружаем полученную страницу в phpQuery
$hentry = $document->find('div#graph-content > div');

$newTicket = [
	'pagetitle' => null
	, 'content' => null
	, 'date' => $date
	, 'img' => null
	, 'type' => null
	, 'age_limit' => null
];

$i = 0;
foreach ($hentry as $el) {

	if ($i == 6) {
		break;
	}

	$elem_pq = pq($el); //pq - аналог $ в jQuery
	$url = $elem_pq->find('table.type td a')->attr('href');
	if (!empty($url)) {
		
		//echo $url;
		$typeClass = $elem_pq->attr('class');

		switch ($typeClass) {
			case 'b-card c-cinema':
				$newTicket['type'] = 'cinema';
				break;
			case 'b-card c-theatre':
				$newTicket['type'] = 'theatre';
				break;
			case 'b-card c-clubs':
				$newTicket['type'] = 'clubs';
				break;
			case 'b-card c-shows':
				$newTicket['type'] = 'shows';
				break;
			case 'b-card c-business':
				$newTicket['type'] = 'business';
				break;
			case 'b-card c-sport':
				$newTicket['type'] = 'sport';
				break;
			case 'b-card c-free':
				$newTicket['type'] = 'free';
				break;
			default:
				$newTicket['type'] = 'unknown';
				break;
		}

		$event = file_get_contents($url);
		$eventDocument = phpQuery::newDocument($event);

		//Parse event's title
		$eventHeader = $eventDocument->find('div.b-card-full__header h1')->text();
		$newTicket['pagetitle'] = $eventHeader;

		//Parse event's age limit
		$eventAgeLimit = $eventDocument->find('div.b-card-full__age_limit')->text();
		$newTicket['age_limit'] = $eventAgeLimit;

		//String tabTitleElementString = documentEventDetails.select("a.m-session").text();
		$eventIsFilm = $eventDocument->find('a.m-session')->text();
		//echo $eventIsFilm;
		//echo "<br>";
		// элементы для детализации кино
		if ($eventIsFilm) {

			//echo "test";
			$info = $eventDocument->find('table.right > tr');
			//echo $info;
			foreach ($info as $infoItem) {
				
				$infoItem = pq($infoItem);
				//echo $infoItem->find('td.label')->text();
				//echo "<br>";
				//echo $infoItem->find('td.data')->text();
				//echo "<br>";
			}

			//Get content
			//String fullContentString = documentEventDetails.select("div.content").text();
			$fullContentString = $eventDocument->find('div.content')->text();
			$newTicket['content'] = $fullContentString;
			//echo $fullContentString;
			//echo "<br>";

			//Picture
			$img = $eventDocument->find('div.session > div.image > img')->attr('src');
			$newTicket['img'] = $img;
			//echo $img;
			//echo "<br>";
			//
		} else {
			// элементы для детализации не-кино
			$newTicket['content'] = $eventDocument->find('div.image.body > p')->text();
			$newTicket['img'] = $eventDocument->find('div.image.body > img')->attr('src');
		}
		//TODO constants
		if (!checkTicket('2', $newTicket)) {
			
			createTicket('2', $newTicket);
		}
		$i++;
	}
  //echo "<br>";
	
 	
}