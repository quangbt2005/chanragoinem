<table cellpadding="0" cellspacing="0" border="0" width="100%" style="border-bottom: 1px solid #cccccc;border-right: 1px solid #cccccc">
<tr><td colspan="2" style="background: url(/images/body_bkg/rokmininews-header.png) repeat-x center center;padding: 8px 10px;border-top:1px solid #cccccc;border-left:1px solid #cccccc;text-transform: uppercase;font-weight: bold;color: green;font-family: tohoma;font-size: 20px">{$select_cat_obj.category_name}</td></tr>
{if $product_count > 0}
{foreach from=$rows item=row}
  <tr>
  {foreach from=$row item=product key=key}
  {if $product.id!=''}
  <td width="50%" valign="top" style="padding: 2px;border-top: 1px solid #cccccc;border-left: 1px solid #cccccc"><table cellpadding="0" cellspacing="0" border="0" width="100%">
    <tr>
      <td valign="top" style="width: 244px;height:184px"><a class="gallery" href="/product_thumb.php?f={$product.product_image}&w=640&h=auto&ma=480&cx=650&cy=490" description="<span style='color: blue;font-weight: bold;font-size: 15px;'>{$product.product_name}</span><br />{$product.product_description}<br /><span style='color:green'>{number_format number=$product.product_price}&nbsp;VND</span>"><img src="product_thumb.php?f={$product.product_image}&w=240&h=180"></a></td>
      <td valign="top">
        <table cellpadding="0" cellspacing="10" border="0" width="100%">
          <tr><td valign="top" align="left" style="border-bottom: 1px solid #cccccc;"><b>{$product.product_name}<b></td></tr>
          <tr><td valign="top" align="left" style="border-bottom: 1px solid #cccccc;"><b>Giá: <span style="color: green">{number_format number=$product.product_price}</span>&nbsp;VND</b></td></tr>
        </table>
      </td>
    </tr>
  </table></td>
  {else}
  <td style="padding: 2px;border-top: 1px solid #cccccc;border-left: 1px solid #cccccc">&nbsp;</td>
  {/if}
  {/foreach}
  </tr>
{/foreach}
{else}
<tr>
  <td align="center" style="padding: 100px 0px;border-left:1px solid #cccccc;font-weight: bold;font-size: 20px">KHÔNG CÓ SẢN PHẨM NÀO</td>
</tr>
{/if}
</table>