<?php
include_once("Smarty.class.php");

class SmartyEx extends Smarty {
    function SmartyEx(){
      $this->template_dir = TEMPLATES_PATH;
      $this->compile_dir  = TEMPLATES_C_PATH;
      $this->cache_dir    = SMARTY_CACHE;
      $this->config_dir   = SMARTY_CONFIG;

      $this->register_function('number_format', 'smarty_number_format');
    }
}

function smarty_number_format( $param )
{
  return number_format( $param["number"], 0, '.', ',' );
}
?>