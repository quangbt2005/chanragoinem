<?php
require 'init.php';
// $smarty = new SmartyEx;
$cat_id = empty($_GET['cat_id']) ? Load_Fist_Category() : $_GET['cat_id'];
if(!empty($cat_id)){
  $query = 'SELECT * FROM categories WHERE id=' . $cat_id;
  $select_cat_obj = MySQLSELECT($query);
  $smarty->assign('select_cat_obj', $select_cat_obj[0]);
}

require_once 'categories.php';

$smarty->assign('categories_tree', $categories_tree);

$smarty->display('index2.tpl');
?>
