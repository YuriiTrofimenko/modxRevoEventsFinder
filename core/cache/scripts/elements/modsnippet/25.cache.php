<?php  return '
$tvEventType = $modx->getObject(\'modTemplateVar\', array(\'name\'=>\'event_type\'));
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
		case 2:
			$text = "ТЕАТР";
			break;
		case 3:
			$text = "КЛУБЫ И КОНЦЕРТЫ";
			break;
		case 4:
			$text = "ВЫСТАВКИ";
			break;
		case 5:
			$text = "БИЗНЕС";
			break;
		case 6:
			$text = "СПОРТ";
			break;
		case 7:
			$text = "FREE";
			break;
		default:
			# code...
			break;
	}

	$checked = ($key == 0) ? "checked" : "";

	echo "<p class=\'generated\'>
	    <label>
	      <input id=\'{$eventType}\' name=\'group1\' type=\'radio\' {$checked} />
	      <span>{$text}</span>
	    </label>
  	</p>";
}
return;
';