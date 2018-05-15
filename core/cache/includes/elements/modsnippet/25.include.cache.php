<?php

$tvEventType = $modx->getObject('modTemplateVar', array('name'=>'event_type'));
$tvEventTypeArray = $tvEventType->toArray();
$elementsString = $tvEventTypeArray["elements"];
$elementsArray = explode("||", $elementsString);
array_pop($elementsArray);
array_unshift($elementsArray, "all");
/*echo "<pre>";
var_dump($elementsArray);
echo "</pre>";*/
foreach ($elementsArray as $key => $eventType) {
	
	$text = "";
	switch ($key) {
		case 0:
			$text = "ВСЕ";
			break;
		case 1:
			$text = "КИНО";
			break;
		default:
			# code...
			break;
	}

	$checked = ($key == 0) ? "checked" : "";

	echo "<p>
	    <label>
	      <input id='{$eventType}' name='group1' type='radio' {$checked} />
	      <span>{$text}</span>
	    </label>
  	</p>";
}
return;
