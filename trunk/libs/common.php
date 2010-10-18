<?php
// ---------------------------------------------------------------------------------------------- //
function setTransparency($new_image,$image_source)
{
  $transparencyIndex = imagecolortransparent($image_source);
  $transparencyColor = array('red' => 255, 'green' => 255, 'blue' => 255);

  if ($transparencyIndex >= 0) {
    $transparencyColor  = imagecolorsforindex($image_source, $transparencyIndex);
  }

  $transparencyIndex    = imagecolorallocate($new_image, $transparencyColor['red'],
                          $transparencyColor['green'], $transparencyColor['blue']);
  imagefill($new_image, 0, 0, $transparencyIndex);
  imagecolortransparent($new_image, $transparencyIndex);
}
// ---------------------------------------------------------------------------------------------- //
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

      imagejpeg($im, $file . '_resized');
  }
}
// ---------------------------------------------------------------------------------------------- //
function d($v='123456')
{
  die($v);
}
// ---------------------------------------------------------------------------------------------- //
function p($v)
{
  echo('<pre>');
  print_r($v);
  echo('</pre>');
}
// ---------------------------------------------------------------------------------------------- //
function pd($v)
{
  echo('<pre>');
  print_r($v);
  echo('</pre>');
  d();
}
// ---------------------------------------------------------------------------------------------- //
function e($v)
{
  echo $v . '<br>';
}
// ---------------------------------------------------------------------------------------------- //
?>
