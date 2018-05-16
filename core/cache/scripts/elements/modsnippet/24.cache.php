<?php  return '
$filter = array();

if(isset($_REQUEST[\'type\'])){

  if($_REQUEST[\'type\'] !== \'\' && $_REQUEST[\'type\'] !== \'all\'){
    
    //$filter[] = \'event_type==\'.$_REQUEST[\'type\'].\'%\';
    $filter[] = \'event_type==\'.$_REQUEST[\'type\'];
  }
}

$date = date(\'Y-m-d\')." 00:00:00"; //по-умолчанию, ищем актуальные относительно текущай даты

if(isset($_REQUEST[\'date\'])){

  if($_REQUEST[\'date\'] !== \'\'){

    //format
    //конвертируем формат даты, если он не Y-m-d а, например, d/m/Y
    $date = DateTime::createFromFormat(\'d-m-Y\', $_REQUEST[\'date\']);
    //$date = $date->format(\'Y-m-d H:i:s\');
    $date = $date->format(\'Y-m-d\')." 00:00:00";
    //$filter[] = \'date<=\'.$date; //ищем события, которые уже начались относительно заданой даты
  }
}

$filter[] = \'date==\'.$date;
return implode(\',\',$filter);
return;
';