<table cellpadding="0" cellspacing="0" width="100%">
  {foreach from=$cat_list item=cat}
  <tr><td style="padding-left: {math equation="x*y" x=10 y=$cat.level}px;"><a href="?cat_id={$cat.id}" onclick="">{$cat.category_name}</a></td></tr>
  {/foreach}
</table>