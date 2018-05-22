<?php
require_once('/assets/custom/snippets/modxInit.php');
require_once('/assets/custom/snippets/ticketCreator.php');
//var_dump($GLOBALS['modx']);
$output = '';
if(isset($_REQUEST['action'])) {

	switch ($_REQUEST['action']) {

		case 'fetch-filtered-events':
			$output = '[[$filteredEventsAjax]]';
			break;

		case 'fetch-events-by-title':
			$title = $_REQUEST['title'];
			
			$filters = ['pagetitle:LIKE'=>'%'.$title.'%'];
			$where = $GLOBALS['modx']->toJSON($filters);

			$config =
				[
	                'parents' => '2',
	                'element' =>'getTickets',
	                'tpl' => 'eventsListItem',
	                'tplWrapper' => 'eventsListOuter',
	                'includeContent' => '1',
	                'includeTVs' => 'img,date,event_type,age_limit',
	                'processTVs' => '1',
	                'where' => $where
		        ];
	        $output = $modx->runSnippet('pdoPage', $config);
			break;

		case 'fetch-enents-titles':
			
			$where = ['parent' => '2'];
			$resources = $GLOBALS['modx']->getCollection('modResource', $where);
			//var_dump($resources);
			$outputArray = [];
			foreach ($resources as $doc) {
			    $outputArray[$doc->get('pagetitle')] = null;
			}
			//$output = json_encode($outputArray, JSON_UNESCAPED_UNICODE);
			$output = json_encode($outputArray);
			break;
		
		default:
			# code...
			break;
	}
}
return $output;