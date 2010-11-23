<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en" xml:lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="robots" content="noindex" />
  <link rel="StyleSheet" href="/styles/admin.css" type="text/css" />
</head>
<body>
  <form method="post">
  <span style="font-size: 20px;color: blue;"><b>Quản lý danh mục</b></span><br />&nbsp;
  <table cellpadding="0" cellspacing="0" width="95%" class="input_table">
    <tr><th colspan="2" align="right"><input type="button" value="Thêm danh mục" onclick="goto_category_add();"></th></tr>
    <tr><th align="right" style="padding: 10px;" width="120">Tên Danh Mục</th><td align="left" style="padding: 10px;"><input type="text" value="{$cat.category_name}" name="cat_name" style="width: 340px"></td></tr>
    <tr><th align="right" style="padding: 10px;">Danh Mục Cha</th><td align="left" style="padding: 10px;"><select name="cat_parent" style="width: 240px">
          <option value="">---------------</option>
          {foreach from=$cat_list item=pcat}
          {if $cat.id != $pcat.id}
          <option value="{$pcat.id}" {if $pcat.id==$cat.category_parent}selected="selected"{/if}>{$pcat.category_name}</option>
          {/if}
          {/foreach}
        </select></td></tr>
    <tr><th colspan="2" align="center"><input type="submit" name="submit" value="Lưu thay đổi">&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="submit" value="Xóa danh mục này"></th></tr>
  </table><input type="hidden" value="{$cat.id}" name="cat_id">
  </form>
</body>
{literal}
<script language="JavaScript" type="text/javascript">
function goto_category_add()
{
  window.parent.document.getElementById('iframe2').src='/quanly/category_add.php';
}
</script>

{/literal}
</html>