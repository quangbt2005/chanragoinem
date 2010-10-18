<?xml version="1.0" encoding="UTF-8"?>
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
    {foreach from=$product_list item=product key=key}
    <tr>
      <td>{math equation="x + y" x=$key y=1}</td>
      <td><a href="javascript:change_product_detail({$product.id});">{$product.product_name}</a></td>
      <td>{number_format number=$product.product_price}&nbsp;VND</td>
      <td><input type="button" onclick="delete_product({$product.id})" value="Xoa"></td>
    </tr>
    {/foreach}
  </table>
</body>
{literal}
<script languge="javascript">
function change_product_detail(product_id)
{
  window.parent.document.getElementById('iframe4').src='/quanly/product_detail.php?product_id=' + product_id;
}
function delete_product(product_id)
{
  var url = 'product_delete.php?product_id=' + product_id;
  $.get(url, function(data){
    window.location.reload(false);
  });
}
</script>
{/literal}
</html>