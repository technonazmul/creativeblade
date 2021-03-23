<script type="text/javascript">
$(document).ready(function() {
	$("#closeall").click(function() {
		var checked_status = this.checked;
        $("input[id=close]").each(function()
        { 
        	this.checked = checked_status;
        	if($(this).is(':checked'))
        	{
        		$(this).attr('checked',true)
        	}
        	else
        	{
            	$(this).attr('checked',false)
            }
        });	
	});
	
	$("#deleteall").click(function() {
		var checked_status = this.checked;
        $("input[id=delete]").each(function()
        { 
        	this.checked = checked_status;
        	if($(this).is(':checked'))
        	{
        		$(this).attr('checked',true)
        	}
        	else
        	{
            	$(this).attr('checked',false)
            }
        });	
	});

	$("#processdel").submit(function() {
		if (confirm('{L_30_0087}')){
			return true;
		} 
		else 
		{
			return false;
		}
	});
});
</script>
<div class="row">
<!-- INCLUDE u_header.tpl -->
<div class="span9">
  <legend>{L_203}</legend>
  <form name="auctions" method="post" action="" id="processdel">
    <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
    <small><span class="muted">{L_5117}&nbsp;{PAGE}&nbsp;{L_5118}&nbsp;{PAGES}</span></small>
    <table class="table table-bordered table-condensed table-striped">
      <tr>
        <td  width="32%"><a href="yourauctions.php?oa_ord=title&oa_type={ORDERNEXT}"><small>{L_624}</small></a>
          <!-- IF ORDERCOL eq 'title' -->
          <a href="yourauctions.php?oa_ord=title&oa_type={ORDERNEXT}"><small>{ORDERTYPEIMG}</small></a>
          <!-- ENDIF -->
        </td>
        <td class="hidden-phone"  width="11%"><a href="yourauctions.php?oa_ord=starts&oa_type={ORDERNEXT}"><small>{L_625}</small></a>
          <!-- IF ORDERCOL eq 'starts' -->
          <a href="yourauctions.php?oa_ord=starts&oa_type={ORDERNEXT}"><small>{ORDERTYPEIMG}</small></a>
          <!-- ENDIF -->
        </td>
        <td  width="11%"><a href="yourauctions.php?oa_ord=ends&oa_type={ORDERNEXT}"><small>{L_626}</small></a>
          <!-- IF ORDERCOL eq 'ends' -->
          <a href="yourauctions.php?oa_ord=ends&oa_type={ORDERNEXT}"><small>{ORDERTYPEIMG}</small></a>
          <!-- ENDIF -->
        </td>
        <td class="hidden-phone"  align="center" nowrap="nowrap"><small>{L__0153}</small> </td>
        <td class="hidden-phone" width="7%" align="center"><a href="yourauctions.php?oa_ord=num_bids&oa_type={ORDERNEXT}"><small>{L_627}</small></a>
          <!-- IF ORDERCOL eq 'num_bids' -->
          <a href="yourauctions.php?oa_ord=num_bids&oa_type={ORDERNEXT}"><small>{ORDERTYPEIMG}</small></a>
          <!-- ENDIF -->
        </td>
        <td width="10%" align="center"><a href="yourauctions.php?oa_ord=current_bid&oa_type={ORDERNEXT}"><small>{L_628}</small></a>
          <!-- IF ORDERCOL eq 'current_bid' -->
          <a href="yourauctions.php?oa_ord=current_bid&oa_type={ORDERNEXT}"><small>{ORDERTYPEIMG}</small></a>
          <!-- ENDIF -->
        </td>
        <td  width="6%" align="center"><small>{L_298}</small> </td>
        <td  width="8%" align="center"><small>{L_008}</small> </td>
        <td  width="6%" align="center" bgcolor="#FFFF00"><small>{L_2__0048}</small> </td>
      </tr>
      <!-- IF B_AREITEMS -->
      <!-- BEGIN items -->
      <tr>
        <td width="32%"><a href="{SITEURL}products/{items.SEO_TITLE}-{items.ID}">{items.TITLE}</a> <br>
          <small>{L_30_0081}{items.COUNTER}{L__0151}</small></td>
        <td class="hidden-phone" width="11%"><small>{items.STARTS}</small> </td>
        <td width="11%"><small>{items.ENDS}</small> </td>
        <td class="hidden-phone" width="9%"  align="center"><small>
          <!-- IF items.RELISTED eq 0 -->
          --
          <!-- ELSE -->
          {items.RELISTED}
          <!-- ENDIF -->
        </small></td>
        <td class="hidden-phone" width="7%"  align="center"><small>{items.BIDS}</small> </td>
        <td width="10%"  align="center"><!-- IF items.B_HASNOBIDS -->
          -
          <!-- ELSE -->
          {items.BID}
          <!-- ENDIF -->
          </td>
        <td width="6%"  align="center"><!-- IF items.B_HASNOBIDS -->
          <a href="edit_active_auction.php?id={items.ID}"><img src="images/edititem.gif" width="13" height="17" alt="{L_512}" border="0"></a>
          <!-- ENDIF -->
        </td>
        <td width="8%"  align="center"><!-- IF items.B_HASNOBIDS -->
          <input type="checkbox" name="O_delete[]" value="{items.ID}" id="delete">
          <!-- ENDIF -->
        </td>
        <td width="6%"  align="center" ><input type="checkbox" name="closenow[]" value="{items.ID}" id="close">
        </td>
      </tr>
      <!-- END items -->
      <!-- ENDIF -->
      <tr class="hidden-phone">
        <td colspan="7" align="right" style="text-align:right; margin-right:10px"><small><span class="muted">{L_30_0102}</span></small></td>
        <td align="center"><input type="checkbox" id="deleteall"></td>
        <td align="center"><input type="checkbox" id="closeall"></td>
      </tr>
      <tr>
        <td colspan="9" style="text-align:center"><input type="hidden" name="action" value="delopenauctions">
          <input type="submit" name="Submit" value="{L_631}" class="btn btn-primary">
        </td>
      </tr>
    </table>
  </form>
  <div class="pagination pagination-centered">
    <ul>
      <li>{PREV}</li>
      <!-- BEGIN pages -->
      <li>{pages.PAGE}</li>
      <!-- END pages -->
      <li>{NEXT}</li>
    </ul>
  </div>
<!-- INCLUDE user_menu_footer.tpl -->
