<?php
require_once 'init.php';

$cat_id = empty($_GET['cat_id']) ? Load_Fist_Category() : $_GET['cat_id'];

require_once 'categories.php';
require_once 'products.php';

$smarty = new SmartyEx;

$smarty->assign('categories_tree', $categories_tree);
$smarty->assign('product_list', $product_list);

$smarty->display('index.tpl');
?>
