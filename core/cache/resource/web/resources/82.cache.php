<?php  return array (
  'resourceClass' => 'modDocument',
  'resource' => 
  array (
    'id' => 82,
    'type' => 'document',
    'contentType' => 'text/html',
    'pagetitle' => 'eventsAjax',
    'longtitle' => '',
    'description' => '',
    'alias' => 'events-ajax',
    'link_attributes' => '',
    'published' => 1,
    'pub_date' => 0,
    'unpub_date' => 0,
    'parent' => 0,
    'isfolder' => 0,
    'introtext' => '',
    'content' => '',
    'richtext' => 1,
    'template' => 5,
    'menuindex' => 4,
    'searchable' => 1,
    'cacheable' => 1,
    'createdby' => 1,
    'createdon' => 1525768924,
    'editedby' => 1,
    'editedon' => 1525769015,
    'deleted' => 0,
    'deletedon' => 0,
    'deletedby' => 0,
    'publishedon' => 1525768920,
    'publishedby' => 1,
    'menutitle' => '',
    'donthit' => 0,
    'privateweb' => 0,
    'privatemgr' => 0,
    'content_dispo' => 0,
    'hidemenu' => 1,
    'class_key' => 'modDocument',
    'context_key' => 'web',
    'content_type' => 1,
    'uri' => 'events-ajax',
    'uri_override' => 0,
    'hide_children_in_tree' => 0,
    'show_in_tree' => 1,
    'properties' => NULL,
    '_content' => '[[!eventsAjax]]',
    '_isForward' => false,
  ),
  'contentType' => 
  array (
    'id' => 1,
    'name' => 'HTML',
    'description' => 'HTML content',
    'mime_type' => 'text/html',
    'file_extensions' => '',
    'headers' => NULL,
    'binary' => 0,
  ),
  'policyCache' => 
  array (
  ),
  'sourceCache' => 
  array (
    'modChunk' => 
    array (
    ),
    'modSnippet' => 
    array (
      'eventsAjax' => 
      array (
        'fields' => 
        array (
          'id' => 27,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'eventsAjax',
          'description' => '',
          'editor_type' => 0,
          'category' => 7,
          'cache_type' => 0,
          'snippet' => 'require_once(\'/assets/custom/snippets/modxInit.php\');
require_once(\'/assets/custom/snippets/ticketCreator.php\');
//var_dump($GLOBALS[\'modx\']);
$output = \'\';
if(isset($_REQUEST[\'action\'])) {

	switch ($_REQUEST[\'action\']) {

		case \'fetch-filtered-events\':
			$output = \'[[$filteredEventsAjax]]\';
			break;

		case \'fetch-events-by-title\':
			$title = $_REQUEST[\'title\'];
			
			$filters = [\'pagetitle:LIKE\'=>\'%\'.$title.\'%\'];
			$where = $GLOBALS[\'modx\']->toJSON($filters);

			$config =
				[
	                \'parents\' => \'2\',
	                \'element\' =>\'getTickets\',
	                \'tpl\' => \'eventsListItem\',
	                \'tplWrapper\' => \'eventsListOuter\',
	                \'includeContent\' => \'1\',
	                \'includeTVs\' => \'img,date,event_type,age_limit\',
	                \'processTVs\' => \'1\',
	                \'where\' => $where
		        ];
	        $output = $modx->runSnippet(\'pdoPage\', $config);
			break;

		case \'fetch-enents-titles\':
			
			$where = [\'parent\' => \'2\'];
			$resources = $GLOBALS[\'modx\']->getCollection(\'modResource\', $where);
			//var_dump($resources);
			$outputArray = [];
			foreach ($resources as $doc) {
			    $outputArray[$doc->get(\'pagetitle\')] = null;
			}
			//$output = json_encode($outputArray, JSON_UNESCAPED_UNICODE);
			$output = json_encode($outputArray);
			break;
		
		default:
			# code...
			break;
	}
}
return $output;',
          'locked' => false,
          'properties' => 
          array (
          ),
          'moduleguid' => '',
          'static' => true,
          'static_file' => 'assets/custom/snippets/eventsAjax.php',
          'content' => 'require_once(\'/assets/custom/snippets/modxInit.php\');
require_once(\'/assets/custom/snippets/ticketCreator.php\');
//var_dump($GLOBALS[\'modx\']);
$output = \'\';
if(isset($_REQUEST[\'action\'])) {

	switch ($_REQUEST[\'action\']) {

		case \'fetch-filtered-events\':
			$output = \'[[$filteredEventsAjax]]\';
			break;

		case \'fetch-events-by-title\':
			$title = $_REQUEST[\'title\'];
			
			$filters = [\'pagetitle:LIKE\'=>\'%\'.$title.\'%\'];
			$where = $GLOBALS[\'modx\']->toJSON($filters);

			$config =
				[
	                \'parents\' => \'2\',
	                \'element\' =>\'getTickets\',
	                \'tpl\' => \'eventsListItem\',
	                \'tplWrapper\' => \'eventsListOuter\',
	                \'includeContent\' => \'1\',
	                \'includeTVs\' => \'img,date,event_type,age_limit\',
	                \'processTVs\' => \'1\',
	                \'where\' => $where
		        ];
	        $output = $modx->runSnippet(\'pdoPage\', $config);
			break;

		case \'fetch-enents-titles\':
			
			$where = [\'parent\' => \'2\'];
			$resources = $GLOBALS[\'modx\']->getCollection(\'modResource\', $where);
			//var_dump($resources);
			$outputArray = [];
			foreach ($resources as $doc) {
			    $outputArray[$doc->get(\'pagetitle\')] = null;
			}
			//$output = json_encode($outputArray, JSON_UNESCAPED_UNICODE);
			$output = json_encode($outputArray);
			break;
		
		default:
			# code...
			break;
	}
}
return $output;',
        ),
        'policies' => 
        array (
        ),
        'source' => 
        array (
          'id' => 1,
          'name' => 'Filesystem',
          'description' => '',
          'class_key' => 'sources.modFileMediaSource',
          'properties' => 
          array (
          ),
          'is_stream' => true,
        ),
      ),
    ),
    'modTemplateVar' => 
    array (
    ),
  ),
);