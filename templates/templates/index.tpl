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
<table id="bigtable" cellpadding="0" cellspacing="0" border="1">
  <tr>
    <td>
      <ul id="headermenu">
        <li><a href="#">TRANG CHỦ</a></li>
        <li><a href="#">LIÊN HỆ</a></li>
      </ul>
    </td>
  </tr>
  <tr><td>
  <table cellpadding="0" cellspacing="0" width="100%" border="1">
    <tr>
      <td width="192px" valign="top">{$categories_tree}</td>
      <td valign="top" align="center" style="width: 910px;">{$product_list}</td>
    </tr>
  </table>
</td></tr></table>
{literal}
<style type="text/css">#dropin {position:absolute;visibility:hidden;left:400px;top:50px;width:400px;height:200px;background-color:#FFFFEE;border:4px solid black;padding:5px;}#dropin h1 {font-size:22px;text-align:center;}#dropin h1 a {color:#000FFF;}#dropin p, #dropin li {font-size:14px;font-weight:bold}#dropin p a {font-size:22px;color:#CC0000;}</style><script language="javascript1.2" type="text/javascript">function init(){if (arguments.callee.done)return;arguments.callee.done=true;doPopup();};window.onload = init;var ie=document.all;var dom=document.getElementById;var ns4=document.layers;var calunits=document.layers? "" : "px";var bouncelimit=32;var direction="up";function initbox(){if (!dom&&!ie&&!ns4) return;crossobj=(dom)?document.getElementById("dropin").style : ie? document.all.dropin : document.dropin;scroll_top=(ie)? truebody().scrollTop : window.pageYOffset;crossobj.top=scroll_top-250+calunits;crossobj.visibility=(dom||ie)? "visible" : "show";dropstart=setInterval("dropin()",50)}function dropin(){scroll_top=(ie)? truebody().scrollTop : window.pageYOffset;if (parseInt(crossobj.top)<80+scroll_top)crossobj.top=parseInt(crossobj.top)+40+calunits;else{clearInterval(dropstart);bouncestart=setInterval("bouncein()",50)}}function bouncein(){crossobj.top=parseInt(crossobj.top)-bouncelimit+calunits;if (bouncelimit<0)bouncelimit+=8;bouncelimit=bouncelimit*-1;if (bouncelimit==0){clearInterval(bouncestart)}}function dismissbox(){if (window.bouncestart) clearInterval(bouncestart);crossobj.visibility="hidden"}function truebody(){return (document.compatMode && document.compatMode!="BackCompat")? document.documentElement : document.body}function doPopup() {initbox();}function getStyleClass (className) {for (var s = 0; s < document.styleSheets.length; s++){if(document.styleSheets[s].rules){for (var r = 0; r < document.styleSheets[s].rules.length; r++){if (document.styleSheets[s].rules[r].selectorText == '.' + className){return document.styleSheets[s].rules[r];}}}else if(document.styleSheets[s].cssRules){for (var r = 0; r < document.styleSheets[s].cssRules.length; r++){if (document.styleSheets[s].cssRules[r].selectorText == '.' + className)return document.styleSheets[s].cssRules[r];}}}return null;}</script><div id="dropin"><div align="right"><a href="#" onClick="dismissbox();return false">Close Box </a></div><BR><p id="take-survey" style="display:none;"><a href="http://www.kwiksurveys.com">Survey</a></p><h1><a href="http://www.kwiksurveys.com/online-survey.php?surveyID=HONMHL_cc291f11" target="_blank">Please take our Survey</a></h1><p align="center">We appreciate your feedback. Thank you!<BR><BR><a href="http://www.kwiksurveys.com/online-survey.php?surveyID=HONMHL_cc291f11" target="_blank"><b>Take survey</b></a></p></div>
{/literal}
</body>
</html>