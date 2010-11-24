<?php
require_once '../init.php';

$product_id = $_GET['product_id'];
if(!empty($product_id)){
  MySQLUPDATE('products',array('id' => $product_id),array(
      'deleted'         => "1",
      'updated_date'    => date('Y-m-d H:i:s'),
    ));
}
?>
