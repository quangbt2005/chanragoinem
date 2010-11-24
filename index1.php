<?php
require_once 'init.php';

// $smarty = new SmartyEx;

$cat_id = empty($_GET['cat_id']) ? Load_Fist_Category() : $_GET['cat_id'];
if(!empty($cat_id)){
	$query = 'SELECT * FROM categories WHERE id=' . $cat_id;
  $select_cat_obj = MySQLSELECT($query);
  $smarty->assign('select_cat_obj', $select_cat_obj[0]);
}

require_once 'categories.php';
require_once 'products.php';

$smarty->assign('categories_tree', $categories_tree);
$smarty->assign('product_list', $product_list);

$smarty->display('index.tpl');
?>
