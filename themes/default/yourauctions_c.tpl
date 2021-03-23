<div class="row">
<!-- INCLUDE u_header.tpl -->
<script type="text/javascript">
$(document).ready(function() {
	
	var relist_fee = {RELIST_FEE_NO};
	
	$("#sellall").click(function() {
		var checked_status = this.checked;
        $("input[id=sellitem]").each(function()
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
	
	$("#relistall").click(function() {
		var checked_status = this.checked;
        $("input[class=relistid]").each(function()
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
		$("input[id=deleteitem]").each(function()
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
		} else {
			return false;
		}
	});

	$(".relistid").click(function(){
		var n = $(".relistid:checked").length;
		$("#to_pay").text(parseFloat(n * relist_fee));
	});
});
</script>


<div class="span9">
  <legend>{L_204}</legend>
  <form name="closed" method="post" action="" id="processdel">
    <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
    <!-- IF B_RELIST_FEE -->
    {L_437}: {RELIST_FEE} - {L_189}: <span id="to_pay">0.00</span>
    <!-- ENDIF -->
    <small><span class="muted">{L_5117}&nbsp;{PAGE}&nbsp;{L_5118}&nbsp;{PAGES}</span></small>
    <table class="table table-bordered table-condense table-striped">
      <tr>
        <td  width="40%"><small><a href="yourauctions_c.php?ca_ord=title&ca_type={ORDERNEXT}">{L_624}</a></small>
          <!-- IF ORDERCOL eq 'title' -->
          <a href="yourauctions_c.php?ca_ord=title&ca_type={ORDERNEXT}">{ORDERTYPEIMG}</a>
          <!-- ENDIF -->
        </td>
        <td  width="10%"><small><a href="yourauctions_c.php?ca_ord=starts&ca_type={ORDERNEXT}">{L_625}</a></small>
          <!-- IF ORDERCOL eq 'starts' -->
          <small><a href="yourauctions_c.php?ca_ord=starts&ca_type={ORDERNEXT}">{ORDERTYPEIMG}</a></small>
          <!-- ENDIF -->
        </td>
        <td class="hidden-phone"  width="10%"><small><a href="yourauctions_c.php?ca_ord=ends&ca_type={ORDERNEXT}">{L_626}</a></small>
          <!-- IF ORDERCOL eq 'ends' -->
          <a href="yourauctions_c.php?ca_ord=ends&ca_type={ORDERNEXT}">{ORDERTYPEIMG}</a>
          <!-- ENDIF -->
        </td>
        <td  width="10%" align="center"><small><a href="yourauctions_c.php?ca_ord=num_bids&ca_type={ORDERNEXT}">{L_627}</a></small>
          <!-- IF ORDERCOL eq 'num_bids' -->
          <a href="yourauctions_c.php?ca_ord=num_bids&ca_type={ORDERNEXT}">{ORDERTYPEIMG}</a>
          <!-- ENDIF -->
        </td>
        <td class="hidden-phone"  width="11%" align="center"><small><a href="yourauctions_c.php?ca_ord=current_bid&ca_type={ORDERNEXT}">{L_628}</a></small>
          <!-- IF ORDERCOL eq 'current_bid' -->
          <a href="yourauctions_c.php?ca_ord=current_bid&ca_type={ORDERNEXT}">{ORDERTYPEIMG}</a>
          <!-- ENDIF -->
        </td>
        <td  width="10%" align="center"><small>{L_630}</small> </td>
        <td  width="10%" align="center"><small>{L_25_0209}</small> </td>
        <td  width="9%" align="center" bgcolor=><small>{L_008}</small> </td>
      </tr>
      
      <!-- BEGIN items -->
      <tr>
        <td width="40%"><a href="{SITEURL}products/{items.SEO_TITLE}-{items.ID}">{items.TITLE}</a> </td>
        <td width="10%"><small>{items.STARTS}</small> </td>
        <td class="hidden-phone" width="10%"><small>{items.ENDS}</small> </td>
        <td class="hidden-phone" width="10%"  align="center"><small>{items.BIDS}</small> </td>
        <td width="11%"  align="center"><small>{items.BID}</small> </td>
        <td width="10%"  align="center"><!-- IF items.B_CANRELIST and B_AUTORELIST -->
          <input type="checkbox" name="relist[]" value="{items.ID}" class="relistid">
          <!-- ELSE -->
          <!-- IF items.B_CANRELIST -->
          <a href="sellsimilar.php?id={items.ID}&relist=1">{L_2__0051}</a>
          <!-- ELSE -->
          <a href="sellsimilar.php?id={items.ID}">{L_2__0050}</a>
          <!-- ENDIF -->
          <!-- ENDIF -->
        </td>
        <td width="10%"  align="center"><!-- IF items.B_CANSSELL -->
          <input type="checkbox" name="sell[]" value="{items.ID}" id="sellitem">
          <!-- ENDIF -->
        </td>
        <td width="9%"  align="center"><!-- IF items.B_HASNOBIDS -->
          <input type="checkbox" name="delete[]" value="{items.ID}" id="deleteitem">
          <!-- ENDIF -->
        </td>
      </tr>
      <!-- END items -->
      
      <tr class="hidden-phone">
        <td  colspan="5" style="text-align:right"><span class="muted"><small>{L_30_0102}</small></span></td>
        <td align="center"><input type="checkbox" id="relistall"></td>
        <td align="center"><input type="checkbox" id="sellall"></td>
        <td align="center"><input type="checkbox" id="deleteall"></td>
      </tr>
      <tr>
        <td colspan="10" style="text-align:center"><input type="hidden" name="action" value="update">
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
