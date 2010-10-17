<?php
require '../init.php';
$product_id = $_GET['product_id'];
$query = "SELECT * FROM products WHERE deleted='0' AND id=" . MySQLQuote($product_id);
$product = MySQLSELECT($query);

$query = "SELECT * FROM categories WHERE deleted='0'";
$cat_list = MySQLSELECT($query);

if($_SERVER['REQUEST_METHOD'] == 'POST'){
  $product_id   = $_POST['cat_id'];
  if($_POST['submit'] == 'Sua'){
    $product_category = $_POST['product_category'];
    $product_price    = $_POST['product_price'];
    $product_name     = $_POST['product_name'];

    MySQLUPDATE('products',array('id' => $product_id),array(
      'product_category'   => $product_category,
      'product_price'      => MySQLQuote($product_price),
      'product_name'       => MySQLQuote($product_name),
      'updated_date'       => date('Y-m-d H:i:s'),
    ));
  }

  header('Location: refresh.php?p=categories');
  exit;
}

$smarty = new SmartyEx;

$smarty->assign("cat",$cat[0]);
$smarty->assign("cat_list",$cat_list);
$smarty->display('admin/category_detail.tpl');
?>
