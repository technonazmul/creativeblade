<div class="row">
<!-- INCLUDE u_header.tpl -->
<div class="span9">
<table class="table table-bordered table-condensed table-striped" width="100%" cellspacing="3" cellpadding="4">
<tr style="background-color:{TBLHEADERCOLOUR}">
	<th style="width: 24%; text-align: center;" class="titTable7">{L_1041}</th>
	<th style="width: 40%; text-align: center;" class="titTable7">{L_25_0012}</th>
	<th style="width: 10%; text-align: center;" class="titTable7">{L_1053}</th>
	<th style="width: 10%; text-align: center;" class="titTable7">{L_560}</th>
</tr>
<!-- BEGIN topay -->
<tr>
	<td style="text-align: center;">
		<span>{L_1041}: {topay.INVOICE}</span>
		<p style="text-align: center;">{topay.DATE}</p>
	</td>
	<td>{topay.INFO}</td>
	<td style="text-align: center;">{topay.TOTAL}</td>
	<td style="text-align: center;">
		<!-- IF topay.PAID -->{L_898}<br><!-- ENDIF --><a href="{SITEURL}order_print.php?id={topay.INVOICE}">{L_1058}</a>
	</td>
</tr>
<!-- END topay -->
</table> 

<br /><br />
<div class="pagination pagination-centered">
	<ul>
		<li>{L_5117}&nbsp;{PAGE}&nbsp;{L_5118}&nbsp;{PAGES}</li>
    	<li>{PREV}</li>
    <!-- BEGIN pages -->
		{pages.PAGE}&nbsp;&nbsp;
	<!-- END pages -->
        <li>{NEXT}</li>
	</ul>
</div>
</div></div>
<!-- INCLUDE user_menu_footer.tpl -->