<table cellpadding="0" cellspacing="0" width="100%" class="l-menu-link">
  {foreach from=$cat_list item=cat}
  <tr><td style="padding: 4px 0px 4px {math equation="x*y+5" x=12 y=$cat.level}px;background-color: rgb(150,150,150);border-bottom: 1px solid #cccccc;">
    {if $cat.id != $select_cat_obj.id}
    <a href="?cat_id={$cat.id}" onclick="" style="text-decoration: none;font-weight: bold;background: url(/images/body_bkg/lastpost.gif) no-repeat left center;padding: 8px 0px 8px 15px">{$cat.category_name}</a>
    {else}
    <a href="?cat_id={$cat.id}" onclick="" style="text-decoration: none;font-weight: bold;background: url(/images/body_bkg/lastpost2.gif) no-repeat left center;padding: 8px 0px 8px 15px;color: red">{$cat.category_name}</a>
    {/if}
  </td></tr>
  {/foreach}
</table>