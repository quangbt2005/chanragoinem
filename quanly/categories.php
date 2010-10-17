<?php
require '../init.php';
// $cat_id = $_GET['cat_id'];
$query = "SELECT * FROM categories WHERE deleted='0'";
$cat_list = MySQLSELECT($query);

$smarty = new SmartyEx;

// $smarty->compile_check = true;
// $smarty->debugging = true;

$smarty->assign("cat_list",$cat_list);
$smarty->display('admin/categories.tpl');
?>
