<?php
require '../init.php';
$query    = "SELECT * FROM categories WHERE deleted='0' ORDER BY created_date";
$cat_list = MySQLSELECT($query);

$tree          = array();
$cat_obj_array = array();
$id_array      = array();

foreach($cat_list as $cat){
  $cat_obj_array[$cat['id']] = new Category($cat);
  $id_array[] = $cat['id'];
}

$level_processed_count = 0;
while($level_processed_count < count($cat_obj_array)){
  $level_processed_count = 0;
  for($i=0;$i<count($cat_obj_array);$i++){
    $tmp = $cat_obj_array[$id_array[$i]];
    if(!empty($tmp->parent_id) && $tmp->is_level_processed == 0){
      $parent = $cat_obj_array[$tmp->parent_id];
      if($parent->is_level_processed==1){

        $tmp->level = $parent->level + 1;
        $tmp->is_level_processed = 1;
        $level_processed_count++;

        $tmp->parent_obj = $parent;
        $parent->addChild($tmp);
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
$cat_id = empty($_GET['cat_id']) ? 0 : $_GET['cat_id'];
if(empty($cat_id)) $cat_id = $id_array[0];
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
      $tree[] = $tmp->id;
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

//p($category_path);
//p($tree);
// p($cat_obj_array);

$smarty = new SmartyEx;

$smarty->assign("cat_list",$cat_list);
$smarty->display('admin/categories.tpl');
?>
