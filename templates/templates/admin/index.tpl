<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en" xml:lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="robots" content="noindex" />
  <link rel="StyleSheet" href="/styles/admin.css" type="text/css" />
  <link rel="shortcut icon" href="/favico.ico" type="image/x-icon" />
  <title>CHAN RA GOI NEM</title>
</head>
<body>
<table cellpadding="0" cellspacing="0" width="100%" id="bigtable" border="0" style="width:1024px;margin: auto;border: 1px solid #cccccc">
  <tr>
    <td valign="top" width="200" style="border-right: 1px solid #cccccc"><iframe name="iframe1" id='iframe1' src="/quanly/categories.php" frameborder="0"></iframe></td>
    <td>
      <table cellpadding="0" cellspacing="3" width="100%" border="0">
        <tr><td colspan="2" style="border-bottom: 1px solid #cccccc"><iframe name="iframe2" id='iframe2' src="/quanly/category_detail.php?cat_id=1" frameborder="0"></iframe></td></tr>
        <tr><td colspan="2" style="border-bottom: 1px solid #cccccc"><iframe name="iframe3" id='iframe3' src="" frameborder="0"></iframe></td></tr>
        <tr>
         <td align="left" style="border: none;"><span style="font-size: 20px;color: blue;"><b>Chi tiết sản phẩm</b></span><br />&nbsp;</td>
         <td align="right" style="border: none;border-right: 1px solid #cccccc">
          <input type="button" value="Thêm sản phẩm" onclick="goto_product_add();">
        </tr>
        <tr><td colspan="2">
          <iframe name="iframe4" id='iframe4' src="" frameborder="0" width="100%"></iframe>
         </td></tr>
      </table>
    </td>
  </tr>
</table>
</body>
{literal}
<script language="JavaScript" type="text/javascript">
function goto_product_add(){
  document.getElementById('iframe4').src='/quanly/product_add.php';
}
</script>
{/literal}
</html>