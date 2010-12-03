<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en" xml:lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="robots" content="noindex" />
  <link rel="StyleSheet" href="/styles/front.css" type="text/css" />
  <script type="text/javascript" src="/javascripts/jquery-1.4.2.js"></script>
  <link rel="shortcut icon" href="/favico.ico" type="image/x-icon" />
  <title>CHAN RA GOI NEM</title>
</head>
<body>
<table id="bigtable" cellpadding="0" cellspacing="0" border="0">
  {include file="header.tpl"}
  <tr><td><table cellpadding="0" cellspacing="2" width="100%" border="0">
    <tr>
      <td width="192px" valign="top" style="background-color: rgb(100,100,100);">
        <div style="background: url(/images/body_bkg/mainnav-bg.gif) repeat-x center center;padding: 5px;color: white;font-weight:bold;">Danh Mục</div>
        <div>{$categories_tree}</div><br />
        <div style="background: url(/images/body_bkg/mainnav-bg.gif) repeat-x center center;padding: 5px;color: white;font-weight:bold;border-top: 1px solid #cccccc">Hỗ Trợ</div>
        <div style="background-color: rgb(150,150,150);border: 1px solid #cccccc;border-top: 1px solid #969696">
          <p style="background: url(/images/glossy-3d-blue-phone-icon.png) no-repeat left center; padding: 10px 0px 10px 50px;"><span style="color: blue; font-weight: bold;font-size:15px;">{$company_side_fone1}</span></p>
          <p style="background: url(/images/glossy-3d-blue-phone-icon.png) no-repeat left center; padding: 10px 0px 10px 50px;"><span style="color: blue; font-weight: bold;font-size:15px;">{$company_side_fone2}</span></p>
        </div><br>
        <div style="background: url(/images/body_bkg/mainnav-bg.gif) repeat-x center center;padding: 5px;color: white;font-weight:bold;border-top: 1px solid #cccccc">Nhãn Hiệu</div>
        <div style="background-color: rgb(150,150,150);border: 1px solid #cccccc;border-top: 1px solid #969696;text-align: center;">
          <img src="/images/dunlopillo.jpg" style="margin-top: 5px;">
          <img src="/images/edena.jpg">
          <img src="/images/everhome.jpg">
          <img src="/images/kymdan.jpg">
          <img src="/images/liena.jpg">
          <img src="/images/vanthanh.jpg">
        </div>
      </td>
      <td valign="top" align="center" style="width: 910px;height:750px;border: 1px solid #cccccc;">
        <table cellpadding="0" cellspacing="0" border="0" width="100%"">
          <tr>
            <td colspan="2" style="background: url(/images/body_bkg/rokmininews-header.png) repeat-x center center;padding: 8px 10px;border-bottom:1px solid #cccccc;text-transform: uppercase;font-weight: bold;color: green;font-family: tohoma;font-size: 20px">Liên Hệ</td>
          </tr>
          <tr><td colspan="2" style="padding: 10px 0px 10px 40px;" align="left"><b>Mọi chi tiết xin liên hệ</b></td></tr>
          <tr><td colspan="2" style="padding: 10px 80px;" align="left"><b>{$company_name1}&nbsp;<span style="color:blue">{$company_name2}</span></b></td></tr>
          <tr><td colspan="2" style="padding: 10px 80px;" align="left"><b>Địa chỉ: {$company_address}</b></td></tr>
          <tr><td rowspan="3" style="padding: 10px 0px 10px 80px;" align="left" valign="top" width="18%"><b>Điện thoại: </b></td><td style="padding: 10px 0px 0px 0px;" valign="top" align="left">{$company_bottom_fone1}</td></tr>
          <tr><td style="padding: 1px 0px;" align="left">{$company_bottom_fone2}</td></tr>
          <tr><td style="padding: 1px 0px;" align="left">{$company_bottom_fone3}</td></tr>
        </table>
      </td>
    </tr></table></td>
  </tr>
  <tr>
    {include file="footer.tpl"}
  </tr>
</table>
</body>
</html>