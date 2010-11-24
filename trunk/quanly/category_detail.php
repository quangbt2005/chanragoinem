<?php
require_once '../init.php';
$cat_id = $_GET['cat_id'];
$query = "SELECT * FROM categories WHERE deleted='0' AND id=" . MySQLQuote($cat_id);
$cat = MySQLSELECT($query);

$query = "SELECT * FROM categories WHERE deleted='0'";
$cat_list = MySQLSELECT($query);

if($_SERVER['REQUEST_METHOD'] == 'POST'){
  $cat_id       = $_POST['cat_id'];
  if($_POST['submit'] == 'Lưu thay đổi'){
    $cat_parent = $_POST['cat_parent'];
    $cat_name   = $_POST['cat_name'];

    MySQLUPDATE('categories',array('id' => $cat_id),array(
      'category_name'   => MySQLQuote($cat_name),
      'category_parent' => MySQLQuote($cat_parent),
      'updated_date'    => date('Y-m-d H:i:s'),
    ));
  } elseif($_POST['submit'] == 'Xóa danh mục này'){
    MySQLUPDATE('categories',array('id' => $cat_id),array(
      'deleted'         => "1",
      'updated_date'    => date('Y-m-d H:i:s'),
    ));
    $query = "SELECT id FROM categories WHERE deleted='0' LIMIT 1";
    $cat = MySQLSELECT($query);
  }

  $_SESSION['flash']['update_category_ok'] = '1';
  header('Location: /quanly/category_detail.php?cat_id=' . $cat[0]['id']);
  exit;
}

// $smarty = new SmartyEx;
if(isset($_SESSION['flash']['update_category_ok'])){
	$smarty->assign('update_category_ok', '1');
  unset($_SESSION['flash']['update_category_ok']);
}
$smarty->assign("cat_id",$cat_id);
$smarty->assign("cat",$cat[0]);
$smarty->assign("cat_list",$cat_list);
$smarty->display('admin/category_detail.tpl');
?>
