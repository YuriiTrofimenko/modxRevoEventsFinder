<?php
//Transliterator func
require_once('/assets/custom/snippets/rusToAlias.php');
// Подключаем API MODX
define('MODX_API_MODE', true);
require_once  'index.php';

// Включаем сессии MODX и инициализируем контекст web
require_once 'config.core.php';
require_once MODX_CORE_PATH.'model/modx/modx.class.php';
$modx = new modX();
$modx->initialize('web');

// Включаем обработку ошибок
$modx->getService('error','error.modError');
$modx->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$modx->setLogLevel(modX::LOG_LEVEL_FATAL);
$modx->setLogTarget(XPDO_CLI_MODE ? 'ECHO' : 'HTML');

// Логинимся в админку
$response = $modx->runProcessor('security/login', array('username' => 'admin', 'password' => 'adminuser'));
if ($response->isError()) {
    $modx->log(modX::LOG_LEVEL_ERROR, $response->getMessage());
    return;
}

function checkTicket($_parentId, $_newTicket){
	
	$present = false;
	$where = [
	    'parent' => $_parentId
	    , 'pagetitle' => $_newTicket['pagetitle']
	    ];
	$resources = $GLOBALS['modx']->getCollection('modResource', $where);
	//$output = '<p>Всего ресурсов: '.count($resources).'</p>';
	foreach ($resources as $k => $res) {
	  //$output .= '<p>['.$k.'] => '.$res->get('pagetitle').'</p>';
	  $present = ($res->get('pagetitle') == $_newTicket['pagetitle']) ? true : $present;
	}
	//print $output;
	return $present;
}

function createTicket($_parentId, $_newTicket){

	$ticket = $GLOBALS['modx']->newObject('modResource');
	$ticket->set('parent', $_parentId);
	$ticket->set('template', '3');
	$ticket->set('pagetitle', $_newTicket['pagetitle']);
	$ticket->set('content', $_newTicket['content']);
	$ticket->set('alias', rus2translit($_newTicket['pagetitle']));
	$ticket->set('uri_override', '1');
	$ticket->set('hidemenu', '1');
	$ticket->set('class_key', 'Ticket');
	$ticket->save();

 	try {
      	$ticket->setTVValue('date', $_newTicket['date']);

      	$url = $_newTicket['img'];
		$dir = dirname(dirname( dirname(__FILE__) ) ).DIRECTORY_SEPARATOR."uploads"; // Full Path
		//echo $dir . '<br>';

		$name = rus2translit($_newTicket['pagetitle']).'.jpg';

		is_dir($dir) || @mkdir($dir) || die("Can't Create folder");
		copy($url, $dir . DIRECTORY_SEPARATOR . $name);

		//echo $dir . DIRECTORY_SEPARATOR . $name . '<br>';

      	$ticket->setTVValue('img', "assets/uploads/".$name);
      	$ticket->setTVValue('event_type', $_newTicket['type']);
   	}
    catch (PDOException $e) {
      echo 'error occurred! ' . $e->getMessage() . '<br>';
      $modx->log(xPDO::LOG_LEVEL_ERROR, 'Произошла ошибка при сохранении ТВ: '.$e->getMessage());
    }
	
	//echo $ticket->getTVValue('date').'<br>'.$_newTicket['date'].'<br>';
	//echo $ticket->getTVValue('img').'<br>'.$_newTicket['img'].'<br>';
	//echo $ticket->get('alias').'<br>';
    //echo "Test<br>";
	//echo $_newTicket['pagetitle']." ".$_newTicket['type']."<br>";
}