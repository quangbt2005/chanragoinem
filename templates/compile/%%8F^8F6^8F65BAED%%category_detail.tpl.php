<?php /* Smarty version 2.6.26, created on 2010-10-17 09:41:41
         compiled from admin/category_detail.tpl */ ?>
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
  <form method="post">
  <table>
    <tr><th>Ten Danh Muc</th><td><input type="text" value="<?php echo $this->_tpl_vars['cat']['category_name']; ?>
" name="cat_name"></td></tr>
    <tr><th>Danh Muc Cha</th><td><select name="cat_parent">
          <option value="">---------------</option>
          <?php $_from = $this->_tpl_vars['cat_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['pcat']):
?>
          <?php if ($this->_tpl_vars['cat']['id'] != $this->_tpl_vars['pcat']['id']): ?>
          <option value="<?php echo $this->_tpl_vars['pcat']['id']; ?>
" <?php if ($this->_tpl_vars['pcat']['id'] == $this->_tpl_vars['cat']['category_parent']): ?>selected="selected"<?php endif; ?>><?php echo $this->_tpl_vars['pcat']['category_name']; ?>
</option>
          <?php endif; ?>
          <?php endforeach; endif; unset($_from); ?>
        </select></td></tr>
    <tr><td colspan="2"><input type="button" value="Them" onclick="goto_category_add();">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="submit" value="Sua"></td></tr>
    <tr><td colspan="2"><input type="submit" name="submit" value="Xoa"></td></tr>
  </table><input type="hidden" value="<?php echo $this->_tpl_vars['cat']['id']; ?>
" name="cat_id">
  </form>
</body>
<?php echo '
<script language="JavaScript" type="text/javascript">
function goto_category_add()
{
  window.parent.document.getElementById(\'iframe2\').src=\'/quanly/category_add.php\';
}
</script>

'; ?>

</html>