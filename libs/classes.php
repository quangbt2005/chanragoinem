<?php
class Category{
  public $id;
  public $level;
  public $parent_id;
  public $is_level_processed = 0;
  public $is_show = 0;
  public $data;
  public $parent_obj;
  public $childs;


  function __construct($data){
    $this->parent_id = $data['category_parent'];
    $this->id     = $data['id'];
    $this->data   = $data;
    $this->level = 0;
    if(empty($data['category_parent'])) {
      $this->is_level_processed = 1;
    }
    $this->childs = array();
  }
  function addChild($child){
    $this->childs[] = $child;
  }
}
?>
