<?php
// ---------------------------------------------------------------------------------------------- //
function MySQLDefined(){
  if(defined('DB_HOST') && defined('DB_NAME') && defined('DB_USER') && defined('DB_PASS')){
    return true;
  }
}
// ---------------------------------------------------------------------------------------------- //
function MySQLQuote($query){
  if(!empty($query)){
    $searching = array("'");
    $replacing = array("\\'");
    return str_replace($searching, $replacing, $query);
  }
}
// ---------------------------------------------------------------------------------------------- //
function MySQLExec($query){
  if(!empty($query)){
    if(MySQLDefined()){
      $link = mysql_connect(DB_HOST, DB_USER, DB_PASS);
      if(!$link){
        die('FAIL TO CONNECT TO DB');
      } else {
        $select_db_ok = mysql_select_db(DB_NAME, $link);
        if(!$select_db_ok){
          die('FAIL TO SELECT DB');
        } else {
          // $query = MySQLQuote($query);
          $query = trim($query);
          if(strpos($query,'INSERT')===0){
            mysql_query($query, $link);
            return mysql_insert_id( $link );
          } else {
            return mysql_query($query, $link);
          }
        }
      }
    } else {
    	die("DB HOST WASN'T DEFINED");
    }
  }
}
// ---------------------------------------------------------------------------------------------- //
function MySQLSELECT($query){
  $result = array();

  $result_handler = MySQLExec($query);
  if($result_handler){
    while ($row = mysql_fetch_assoc($result_handler)) {
      $result[] = $row;
    }
  }

  return $result;
}
// ---------------------------------------------------------------------------------------------- //
function MySQLINSERT($table, $params)
{
  if( empty( $params ) || empty( $table ) )
  {
    return;
  }

  $query = 'INSERT INTO ' . $table . ' ';
  foreach($params as $key => $value)
  {
    $fields[] = $key;
    $values[] = "'" . MySQLQuote($value) . "'";
  }

  $query .= '(' . implode(',', $fields) . ') ';
  $query .= 'VALUES(' . implode(',', $values) . ')';

  return MySQLExec($query);
}
// ---------------------------------------------------------------------------------------------- //
function MySQLUPDATE($table, $conditions, $values)
{
  if( empty( $values ) || empty( $table ) )
  {
    return;
  }

  $query_values = array();
  $query_conditions = array();

  foreach($values as $key=>$value)
  {
    $query_values[] = $key . "='" . MySQLQuote($value) . "'";
  }
  foreach($conditions as $key=>$value)
  {
    $value = MySQLQuote($value);
    if(is_array($value))
    {
    	$in_st = implode(',', $value);
      $query_conditions[] = $key . " IN(" . $in_st . ")";
    } else {
      $query_conditions[] = $key . "='" . $value . "'";
    }
  }

  $query  = 'UPDATE ' . $table . ' SET ' . implode(',', $query_values);
  if(!empty($conditions)){
    $query .= ' WHERE ' . implode(' AND ', $query_conditions);
  }
  // pd($query);
  MySQLExec($query);
}
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
function List_All_Product( $offset=0, $limit=DEFAULT_PAGER_LIMIT )
{
  $query  = 'SELECT * FROM products WHERE ';
  $query .= "deleted='0' ORDER BY created_date DESC LIMIT $offset,$limit";
  return MySQLSELECT($query);
}
// ---------------------------------------------------------------------------------------------- //
function Load_Fist_Category()
{
  $query  = "SELECT id FROM categories WHERE deleted='0' LIMIT 1";
  $result = MySQLSELECT($query);
  return empty($result[0]['id']) ? '' : $result[0]['id'];
}
// ---------------------------------------------------------------------------------------------- //
?>
