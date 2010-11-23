<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en" xml:lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="robots" content="noindex" />
  <link rel="StyleSheet" href="/styles/admin.css" type="text/css" />
</head>
<body>{$HTTPREFERER}
  <table cellpadding="0" cellspacing="0" width="100%" class="input_table">
    {foreach from=$cat_list item=cat}
    <tr><th align="left" style="padding: 5px 0px 5px {math equation="5+x*y" x=10 y=$cat.level}px;"><a href="javascript:change_category_detail({$cat.id});" onclick="">{$cat.category_name}</a></th></tr>
    {/foreach}
  </table>
</body>
{literal}
<script languge="javascript">
function change_category_detail(category_id){
  window.parent.document.getElementById('iframe1').src='/quanly/categories.php?cat_id=' + category_id;
  window.parent.document.getElementById('iframe2').src='/quanly/category_detail.php?cat_id=' + category_id;
  window.parent.document.getElementById('iframe3').src='/quanly/products.php?cat_id=' + category_id;
  window.parent.document.getElementById('iframe1').src='/quanly/categories.php?f=f&cat_id=' + category_id;
}
</script>{/literal}
</html>