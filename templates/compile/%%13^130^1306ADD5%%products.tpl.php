<?php /* Smarty version 2.6.26, created on 2010-10-18 06:30:29
         compiled from admin/products.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'math', 'admin/products.tpl', 16, false),array('function', 'number_format', 'admin/products.tpl', 18, false),)), $this); ?>
<?php echo '<?xml'; ?>
 version="1.0" encoding="UTF-8"<?php echo '?>'; ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en" xml:lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="robots" content="noindex" />
  <link rel="StyleSheet" href="/style/admin.css" type="text/css" />
  <script type="text/javascript" src="/javascripts/jquery-1.4.2.js"></script>
</head>
<body>
  <table cellpadding="0" cellspacing="0" width="100%">
    <?php $_from = $this->_tpl_vars['product_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['product']):
?>
    <tr>
      <td><?php echo smarty_function_math(array('equation' => "x + y",'x' => $this->_tpl_vars['key'],'y' => 1), $this);?>
</td>
      <td><a href="javascript:change_product_detail(<?php echo $this->_tpl_vars['product']['id']; ?>
);"><?php echo $this->_tpl_vars['product']['product_name']; ?>
</a></td>
      <td><?php echo smarty_number_format(array('number' => $this->_tpl_vars['product']['product_price']), $this);?>
&nbsp;VND</td>
      <td><input type="button" onclick="delete_product(<?php echo $this->_tpl_vars['product']['id']; ?>
)" value="Xoa"></td>
    </tr>
    <?php endforeach; endif; unset($_from); ?>
  </table>
</body>
<?php echo '
<script languge="javascript">
function change_product_detail(product_id)
{
  window.parent.document.getElementById(\'iframe4\').src=\'/quanly/product_detail.php?product_id=\' + product_id;
}
function delete_product(product_id)
{
  var url = \'product_delete.php?product_id=\' + product_id;
  $.get(url, function(data){
    window.location.reload(false);
  });
}
</script>
'; ?>

</html>