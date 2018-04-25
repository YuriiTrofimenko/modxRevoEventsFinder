<?php
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
$modx->setLogLevel(modX::LOG_LEVEL_FATAL);
$modx->setLogTarget(XPDO_CLI_MODE ? 'ECHO' : 'HTML');

// Логинимся в админку
$response = $modx->runProcessor('security/login', array('username' => 'admin', 'password' => 'adminuser'));
if ($response->isError()) {
    $modx->log(modX::LOG_LEVEL_ERROR, $response->getMessage());
    return;
}

function checkTicket($_parentId, $_pageTitle){
	
	$present = false;
	$where = [
	    'parent' => $_parentId
	    , 'pagetitle' => $_pageTitle
	    ];
	$resources = $GLOBALS['modx']->getCollection('modResource', $where);
	//$output = '<p>Всего ресурсов: '.count($resources).'</p>';
	foreach ($resources as $k => $res) {
	  //$output .= '<p>['.$k.'] => '.$res->get('pagetitle').'</p>';
	  $present = ($res->get('pagetitle') == $_pageTitle) ? true : $present;
	}
	//print $output;
	return $present;
}

function createTicket($_parentId, $_pageTitle){

	$ticket = $GLOBALS['modx']->newObject('modResource');
	$ticket->set('parent', $_parentId);
	$ticket->set('pagetitle', $_pageTitle);
	$ticket->set('class_key', 'Ticket');
	$ticket->save();
}