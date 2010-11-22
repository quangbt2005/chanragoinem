<table cellpadding="0" cellspacing="0" width="100%" class="l-menu-link">
  {foreach from=$cat_list item=cat}
  <tr><td style="padding: 4px 0px 4px {math equation="x*y+5" x=10 y=$cat.level}px;background-color: rgb(150,150,150);border-bottom: 1px solid #cccccc;"><a href="?cat_id={$cat.id}" onclick="" style="text-decoration: none;font-weight: bold;">{$cat.category_name}</a></td></tr>
  {/foreach}
</table>