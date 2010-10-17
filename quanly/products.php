<?php
require '../init.php';
$cat_id = $_GET['cat_id'];
$query = "SELECT * FROM products WHERE deleted='0' AND product_category=" . $cat_id;
$product_list = MySQLSELECT($query);

$smarty = new SmartyEx;

// $smarty->compile_check = true;
// $smarty->debugging = true;

$smarty->assign("product_list", $product_list);
$smarty->display('admin/products.tpl');
?>
