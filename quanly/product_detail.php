<?php
require_once '../init.php';
$product_id = $_GET['product_id'];
$query = "SELECT * FROM products WHERE deleted='0' AND id=" . MySQLQuote($product_id);
$product = MySQLSELECT($query);

$query = "SELECT * FROM categories WHERE deleted='0'";
$cat_list = MySQLSELECT($query);

// $smarty = new SmartyEx;

if($_SERVER['REQUEST_METHOD'] == 'POST'){
  $product_id   = $_POST['product_id'];
  // if($_POST['submit'] == 'Sua')
  {
    $product_category    = $_POST['product_category'];
    $product_price       = $_POST['product_price'];
    $product_name        = $_POST['product_name'];
    $product_description = $_POST['product_description'];

    $basefilename = basename($_FILES['product_image']['name']);
    if(!empty($basefilename)){
      $tmp_upload = UPLOADS . $basefilename;
      if(move_uploaded_file($_FILES['product_image']['tmp_name'], $tmp_upload)){
        ResizeImage($tmp_upload, 800, 600);
        rename($tmp_upload . '_resized', SYS_IMAGES_PATH . $basefilename);
        unlink($tmp_upload);
      }

      MySQLUPDATE('products',array('id' => $product_id),array(
        'product_category'    => $product_category,
        'product_price'       => MySQLQuote($product_price),
        'product_name'        => MySQLQuote($product_name),
        'product_image'       => MySQLQuote($basefilename),
        'product_description' => MySQLQuote($product_description),
        'updated_date'        => date('Y-m-d H:i:s'),
      ));
    } else {
    	MySQLUPDATE('products',array('id' => $product_id),array(
        'product_category'    => $product_category,
        'product_price'       => MySQLQuote($product_price),
        'product_name'        => MySQLQuote($product_name),
        'product_description' => MySQLQuote($product_description),
        'updated_date'        => date('Y-m-d H:i:s'),
      ));
    }
  }
  $smarty->assign("update_ok", '1');
  //header('Location: refresh.php?p=categories');
  //exit;
}

$smarty->assign("product",$product[0]);
$smarty->assign("cat_list",$cat_list);
$smarty->display('admin/product_detail.tpl');
?>
