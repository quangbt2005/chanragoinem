<?php
require_once '../init.php';
$query    = "SELECT * FROM categories WHERE deleted='0' ORDER BY created_date";
$cat_list = MySQLSELECT($query);

$tree          = array();
$cat_obj_array = array();
$id_array      = array();
// ---------------------------------------------------------------------------------------------- //
// Create array of Category objects
// ---------------------------------------------------------------------------------------------- //
foreach($cat_list as $cat){
  $cat_obj_array[$cat['id']] = new Category($cat);
  $id_array[] = $cat['id'];
}
// ---------------------------------------------------------------------------------------------- //
// Assign level and set child,parent for Category objects
// ---------------------------------------------------------------------------------------------- //
$level_processed_count = 0;
while($level_processed_count < count($cat_obj_array)){
  $level_processed_count = 0;
  for($i=0;$i<count($cat_obj_array);$i++){
    $tmp = $cat_obj_array[$id_array[$i]];
    if(!empty($tmp) && !empty($tmp->parent_id) && $tmp->is_level_processed == 0){
      if(!empty($cat_obj_array[$tmp->parent_id])){
        $parent = $cat_obj_array[$tmp->parent_id];
        if($parent->is_level_processed==1){

          $tmp->level = $parent->level + 1;
          $tmp->is_level_processed = 1;
          $level_processed_count++;

          $tmp->parent_obj = $parent;
          $parent->addChild($tmp);
        }
      } else {
      	unset($cat_obj_array[$id_array[$i]]);
        unset($id_array[$i]);
      }
    } else {
      $level_processed_count++;
    }
  }
//  e($level_processed_count);
//  $j++;
}
//e($j);
//pd($cat_obj_array);
// ---------------------------------------------------------------------------------------------- //
// Build category path
// ---------------------------------------------------------------------------------------------- //
reset($id_array);
$cat_id = empty($_GET['cat_id']) ? 0 : $_GET['cat_id'];
if(empty($cat_id)) $cat_id = current($id_array);
$category_path = array();
if(!empty($cat_id) && !empty($cat_obj_array[$cat_id])){
  $pointer = $cat_obj_array[$cat_id];
  do{
    $category_path[$pointer->level] = $pointer->id;
    if($pointer->level > 0){
      $pointer = $pointer->parent_obj;
    } else { break; }
  } while (1);
}
// ---------------------------------------------------------------------------------------------- //
// Build category tree
// ---------------------------------------------------------------------------------------------- //
reset($cat_obj_array[$category_path[0]]->childs);
$_stack[] = array('level'  => 0,
                  'parent' => $category_path[0],
                  'list'   => $cat_obj_array[$category_path[0]]->childs);

$isbreak = 0;

while(count($_stack)>0){
  $pointer = array_pop($_stack);
//  if($isbreak == 1){
//      e('BREAK 0');
//      pd($pointer);
//    }
  if(count($pointer['list'])){
    do{
      $tmp = current($pointer['list']);
      $tmp->is_show = 1;
      $tree[] = $tmp;
  //    if($isbreak == 1){
  //      e('BREAK 1');
  //      pd($tmp);
  //    }
      if(($pointer['level'] + 1 < count($category_path))
         && ($tmp->id == $category_path[$pointer['level'] + 1])){
        if(next($pointer['list'])){
          $_stack[] = array('level'  => $pointer['level'],
                            'parent' => $pointer['parent'],
                            'list'   => $pointer['list']);
        }
        reset($tmp->childs);
        $_stack[] = array('level'  => $pointer['level'] + 1,
                          'parent' => $tmp->id,
                          'list'   => $tmp->childs);
        //pd($_stack);
        $isbreak += 1;
        break;
      }
    } while (next($pointer['list']));
  }
}

foreach($cat_obj_array as $cat_obj){
  $cat_obj->parent_obj = NULL;
}

//p($category_path);
//p($tree);
// p($cat_obj_array);
// ---------------------------------------------------------------------------------------------- //
// Build category tree for display
// ---------------------------------------------------------------------------------------------- //
$tmp_tree = array();

foreach($cat_obj_array as $cat_obj){
	if($cat_obj->level == 0){
    $tmp_tree[] = array('id'            => $cat_obj->id,
                        'level'         => $cat_obj->level,
                        'category_name' => $cat_obj->data['category_name']);
    if($cat_obj->id == $category_path[0]){
      foreach($tree as $cat_obj2){
        $tmp_tree[] = array('id'            => $cat_obj2->id,
                            'level'         => $cat_obj2->level,
                            'category_name' => $cat_obj2->data['category_name']);
      }
	 }
  }
}

// p($tmp_tree);

$_SESSION['category_path'] = $category_path;

// $smarty = new SmartyEx;

$smarty->assign("cat_list",$tmp_tree);
$smarty->display('admin/categories.tpl');
?>
