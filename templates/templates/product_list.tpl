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