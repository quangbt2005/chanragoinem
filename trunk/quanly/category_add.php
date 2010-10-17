<?php
require '../init.php';

$query = "SELECT * FROM categories WHERE deleted='0'";
$cat_list = MySQLSELECT($query);

if($_SERVER['REQUEST_METHOD'] == 'POST'){
  $cat_name = $_POST['cat_name'];
  $cat_parent = $_POST['cat_parent'];

  MySQLINSERT('categories',array(
    'category_name'   => MySQLQuote($cat_name),
    'category_parent' => MySQLQuote($cat_parent),
    'created_date'    => date('Y-m-d H:i:s'),
  ));

  header('Location: refresh.php');
  exit;
}

$smarty = new SmartyEx;

$smarty->assign("cat_list",$cat_list);
$smarty->display('admin/category_add.tpl');
?>
