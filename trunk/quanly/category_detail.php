<?php
require_once '../init.php';
$cat_id = $_GET['cat_id'];
$query = "SELECT * FROM categories WHERE deleted='0' AND id=" . MySQLQuote($cat_id);
$cat = MySQLSELECT($query);

$query = "SELECT * FROM categories WHERE deleted='0'";
$cat_list = MySQLSELECT($query);

if($_SERVER['REQUEST_METHOD'] == 'POST'){
  $cat_id       = $_POST['cat_id'];
  if($_POST['submit'] == 'Sua'){
    $cat_parent = $_POST['cat_parent'];
    $cat_name   = $_POST['cat_name'];

    MySQLUPDATE('categories',array('id' => $cat_id),array(
      'category_name'   => MySQLQuote($cat_name),
      'category_parent' => MySQLQuote($cat_parent),
      'updated_date'    => date('Y-m-d H:i:s'),
    ));
  } elseif($_POST['submit'] == 'Xoa'){
    MySQLUPDATE('categories',array('id' => $cat_id),array(
      'deleted'         => "1",
      'updated_date'    => date('Y-m-d H:i:s'),
    ));
  }

  header('Location: refresh.php?p=categories');
  exit;
}

// $smarty = new SmartyEx;

$smarty->assign("cat",$cat[0]);
$smarty->assign("cat_list",$cat_list);
$smarty->display('admin/category_detail.tpl');
?>
