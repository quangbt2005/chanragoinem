<?php
require '../init.php';
$cat_id = empty($_GET['cat_id']) ? 0 : $_GET['cat_id'];
$query  = "SELECT * FROM categories WHERE deleted='0'";
$cat_list = MySQLSELECT($query);

$tree          = array();
$cat_obj_array = array();
$id_array      = array();

foreach($cat_list as $cat){
  $cat_obj_array[$cat['id']] = new Category($cat);
  $id_array[] = $cat['id'];
}

for($i=0;$i<count($cat_obj_array);$i++){
  $tmp = $cat_obj_array[$id_array[$i]];
  if(!empty($tmp->parent_id)){
    $parent = $cat_obj_array[$tmp->parent_id];

    $tmp->level = $parent->level + 1;

    if($tmp->parent_id == 6){
      e($tmp->id);
      e($tmp->level);
      //pd($parent);
    }

    // $tmp->parent_obj = $parent;
    $parent->addChild($tmp);
  }
}
$cat_obj_array[7]->level = 10;
pd($cat_obj_array);

$category_path = array();
if(empty($cat_id)) $cat_id = $id_array[0];
if(!empty($cat_id) && !empty($cat_obj_array[$cat_id])){
  $pointer = $cat_obj_array[$cat_id];
  do{
    $category_path[$pointer->level] = $pointer->id;
    if($pointer->level > 0){
      $pointer = $pointer->parent_obj;
    } else { break; }
  } while (1);
}


/*
reset($cat_obj_array[$category_path[0]]->childs);

$_stack[] = array('level'  => 0,
                  'parent' => $category_path[0],
                  'list'   => $cat_obj_array[$category_path[0]]->childs);

$isbreak = 0;

while(count($_stack)>0){
  $pointer = array_pop($_stack);
  while($tmp = next($pointer['list'])){
    $tree[] = $tmp->id;
    if($isbreak == 1){
      pd($tmp);
    }
    if(($pointer['level'] + 1 < count($category_path))
       && ($tmp->id == $category_path[$pointer['level'] + 1])){
    	$_stack[] = array('level'  => $pointer['level'],
                        'parent' => $pointer['parent'],
                        'list'   => $pointer['list']);
      reset($tmp->childs);
      $_stack[] = array('level'  => $pointer['level'] + 1,
                        'parent' => $tmp->id,
                        'list'   => $tmp->childs);
      // pd($_stack);
      $isbreak += 1;
      break;
    }
  }
}
*/
p($category_path);
p($tree);
// p($cat_obj_array);

$smarty = new SmartyEx;

$smarty->assign("cat_list",$cat_list);
$smarty->display('admin/categories.tpl');
?>
