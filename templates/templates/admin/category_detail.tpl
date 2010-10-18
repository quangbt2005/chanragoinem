<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en" xml:lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="robots" content="noindex" />
  <link rel="StyleSheet" href="/style/admin.css" type="text/css" />
</head>
<body>
  <form method="post">
  <table cellpadding="0" cellspacing="0" width="100%">
    <tr><th>Ten Danh Muc</th><td><input type="text" value="{$cat.category_name}" name="cat_name"></td></tr>
    <tr><th>Danh Muc Cha</th><td><select name="cat_parent">
          <option value="">---------------</option>
          {foreach from=$cat_list item=pcat}
          {if $cat.id != $pcat.id}
          <option value="{$pcat.id}" {if $pcat.id==$cat.category_parent}selected="selected"{/if}>{$pcat.category_name}</option>
          {/if}
          {/foreach}
        </select></td></tr>
    <tr><td colspan="2"><input type="button" value="Them" onclick="goto_category_add();">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="submit" value="Sua"></td></tr>
    <tr><td colspan="2"><input type="submit" name="submit" value="Xoa"></td></tr>
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