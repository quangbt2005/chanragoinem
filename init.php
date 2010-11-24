<?php
include_once("constants.php");

include_once('mysql_func.php');
include_once(LIB_PATH . 'smarty/SmartyEx.class.php');
include_once(LIB_PATH . 'common.php');
include_once(LIB_PATH . 'classes.php');

$smarty = new SmartyEx;
// $smarty->compile_check = true;
// $smarty->debugging = true;

include_once('load_company_configs.php');
session_start();
?>
