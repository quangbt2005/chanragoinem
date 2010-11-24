<?php
require_once '../init.php';

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

  $_SESSION['flash']['add_category_ok'] = '1';
  header('Location: /quanly/category_add.php');
  exit;
}

// $smarty = new SmartyEx;
if(isset($_SESSION['flash']['add_category_ok'])){
	$smarty->assign('add_category_ok', '1');
  unset($_SESSION['flash']['add_category_ok']);
}
$smarty->assign("cat_list",$cat_list);
$smarty->display('admin/category_add.tpl');
?>
