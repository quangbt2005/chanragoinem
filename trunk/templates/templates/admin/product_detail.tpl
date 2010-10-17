<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en" xml:lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="robots" content="noindex" />
  <link rel="StyleSheet" href="/style/admin.css" type="text/css" />
</head>
<body>
  <form method="post" enctype="multipart/form-data">
  <table>
    <tr><th>Ten San Pham</th><td><input type="text" value="{$product.product_name}" name="product_name"></td></tr>
    <tr><th>Chi Tiet San Pham</th><td><input type="text" value="{$product.product_description}" name="product_description"></td></tr>
    <tr><th>Danh Muc</th><td><select name="product_category">
          <option value="">---------------</option>
          {foreach from=$cat_list item=pcat}
          <option value="{$pcat.id}" {if $pcat.id==$product.product_category}selected="selected"{/if}>{$pcat.category_name}</option>
          {/foreach}
        </select></td></tr>
    <tr><th>Hinh San Pham</th><td><input type="file" name="product_image"></td></tr>
    <tr><th>Gia San Pham</th><td><input type="text" name="product_price" value="{$product.product_price}"></td></tr>
    <tr><td colspan="2"><input type="button" value="Them" onclick="goto_product_add();">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="submit" value="Sua"></td></tr>
  </table><input type="hidden" value="{$product.id}" name="product_id">
  </form>
</body>
{literal}
<script language="JavaScript" type="text/javascript">
function goto_product_add()
{
  window.parent.document.getElementById('iframe2').src='/quanly/product_add.php';
}
</script>

{/literal}
</html>