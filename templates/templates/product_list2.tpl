<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
{literal}
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en" xml:lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="robots" content="noindex" />
  <link rel="stylesheet" type="text/css" href="/styles/galleryview.css" />
  <script type="text/javascript" src="javascripts/jquery-1.4.2.js"></script>
  <script type="text/javascript" src="javascripts/jquery.easing.1.3.js"></script>
  <script type="text/javascript" src="javascripts/jquery.galleryview-1.1.js"></script>
  <script type="text/javascript" src="javascripts/jquery.timers-1.2.js"></script>

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
      panel_width: 400,
      panel_height: 300,
      frame_width: 30,
      frame_height: 30,
      overlay_color: '#222',
      overlay_text_color: 'white',
      caption_text_color: '#222',
      background_color: 'transparent',
      border: 'none',
      nav_theme: 'light',
      easing: 'easeInOutQuad',
      pause_on_hover: true
    });
  });
  </script>

</head>
<body>
<!-- InstanceBeginEditable name="ContentRegion" -->
<h1>Photo Gallery - Dark Theme</h1>
<p>Here, we begin to override various default options. Setting <code>pause_on_hover</code> to <code>true</code> lets users freeze the slideshow while they read the content or overlay information of a panel. Changing the default navigation theme allows us to create an attractive gallery for a dark website. By using the<a href="http://plugins.jquery.com/project/Easing" target="_blank"> jQuery Easing</a> plugin, we can also define a new easing method for smoother filmstrip animation.</p>

<p>GalleryView  decides the best way to animate the filmstrip.
  When the gallery is wider than the filmstrip, the filmstrip remains stationary and the pointer slides from frame to frame.
  When the filmstrip is too long for the gallery, the pointer remains still and the filmstrip animates underneath it.</p>
<div id="photos" class="galleryview">
  <div class="panel">
     <img src="http://spaceforaname.com/img/gallery/01.jpg" />
    <div class="panel-overlay">
      <h2>Effet du soleil sur le paysage</h2>
      <p>Photo by <a href="http://www.sxc.hu/profile/tomharry" target="_blank">tomharry</a>.  View full-size photo <a href="http://www.sxc.hu/photo/158829" target="_blank">here</a>.</p>

    </div>
  </div>
  <div class="panel">
     <img src="http://spaceforaname.com/img/gallery/02.jpg" />
    <div class="panel-overlay">
      <h2>Eden</h2>
      <p>Photo by <a href="http://www.sxc.hu/profile/emsago" target="_blank">emsago</a>.  View full-size photo <a href="http://www.sxc.hu/photo/152865" target="_blank">here</a>.</p>

    </div>
  </div>
  <div class="panel">
     <img src="http://spaceforaname.com/img/gallery/03.jpg" />
    <div class="panel-overlay">
      <h2>Snail on the Corn</h2>
      <p>Photo by <a href="http://www.sxc.hu/profile/baines" target="_blank">baines</a>.  View full-size photo <a href="http://www.sxc.hu/photo/34453" target="_blank">here</a>.</p>

    </div>
  </div>
  <div class="panel">
     <img src="http://spaceforaname.com/img/gallery/04.jpg" />
    <div class="panel-overlay">
      <h2>Flowers</h2>
      <p>Photo by <a href="http://www.sxc.hu/profile/jazza" target="_blank">jazza</a>.  View full-size photo <a href="http://www.sxc.hu/photo/990169" target="_blank">here</a>.</p>

    </div>
  </div>
  <div class="panel">
     <img src="http://spaceforaname.com/img/gallery/06.jpg" />
    <div class="panel-overlay">
      <h2>Alone Beach 2B</h2>
      <p>Photo by <a href="http://www.sxc.hu/profile/sgursozlu" target="_blank">sgursozlu</a>.  View full-size photo <a href="http://www.sxc.hu/photo/738279" target="_blank">here</a>.</p>

    </div>
  </div>
{/literal}
  {* foreach from=$product_list item=product key=key}
  <div class="panel">
    <img alt="{$product.product_name}" src="/product_thumb.php?f={$product.product_image}&w=440&h=auto&ma=283&cx=460&cy=303" />
    <div class="panel-overlay">
      <h2>Effet du soleil sur le paysage</h2>
      <p>Photo by <a href="http://www.sxc.hu/profile/tomharry" target="_blank">tomharry</a>.  View full-size photo <a href="http://www.sxc.hu/photo/158829" target="_blank">here</a>.</p>
    </div>
  </div>
  {/foreach *}
{literal}
  <ul class="filmstrip">
    <li><img src="http://spaceforaname.com/img/gallery/frame3-01.jpg" alt="Effet du soleil" title="Effet du soleil" /></li>
    <li><img src="http://spaceforaname.com/img/gallery/frame3-02.jpg" alt="Eden" title="Eden" /></li>
    <li><img src="http://spaceforaname.com/img/gallery/frame3-03.jpg" alt="Snail on the Corn" title="Snail on the Corn" /></li>
    <li><img src="http://spaceforaname.com/img/gallery/frame3-04.jpg" alt="Flowers" title="Flowers" /></li>
    <li><img src="http://spaceforaname.com/img/gallery/frame3-06.jpg" alt="Alone Beach" title="Alone Beach" /></li>
{/literal}
    {* foreach from=$product_list item=product key=key}
    <li><img alt="{$product.product_name}" src="/product_thumb.php?f={$product.product_image}&w=30&h=30" /></li>
    {/foreach *}
{literal}
  </ul>
</div>
<h3>Function Call and Options</h3>
<pre>$('#photos').galleryView({
    panel_width: 800,
    panel_height: 300,
    frame_width: 30,
    frame_height: 30,
    overlay_color: '#222',
    overlay_text_color: 'white',
    caption_text_color: '#222',
    background_color: 'transparent',
    border: 'none',
    nav_theme: 'light',
    easing: 'easeInOutQuad',
    pause_on_hover: true
});</pre>
<!-- InstanceEndEditable -->
</body>
<!-- InstanceEnd --></html>
{/literal}