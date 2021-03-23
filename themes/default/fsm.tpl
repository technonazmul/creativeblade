<script type="text/javascript"> 
$(document).ready(function() { 
    $("#processdel").submit(function() { 
        if (confirm('{L_30_0087a}')){ 
            return true; 
        } else { 
            return false; 
        } 
    }); 
}); 
</script> 
<div class="row">
<!-- INCLUDE u_header.tpl -->
<div class="span9">
<legend>{L_FSM6}</legend>
<form name="delfave" method="post" action="" id="processdel"> 
<input type="hidden" name="csrftoken" value="{_CSRFTOKEN}"> 
<table class="table table-bordered table-condense table-striped" align='center' cellspacing="1" cellpadding="4">
	<tr>
		<th width="30%">
			{L_125}
		</th>
		<th width="15%">
			{L_3500_1015525}
		</th>
		<th width="15%"> 
        {L_008} 
    </th> 
	</tr>
	<!-- BEGIN sellers -->
	<tr valign="top">
		<td>
			<a href='{SITEURL}profile.php?user_id={sellers.ID}'>{sellers.NICK}</a>&nbsp;(<a href='{SITEURL}feedback.php?id={sellers.ID}&faction=show'>{sellers.FB}</a>)
		</td>
		<td align="right">
			<a href='{SITEURL}active_auctions.php?user_id={sellers.ID}'>{L_3500_1015526}</a>
		</td>
		<td align="center"> 
            <input type="checkbox" name="O_delete[]" value="{sellers.ID}"> 
    	</td>
	</tr>
<!-- END sellers -->
<tr> 
        <td colspan="9" align="center"> 
            <input type="hidden" name="action" value="delfaveseller"> 
            <input type="submit" name="Submit" value="{L_631a}" class="btn btn-primary button"> 
        </td> 
    </tr> 
</table>
</form> 
<!-- INCLUDE user_menu_footer.tpl -->