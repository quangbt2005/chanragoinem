<?php /* Smarty version 2.6.26, created on 2010-10-17 09:41:41
         compiled from admin/categories.tpl */ ?>
<?php echo '<?xml'; ?>
 version="1.0" encoding="UTF-8"<?php echo '?>'; ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en" xml:lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="robots" content="noindex" />
  <link rel="StyleSheet" href="/style/admin.css" type="text/css" />
</head>
<body>
  <table>
    <?php $_from = $this->_tpl_vars['cat_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['cat']):
?>
    <tr><td><a href="javascript:change_category_detail(<?php echo $this->_tpl_vars['cat']['id']; ?>
);" onclick=""><?php echo $this->_tpl_vars['cat']['category_name']; ?>
</a></td></tr>
    <?php endforeach; endif; unset($_from); ?>
  </table>
</body>
<?php echo '
<script languge="javascript">
function change_category_detail(category_id)
{
  window.parent.document.getElementById(\'iframe2\').src=\'/quanly/category_detail.php?cat_id=\' + category_id;
  window.parent.document.getElementById(\'iframe3\').src=\'/quanly/products.php?cat_id=\' + category_id;
}
</script>
'; ?>

</html>