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
    $query_conditions[] = $key . "='" . MySQLQuote($value) . "'";
  }

  $query  = 'UPDATE ' . $table . ' SET ' . implode(',', $query_values);
  $query .= ' WHERE ' . implode(' AND ', $query_conditions);

  MySQLExec($query);
}
// ---------------------------------------------------------------------------------------------- //
?>
