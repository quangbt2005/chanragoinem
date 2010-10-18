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
  <table cellpadding="0" cellspacing="0" width="100%">
    <tr><th>Ten San Pham</th><td><input type="text" name="product_name"></td></tr>
    <tr><th>Danh Muc</th><td><select name="product_category">
          <option value="">---------------</option>
          {foreach from=$cat_list item=pcat}
          <option value="{$pcat.id}">{$pcat.category_name}</option>
          {/foreach}
        </select></td>
    </tr>
    <tr><th>Gia San Pham</th><td><input type="text" name="product_price"></td></tr>
    <tr><th>Chi Tiet San Pham</th><td><textarea name="product_description" cols="40" rows="6"></textarea></td></tr>
    <tr><th>Hinh San Pham</th><td><input type="file" name="product_image"></td></tr>
    <tr><td colspan="2"><input type="submit" value="OK"></td></tr>
  </table>
  </form>
</body>
</html>