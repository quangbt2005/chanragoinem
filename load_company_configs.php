<?php
$query = "SELECT * FROM configurations WHERE deleted='0'";
$values = MySQLSELECT($query);
// pd($values);
foreach($values as $value){
  if(isset($smarty)){
	 $smarty->assign($value['name'], $value['value']);
  }
}
?>
