<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en" xml:lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="robots" content="noindex" />
  <link rel="stylesheet" type="text/css" href="/styles/galleryview.css" />
  <script type="text/javascript" src="javascripts/jquery-1.4.2.js"></script>
  <script type="text/javascript" src="javascripts/jquery.easing.1.3.js"></script>
  <script type="text/javascript" src="javascripts/jquery.galleryview-1.1.js"></script>
  <script type="text/javascript" src="javascripts/jquery.timers-1.2.js"></script>
  {literal}
  <style type="text/css">
  body {
    background: #444;
    color: white;
  }
  a:link,a:visited {
    color: #ddd !important;
    text-decoration: underline;
  }
  a:hover {
    text-decoration: none;
  }
  h3 {
    border-bottom-color: white;
  }
  </style>
  <script type="text/javascript">
  $(document).ready(function(){
    $('#photos').galleryView({
      panel_width: 670,
      panel_height: 486,
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
    <img alt="{$product.product_name}" src="/product_thumb.php?f={$product.product_image}&w=640&h=auto&ma=480&cx=670&cy=486" />
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