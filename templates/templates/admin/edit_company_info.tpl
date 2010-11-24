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
  <span style="font-size: 20px;color: blue;"><b>Quản lý thông tin công ty</b></span><br />&nbsp;
  <table cellpadding="0" cellspacing="0" width="95%" class="input_table">
    <tr>
      <th align="right" style="padding: 10px;" width="120">Tên Công Ty</th>
      <td align="left" style="padding: 10px;">
        <input type="text" value="{$company_name}" name="company_name" style="width: 340px">
      </td>
    </tr>
    <tr>
      <th align="right" style="padding: 10px;">Địa Chỉ Công Ty</th>
      <td align="left" style="padding: 10px;">
        <input type="text" value="{$company_address}" name="company_address" style="width: 550px">
      </td>
    </tr>
    <tr>
      <th align="right" style="padding: 10px;">Số điện thoại 1</th>
      <td align="left" style="padding: 10px;">
        <input type="text" value="{$company_side_fone1}" name="company_side_fone1" style="width: 340px">
      </td>
    </tr>
    <tr>
      <th align="right" style="padding: 10px;">Số điện thoại 2</th>
      <td align="left" style="padding: 10px;">
        <input type="text" value="{$company_side_fone2}" name="company_side_fone2" style="width: 340px">
      </td>
    </tr>
    <tr>
      <th align="right" style="padding: 10px;">Số điện thoại 3</th>
      <td align="left" style="padding: 10px;">
        <input type="text" value="{$company_bottom_fone1}" name="company_bottom_fone1" style="width: 340px">
      </td>
    </tr>
    <tr>
      <th align="right" style="padding: 10px;">Số điện thoại 4</th>
      <td align="left" style="padding: 10px;">
        <input type="text" value="{$company_bottom_fone2}" name="company_bottom_fone2" style="width: 340px">
      </td>
    </tr>
    <tr>
      <th align="right" style="padding: 10px;">Số điện thoại 5</th>
      <td align="left" style="padding: 10px;">
        <input type="text" value="{$company_bottom_fone3}" name="company_bottom_fone3" style="width: 340px">
      </td>
    </tr>
    <tr><th colspan="2" align="center"><input type="submit" name="submit" value="Lưu thay đổi"></th></tr>
  </table>
  </form>
  {if $update_ok=='1'}
  <script type="text/javascript" language="javascript">
  alert('Thay đổi thông tin công ty thành công.');
  </script>
  {/if}
</body>
</html>