<div class="row">
<!-- INCLUDE u_header.tpl -->
<div class="span9">
<legend> {L_453}</legend>
<table class="table table-bordered table-striped table-condensed table-hover">
  <tr>
    <th> {L_458} </th>
    <th> {L_455} </th>
    <th> {L_457} </th>
    <th  class="hidden-phone" > {L_284} </th>
    <th> {L_350_10018} </th>
    <th>&nbsp;</th>
  </tr>
  <!-- BEGIN a -->
  <script type="text/javascript">
	$(document).ready(function() {
		$("#process_paid_{a.COUNTER}").submit(function() {
			if (confirm('{a.MARK_PAID_MSG}')){
				return true;
			} 
			else 
			{
				return false;
			}
		});
		$("#process_shipped_{a.COUNTER}").submit(function() {
			if (confirm('{a.MARK_SHIPPED_MSG}')){
				return true;
			} 
			else 
			{
				return false;
			}
		});
	});
  </script>
  <tr valign="top" {a.BGCOLOUR}>
    <td width="20%"><a href="{SITEURL}products/{a.SEO_TITLE}-{a.AUCTIONID}" target="_blank">{a.TITLE}</a><br />
      <span class="muted"><small>(ID: <a href="{SITEURL}products/{a.SEO_TITLE}-{a.AUCTIONID}" target="_blank">{a.AUCTIONID}</a> - {L_25_0121} {a.ENDS})</small></span> </td>
    <td width="33%"><small><a href="{SITEURL}profile.php?user_id={a.WINNERID}">{a.NICK}</a></small> 
	    <!-- IF a.B_FB -->
	    <br><a class="btn btn-small btn-success" href="{SITEURL}feedback.php?auction_id={a.AUCTIONID}&wid={a.WINNERID}&sid={a.SELLERID}&ws=s">{L_207}</a>
	    <!-- ENDIF -->
    </td>
    <td width="17%" align="right"> 
	 	{a.BIDF} 
 	</td>
    <td  class="hidden-phone"  width="10%"> 
	 	{a.QTY}
	 </td>
	 <td  class="hidden-phone" align="center" width="10%"> 
	    <!-- IF a.B_DIGITAL_ITEM -->
	    <a class="btn btn-primary" href="{SITEURL}my_downloads.php?diupload=3&fromfile={a.DIGITAL_ITEM}">{L_350_10177}</a>
	    <!-- ELSE -->
		    <!-- IF a.B_SHIPPED_0 -->
		    	<img src="{SITEURL}images/Box-Empty.png" border="0"><br>
		    		<form name="shipped" action="" method="post" enctype="multipart/form-data" id="process_shipped_{a.COUNTER}">
						<input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
						<input type="hidden" name="update" value="shipped">
						<input type="hidden" name="shipped" value="{a.ID}">
						<input type="hidden" name="user_id" value="{SELLER_ID}">
						<input type="submit" class="btn btn-small btn-primary" value="{L_350_10019}">
					</form>
			<!-- ENDIF -->
			<!-- IF a.B_SHIPPED_1 -->
		    	<img src="{SITEURL}images/Shipped.png" border="0"><br>{L_350_10017}
			<!-- ENDIF -->
			<!-- IF a.B_SHIPPED_2 -->
		    	<img src="{SITEURL}images/delivery.png" border="0"><br>{L_350_10022}
			<!-- ENDIF -->
		<!-- ENDIF -->
	</td>
    <td width="10%" nowrap="nowrap">
    <!-- IF a.B_PAID -->
      <span class="label label-success">{L_898}</span><br><br>
      <!-- ELSE -->
      		<form name="paid" action="" method="post" enctype="multipart/form-data" id="process_paid_{a.COUNTER}">
				<input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
				<input type="hidden" name="update" value="paid">
				<input type="hidden" name="db_id" value="{a.ID}">
				<input type="hidden" name="user_id" value="{SELLER_ID}">
				<!-- IF a.B_DIGITAL_ITEM -->
				<input type="hidden" name="item" value="{a.DIGITAL_ITEM}">
				<!-- ENDIF -->
				<input type="submit" class="btn btn-success" value="{L_899}">
			</form><br><br>
      <!-- ENDIF -->
		<form name="" method="post" action="{SITEURL}order_packingslip.php" id="fees" enctype="multipart/form-data" target="_blank">
			<input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
			<input type="hidden" name="pfval" value="{a.AUCTIONID}">
			<input type="hidden" name="pfwon" value="{a.ID}">
			<input type="hidden" name="user_id" value="{SELLER_ID}">
			<input class="btn btn-info" type="submit" value="Print Packingslip">
		</form>
    </td>
  </tr>
  <!-- END a -->
  <!-- IF NUM_WINNERS eq 0 -->
  <tr>
    <td colspan="5"> {L_198} </td>
  </tr>
  <!-- ENDIF -->
</table>
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
