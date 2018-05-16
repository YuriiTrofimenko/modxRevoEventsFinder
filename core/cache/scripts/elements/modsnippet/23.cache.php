<?php  return '
$style = "";
if (isset($type)) {
	switch ($type) {
		case \'cinema\':
			$style = "light-blue lighten-3";
			break;
		case \'theatre\':
			$style = "lime lighten-2";
			break;
		case \'clubs\':
			$style = "deep-purple accent-1";
			break;
		case \'shows\':
			$style = "light-green lighten-3";
			break;
		case \'business\':
			$style = "pink accent-1";
			break;
		case \'sport\':
			$style = "indigo lighten-1";
			break;
		case \'free\':
			$style = "purple accent-2";
			break;
		default:
			$style = "";
			break;
	}
}
return $style;
return;
';