<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en" xml:lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="robots" content="noindex" />
  <link rel="StyleSheet" href="/styles/admin.css" type="text/css" />
</head>
<body>
  <form method="post" enctype="multipart/form-data">
	  <table cellpadding="0" cellspacing="0" width="95%" class="input_table" style="margin-top: 10px;">
	    <tr><th align="right">Tên Sản Phẩm</th><td><input type="text" value="{$product.product_name}" name="product_name" style="width: 280px"></td></tr>
	    <tr><th align="right">Danh Mục</th><td><select name="product_category" style="width: 180px">
	          <option value="">---------------</option>
	          {foreach from=$cat_list item=pcat}
	          <option value="{$pcat.id}" {if $pcat.id==$product.product_category}selected="selected"{/if}>{$pcat.category_name}</option>
	          {/foreach}
	        </select></td>
	    </tr>
	    <tr><th align="right">Giá Sản Phẩm</th><td><input type="text" name="product_price" value="{$product.product_price}"></td></tr>
	    <tr><th align="right">Chi Tiết Sản Phẩm</th><td><textarea name="product_description" cols="40" rows="6">{$product.product_description}</textarea></td></tr>
	    <tr><th align="right">Hình Sản Phẩm</th><td valign="top"><input type="file" name="product_image">&nbsp;<img src="/product_thumb.php?f={$product.product_image}&w=200&h=auto" width="200" hspace="0" vspace="0" border="0"></td></tr>
	    <tr><th colspan="2"><input type="submit" name="submit" value="Lưu thay đổi"></th></tr>
	  </table>
	<input type="hidden" value="{$product.id}" name="product_id">
  </form>
  {if $update_ok=='1'}
  <script type="text/javascript" language="javascript">
  window.parent.document.getElementById('iframe3').contentWindow.location.reload(true);
  alert('Thay đổi thông tin sản phẩm thành công');
  </script>
  {/if}
</body>
</html>