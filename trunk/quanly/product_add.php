<?php
require_once '../init.php';
$query = "SELECT * FROM categories WHERE deleted='0'";
$cat_list = MySQLSELECT($query);

if($_SERVER['REQUEST_METHOD'] == 'POST'){
  $product_category    = $_POST['product_category'];
  $product_price       = $_POST['product_price'];
  $product_name        = $_POST['product_name'];
  $product_description = $_POST['product_description'];

  $basefilename = basename($_FILES['product_image']['name']);
  $tmp_upload = UPLOADS . $basefilename;
  if(move_uploaded_file($_FILES['product_image']['tmp_name'], $tmp_upload)){
    ResizeImage($tmp_upload, 800, 600);
    rename($tmp_upload . '_resized', SYS_IMAGES_PATH . $basefilename);
    unlink($tmp_upload);
  }

  MySQLINSERT('products',array(
    'product_category'    => $product_category,
    'product_price'       => (int)MySQLQuote($product_price),
    'product_name'        => MySQLQuote($product_name),
    'product_image'       => MySQLQuote($basefilename),
    'product_description' => MySQLQuote($product_description),
    'created_date'        => date('Y-m-d H:i:s'),
  ));

  header('Location: refresh.php?p=categories');
  exit;
}

// $smarty = new SmartyEx;
$smarty->assign("cat_list",$cat_list);
$smarty->display('admin/product_add.tpl');
?>
