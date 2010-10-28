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
</head>
<body>
<table cellpadding="0" cellspacing="3" border="1" width="100%">
{foreach from=$rows item=row}
	<tr>
	{foreach from=$row item=product key=key}
	{if $product.id!=''}
	<td width="50%" valign="top"><table cellpadding="0" cellspacing="0" border="0" width="100%">
		<tr>
			<td valign="top"><img src="product_thumb.php?f={$product.product_image}&w=240&h=180"></td>
			<td valign="top">
				<table cellpadding="0" cellspacing="0" border="0" width="100%">
					<tr><td valign="top">{$product.product_name}</td></tr>
					<tr><td valign="top">{$product.product_price}</td></tr>
				</table>
			</td>
		</tr>
	</table></td>
	{else}
	<td>&nbsp;</td>
	{/if}
	{/foreach}
	</tr>
{/foreach}
</table>
</body>
</html>