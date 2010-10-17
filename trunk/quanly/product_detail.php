<?php
function setTransparency($new_image,$image_source)
{
  $transparencyIndex = imagecolortransparent($image_source);
  $transparencyColor = array('red' => 255, 'green' => 255, 'blue' => 255);

  if ($transparencyIndex >= 0) {
    $transparencyColor    = imagecolorsforindex($image_source, $transparencyIndex);
  }

  $transparencyIndex    = imagecolorallocate($new_image, $transparencyColor['red'], $transparencyColor['green'], $transparencyColor['blue']);
  imagefill($new_image, 0, 0, $transparencyIndex);
  imagecolortransparent($new_image, $transparencyIndex);
}
function ResizeImage($file, $max_width, $max_height){
  if(is_file($file)){
      $gis  = getimagesize($file);
      $type = $gis[2];
      switch($type)
      {
        case "1": $imorig = imagecreatefromgif($file); break;
        case "2": $imorig = imagecreatefromjpeg($file);break;
        case "3": $imorig = imagecreatefrompng($file); break;
        default: $imorig = imagecreatefromjpeg($file);
      }

      $width  = imagesx($imorig);
      $height = imagesy($imorig);

      $new_width  = $width;
      $new_height = $height;

      if($new_width > $max_width){
        $new_width  = $max_width;
        $new_height = $height * ($new_width/$width);
      }
      if($new_height > $max_height){
        $new_height = $max_height;
        $new_width  = $width * ($new_height/$height);
      }

      $im = imagecreatetruecolor($new_width,$new_height);
      setTransparency($im,$imorig);
      imagecopyresampled($im,$imorig , 0,0,0,0,$new_width,$new_height,$width,$height);

      $image_name = SYS_IMAGES_PATH . basename($file);
      imagejpeg($im, $image_name);
  }
}

require '../init.php';
$product_id = $_GET['product_id'];
$query = "SELECT * FROM products WHERE deleted='0' AND id=" . MySQLQuote($product_id);
$product = MySQLSELECT($query);

$query = "SELECT * FROM categories WHERE deleted='0'";
$cat_list = MySQLSELECT($query);

if($_SERVER['REQUEST_METHOD'] == 'POST'){
  $product_id   = $_POST['product_id'];
  if($_POST['submit'] == 'Sua'){
    $product_category = $_POST['product_category'];
    $product_price    = $_POST['product_price'];
    $product_name     = $_POST['product_name'];

    $basefilename = basename($_FILES['product_image']['name']);
    $tmp_upload = UPLOADS . $basefilename;
    if(move_uploaded_file($_FILES['product_image']['tmp_name'], $tmp_upload)){
      ResizeTmpImage($basefilename);
      // MoveTmpImage2ImageDir();
    }

    MySQLUPDATE('products',array('id' => $product_id),array(
      'product_category'   => $product_category,
      'product_price'      => MySQLQuote($product_price),
      'product_name'       => MySQLQuote($product_name),
      'product_image'      => MySQLQuote($basefilename),
      'updated_date'       => date('Y-m-d H:i:s'),
    ));
  }

  //header('Location: refresh.php?p=categories');
  //exit;
}

$smarty = new SmartyEx;

$smarty->assign("product",$product[0]);
$smarty->assign("cat_list",$cat_list);
$smarty->display('admin/product_detail.tpl');
?>
