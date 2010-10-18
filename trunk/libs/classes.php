<?php
class Category{
	public $id;
  public $data;
  public $level;
  public $parent_id;
  public $parent_obj;
  public $childs;

  function __construct($data, $level=0){
    $this->parent_id = $data['category_parent'];
    $this->id     = $data['id'];
    // $this->data   = $data;
    $this->level  = $level;
    $this->childs = array();
  }
  function addChild($child){
  	$this->childs[] = $child;
  }
}
?>
