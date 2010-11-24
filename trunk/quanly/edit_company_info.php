<?php
require_once '../init.php';
if($_SERVER['REQUEST_METHOD'] == 'POST'){
  MySQLUPDATE('configurations', array('name' => 'company_name1'), array('value' => MySQLQuote($_POST['company_name1'])));
  MySQLUPDATE('configurations', array('name' => 'company_name2'), array('value' => MySQLQuote($_POST['company_name2'])));
  MySQLUPDATE('configurations', array('name' => 'company_bottom_fone1'), array('value' => MySQLQuote($_POST['company_bottom_fone1'])));
  MySQLUPDATE('configurations', array('name' => 'company_bottom_fone2'), array('value' => MySQLQuote($_POST['company_bottom_fone2'])));
  MySQLUPDATE('configurations', array('name' => 'company_bottom_fone3'), array('value' => MySQLQuote($_POST['company_bottom_fone3'])));
  MySQLUPDATE('configurations', array('name' => 'company_side_fone1'), array('value' => MySQLQuote($_POST['company_side_fone1'])));
  MySQLUPDATE('configurations', array('name' => 'company_side_fone2'), array('value' => MySQLQuote($_POST['company_side_fone2'])));
  MySQLUPDATE('configurations', array('name' => 'company_address'), array('value' => MySQLQuote($_POST['company_address'])));

  $_SESSION['flash']['update_company_info_ok'] = '1';
  header('Location: /quanly/edit_company_info.php');
  exit;
}
if(isset($_SESSION['flash']['update_company_info_ok'])){
  $smarty->assign('update_ok', '1');
  unset($_SESSION['flash']['update_company_info_ok']);
}
$smarty->display('admin/edit_company_info.tpl');
?>