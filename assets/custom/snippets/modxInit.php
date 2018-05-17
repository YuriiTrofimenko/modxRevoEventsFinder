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
$modx->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$modx->setLogLevel(modX::LOG_LEVEL_FATAL);
$modx->setLogTarget(XPDO_CLI_MODE ? 'ECHO' : 'HTML');

// Логинимся в админку
$response = $modx->runProcessor('security/login', array('username' => 'admin', 'password' => 'adminuser'));
if ($response->isError()) {
    $modx->log(modX::LOG_LEVEL_ERROR, $response->getMessage());
    return;
}