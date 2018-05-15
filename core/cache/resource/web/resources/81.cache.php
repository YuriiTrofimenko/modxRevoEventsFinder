<?php  return array (
  'resourceClass' => 'modDocument',
  'resource' => 
  array (
    'id' => 81,
    'type' => 'document',
    'contentType' => 'text/html',
    'pagetitle' => 'api',
    'longtitle' => '',
    'description' => '',
    'alias' => 'api',
    'link_attributes' => '',
    'published' => 1,
    'pub_date' => 0,
    'unpub_date' => 0,
    'parent' => 0,
    'isfolder' => 0,
    'introtext' => '',
    'content' => '[[--!cardStyle? &type=`shows`]]
[[--!eventsFilter]]
[[!tvViewer]]',
    'richtext' => 1,
    'template' => 0,
    'menuindex' => 3,
    'searchable' => 1,
    'cacheable' => 1,
    'createdby' => 1,
    'createdon' => 1525680391,
    'editedby' => 1,
    'editedon' => 1526283197,
    'deleted' => 0,
    'deletedon' => 0,
    'deletedby' => 0,
    'publishedon' => 1525680360,
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
    'uri' => 'api',
    'uri_override' => 0,
    'hide_children_in_tree' => 0,
    'show_in_tree' => 1,
    'properties' => NULL,
    '_content' => '

[[!tvViewer]]',
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
      'tvViewer' => 
      array (
        'fields' => 
        array (
          'id' => 25,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'tvViewer',
          'description' => '',
          'editor_type' => 0,
          'category' => 7,
          'cache_type' => 0,
          'snippet' => '$tvEventType = $modx->getObject(\'modTemplateVar\', array(\'name\'=>\'event_type\'));
$tvEventTypeArray = $tvEventType->toArray();
$elementsString = $tvEventTypeArray["elements"];
$elementsArray = explode("||", $elementsString);
array_pop($elementsArray);
array_unshift($elementsArray, "all");
/*echo "<pre>";
var_dump($elementsArray);
echo "</pre>";*/
foreach ($elementsArray as $key => $eventType) {
	
	echo "<p>
	    <label>
	      <input id="$eventType" name="group1" type="radio" checked />
	      <span>ВСЕ</span>
	    </label>
  	</p>";
}',
          'locked' => false,
          'properties' => 
          array (
          ),
          'moduleguid' => '',
          'static' => true,
          'static_file' => 'assets/custom/snippets/tvViewer.php',
          'content' => '$tvEventType = $modx->getObject(\'modTemplateVar\', array(\'name\'=>\'event_type\'));
$tvEventTypeArray = $tvEventType->toArray();
$elementsString = $tvEventTypeArray["elements"];
$elementsArray = explode("||", $elementsString);
array_pop($elementsArray);
array_unshift($elementsArray, "all");
/*echo "<pre>";
var_dump($elementsArray);
echo "</pre>";*/
foreach ($elementsArray as $key => $eventType) {
	
	echo "<p>
	    <label>
	      <input id="$eventType" name="group1" type="radio" checked />
	      <span>ВСЕ</span>
	    </label>
  	</p>";
}',
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