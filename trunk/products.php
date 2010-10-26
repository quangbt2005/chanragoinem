<?php
require 'init.php';
// ---------------------------------------------------------------------------------------------- //
function FindSubCategories($cat)
{
  $categories[] = (int)$cat;
  $i = 0;
  while(!empty($categories[$i]))
  {
    $c     = $categories[$i];
    $query = 'SELECT id FROM categories WHERE category_parent=' . $c;
    $List  = MySQLSELECT($query);

    foreach( $List as $cat_id )
    {
      if(!empty($cat_id['id'])) $categories[] = $cat_id['id'];
    }
    $i++;
  }
  return $categories;
}
// ---------------------------------------------------------------------------------------------- //
function List_Product_By_Category( $category_id, $offset=0,
                                   $limit=DEFAULT_PAGER_LIMIT )
{
  if( empty( $category_id ) )
  {
    return array();
  }

  $categories = FindSubCategories( $category_id );

  $categories_string = implode(',', $categories);

  $query  = 'SELECT * FROM products WHERE product_category in (';
  $query .= $categories_string;
  $query .= ") AND deleted='0' ORDER BY created_date DESC LIMIT $offset,$limit";
  return MySQLSELECT($query);
}
// ---------------------------------------------------------------------------------------------- //
$product_list = List_Product_By_Category(1,0,100);
// pd($Product_List);
$smarty = new SmartyEx;

$smarty->assign("product_list", $product_list);
$smarty->display('product_list.tpl');

?>
