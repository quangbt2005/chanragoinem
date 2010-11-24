<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en" xml:lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="robots" content="noindex" />
  <link rel="StyleSheet" href="/styles/front.css" type="text/css" />
  <link rel="stylesheet" type="text/css" href="/styles/galleryview.css" />
  <script type="text/javascript" src="javascripts/jquery-1.4.2.js"></script>
  <script type="text/javascript" src="javascripts/jquery.easing.1.3.js"></script>
  <script type="text/javascript" src="javascripts/jquery.galleryview-1.1.js"></script>
  <script type="text/javascript" src="javascripts/jquery.timers-1.2.js"></script>
  <link rel="shortcut icon" href="/favico.ico" type="image/x-icon" />
  <title>CHAN RA GOI NEM</title>
  {literal}
  <script type="text/javascript">
  $(document).ready(function(){
    $('#photos').galleryView({
      panel_width: 550,
      panel_height: 500,
      intro_width: 350,
      intro_padding: 50,
      frame_width: 80,
      frame_height: 60,
      overlay_color: 'url(/images/body_bkg/small_box.png) no-repeat scroll 0 0 transparent',
      overlay_text_color: 'blue',
      caption_text_color: '#222',
      background_color: 'transparent',
      border: 'none',
      /*nav_theme: 'light',*/
      easing: 'easeInOutQuad',
      pause_on_hover: true,
      overlay_opacity: 1
    });
  });
  </script>
  {/literal}
</head>
<body>
<table id="bigtable" cellpadding="0" cellspacing="0" border="0">
  <tr>
    <td>
      <table cellpadding="0" cellspacing="0" border="0" width="100%" style="background: url(/images/body_bkg/header-bg.png) repeat-x scroll 0 0 #EDEDED;border: 1px solid #dddddd">
        <tr>
          <td style="padding-left: 150px;font-family: ariston,tahoma,verdana;font-weight: bold;font-size: 40px;color: blue;">TEN CONG TY</td>
          <td align="right" style="padding-right: 50px;"><img src="/images/body_bkg/logo_copy.jpg"></td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td><embed width="100%" height="200" flashvars="dataXml=http://www.chanragoinem.com/modules/mod_jsn_imageshow_pro/jsn_imageshow_pro/xmldata58.xml&amp;imageshowUrl=http://www.chanragoinem.com/modules/mod_jsn_imageshow_pro/jsn_imageshow_pro/imageshow.swf&amp;slideTiming=6&amp;repeatCount=0&amp;processOrder=forward&amp;shadowImageUrl=&amp;captionText=&amp;captionFont=Arial&amp;captionSize=12&amp;captionColor=0xFFFFFF&amp;captionAlignment=left&amp;captionPosition=bottom&amp;captionPadding=6,10&amp;captionBgOpacity=50&amp;captionBgColor=0x000000&amp;showProgress=0&amp;overlayEffectName=magic_field&amp;overlayImageUrl=&amp;overlayImageOpacity=75&amp;overlayImageX=100&amp;overlayImageY=100&amp;motionTiming=3&amp;motionEase=Sine&amp;moveRange=0&amp;scaleRange=0&amp;rotationRange=0&amp;transitionType=fade&amp;transitionTiming=2&amp;transitionEase=Sine&amp;enableLink=1&amp;linkUrl=&amp;linkOpen=_blank" wmode="opaque" quality="high" bgcolor="ffffff" name="imageshow" id="imageshow" style="" src="http://www.chanragoinem.com/modules/mod_jsn_imageshow_pro/jsn_imageshow_pro/loader.swf" type="application/x-shockwave-flash"></td>
  </tr>
  <tr>
    <td style="background: url(/images/body_bkg/header_bg.gif) repeat-x center center;height: 42px;">
      <ul id="headermenu" style="padding:0px;font-weight: bold;margin: 0px">
        <li><a href="#" style="background: url(/images/body_bkg/HomeIcon.gif) no-repeat 10px center;padding-left: 40px"><span style="color: red">TRANG CHỦ</span></a></li>
        <li><a href="/index1.php" style="background: url(/images/body_bkg/girl.png) no-repeat 5px center;padding-left: 35px">SẢN PHẨM</a></li>
        <li><a href="#" style="background: url(/images/body_bkg/contactIcon.gif) no-repeat 10px center;padding-left: 40px">LIÊN HỆ</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <td id="homesec">
      <table cellpadding="0" cellspacing="0" border="0" width="100%" style="background-color: transparent;">
        <tr>
          <td style="padding-left: 65px;background-color: transparent;">
            <div id="photos" class="galleryview">
              {foreach from=$product_list item=product key=key}
              <div class="panel">
                <img alt="{$product.product_name}" src="/product_thumb.php?f={$product.product_image}&w=480&h=auto&ma=390&cx=519&cy=465" />
                <div class="panel-overlay">
                  <div style="text-align: justify;width:97%;height:400px;background-color:white;padding:10px 10px">{$product.product_description}</div>
                </div>
              </div>
              {/foreach}
              <ul class="filmstrip">
                {foreach from=$product_list item=product key=key}
                <li><img alt="{$product.product_name}" src="/product_thumb.php?f={$product.product_image}&w=80&h=60" /></li>
                {/foreach}
              </ul>
            </div>
          </td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td style="background: url(/images/body_bkg/footer-left.gif) repeat-x scroll top center;height: 100px;" align="center">
    Copyright © 2010 Chăn - Ra - Gối - Nệm. Công ty TNHH Trang trí nội thất <b style="color:blue">{$company_name}</b><br />
    {$company_address}. Tel: <b style="color:red">{$company_bottom_fone1}</b> - DĐ: <b style="color:red">{$company_bottom_fone2}</b> - <b style="color:red">{$company_bottom_fone3}</b><br />
    </td>
  </tr>
</table>
</body>
</html>