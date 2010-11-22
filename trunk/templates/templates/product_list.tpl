<table cellpadding="0" cellspacing="0" border="0" width="100%" style="border-bottom: 1px solid #cccccc;border-right: 1px solid #cccccc">
{foreach from=$rows item=row}
  <tr>
  {foreach from=$row item=product key=key}
  {if $product.id!=''}
  <td width="50%" valign="top" style="padding: 2px;border-top: 1px solid #cccccc;border-left: 1px solid #cccccc"><table cellpadding="0" cellspacing="0" border="0" width="100%">
    <tr>
      <td valign="top" style="width: 244px;height:184px"><img src="product_thumb.php?f={$product.product_image}&w=240&h=180"></td>
      <td valign="top">
        <table cellpadding="0" cellspacing="10" border="0" width="100%">
          <tr><td valign="top" align="left" style="border-bottom: 1px solid #cccccc;"><b>{$product.product_name}<b></td></tr>
          <tr><td valign="top" align="left" style="border-bottom: 1px solid #cccccc;"><b>Giá: <span style="color: green">{$product.product_price}</span>&nbsp;VND</b></td></tr>
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
</table>