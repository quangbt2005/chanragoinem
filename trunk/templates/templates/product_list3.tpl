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
      panel_height: 400,
      intro_width: 350,
      intro_padding: 30,
      frame_width: 80,
      frame_height: 60,
      overlay_color: 'cyan',
      overlay_text_color: 'white',
      caption_text_color: '#222',
      background_color: 'transparent',
      border: 'none',
      /*nav_theme: 'light',*/
      easing: 'easeInOutQuad',
      pause_on_hover: true
    });
  });
  </script>
  {/literal}
</head>
<body>
<div id="photos" class="galleryview">
  {foreach from=$product_list item=product key=key}
  <div class="panel">
    <img alt="{$product.product_name}" src="/product_thumb.php?f={$product.product_image}&w=520&h=auto&ma=390&cx=550&cy=400" />
    <div class="panel-overlay">
      {$product.product_description}
    </div>
  </div>
  {/foreach}
  <ul class="filmstrip">
    {foreach from=$product_list item=product key=key}
    <li><img alt="{$product.product_name}" src="/product_thumb.php?f={$product.product_image}&w=80&h=60" /></li>
    {/foreach}
  </ul>
</div>
</body>
</html>