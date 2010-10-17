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
  <table>
    <tr><th>Ten Danh Muc</th><td><input type="text" name="cat_name"></td></tr>
    <tr><th>Danh Muc Cha</th><td>
        <select name="cat_parent">
          <option value="">---------------</option>
          {foreach from=$cat_list item=cat}
          <option value="{$cat.id}">{$cat.category_name}</option>
          {/foreach}
        </select>
      </td></tr>
    <tr><td colspan="2"><input type="submit" value="Them"></td></tr>
  </table>
  </form>
</body>
</html>