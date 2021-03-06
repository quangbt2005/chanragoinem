<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en" xml:lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="robots" content="noindex" />
  <link rel="StyleSheet" href="/styles/admin.css" type="text/css" />
</head>
<body>
  <form method="post" enctype="multipart/form-data" onsubmit="return checkinput();">
  <table cellpadding="0" cellspacing="0" width="95%" class="input_table" style="margin-top: 10px;">
    <tr><th align="right">Tên Sản Phẩm</th><td><input type="text" id="product_name" name="product_name" style="width: 280px"></td></tr>
    <tr><th align="right">Danh Mục</th><td><select id="product_category" name="product_category" style="width: 180px">
          <option value="">---------------</option>
          {foreach from=$cat_list item=pcat}
          <option value="{$pcat.id}">{$pcat.category_name}</option>
          {/foreach}
        </select></td>
    </tr>
    <tr><th align="right">Giá Sản Phẩm</th><td><input type="text" name="product_price"></td></tr>
    <tr><th align="right">Chi Tiết Sản Phẩm</th><td><textarea name="product_description" cols="40" rows="6"></textarea></td></tr>
    <tr><th align="right">Hình Sản Phẩm</th><td><input type="file" name="product_image"></td></tr>
    <tr><th colspan="2"><input type="submit" value="Thêm sản phẩm"></th></tr>
  </table>
  </form>
  <script type="text/javascript" language="javascript">
  {if $add_product_ok=='1'}
  window.parent.document.getElementById('iframe3').contentWindow.location.reload(true);
  alert('Thêm sản phẩm thành công');
  {/if}
  {literal}
  function checkinput(){
    var pcat = document.getElementById('product_category');
    var pname = document.getElementById('product_name');
    var errmsg = '';

    if(pname!=null && pname.value == ''){
      errmsg += 'Chưa nhập tên sản phẩm !';
    }
    if(pcat!=null && pcat.selectedIndex == 0){
      if(errmsg != '') errmsg += "\n";
      errmsg += 'Chưa chọn danh mục sản phẩm !';
    }
    if(errmsg != ''){
      alert(errmsg);
      return false;
    }

    return true;
  }
  {/literal}
  </script>

</body>
</html>