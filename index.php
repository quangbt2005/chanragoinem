<?php
require_once 'init.php';

$product_list = List_All_Product(0,100);
// pd($Product_List);
// $smarty = new SmartyEx;

$smarty->assign("product_list", $product_list);
//$smarty->display('product_list3.tpl');

//$smarty = new SmartyEx;
$smarty->display('home.tpl');
?>
