<?php
require_once 'init.php';

$product_list = List_Product_By_Category($cat_id,0,100);
if(count($product_list)%2 != 0) $product_list = array_pad($product_list, count($product_list)+1,array('product_id'=>''));
$rows = array_chunk($product_list, 2);
// pd($Product_List);
// $smarty = new SmartyEx;

$smarty->assign("rows", $rows);
$smarty->assign("product_count", count($product_list));
$product_list = $smarty->fetch('product_list.tpl');

?>
