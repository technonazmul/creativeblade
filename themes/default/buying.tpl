<div class="row">
<!-- INCLUDE u_header.tpl -->
<div class="span9">
  	<legend> {L_454}</legend>
  	<table class="table table-bordered table-striped table-condensed">
    	<tr>
      		<th width="43%"> {L_125} </th>
      		<th class="hidden-phone"  width="15%"> {L_461} </th>
      		<th class="hidden-phone"> {L_284} </th>
      		<th> {L_column_shipping} </th>
      		<th width="15%"> {L_189} </th>
      		<th class="hidden-phone" width="15%">{L_350_10018} </th>
      		<th width="10%"> {L_560} </th>
    	</tr>
    	<!-- BEGIN items -->
    	<tr>
    		<td colspan="7">{L_458} <b><a href="{SITEURL}products/{items.SEO_TITLE}-{items.AUC_ID}" target="_blank">{items.TITLE}</a></b> (ID: <a href="{SITEURL}products/{items.SEO_TITLE}-{items.AUC_ID}" target="_blank">{items.AUC_ID}</a> - {L_25_0121}: {items.ENDS})</td>
    	</tr>
    	<tr valign="top">
      		<td>{L_125}: {items.SELLNICK}<br>
      		<!-- IF items.FB_LINK -->
        		<a class="btn btn-success btn-small" href="{SITEURL}feedback.php?auction_id={items.AUC_ID}&wid={items.BUYER_ID}&sid={items.SELLID}">{L_207}</a>
      		<!-- ENDIF -->
      		<br>{L_460}: <small><a href="mailto:{items.SELLEMAIL}">{items.SELLEMAIL}</a></small>
      		</td>
      		<td class="hidden-phone" align="right"> {items.FBID} </td>
      		<td class="hidden-phone" align="center"> {items.QTY} </td>
      		<td>{items.SHIPPINGCOST}</td>
      		<td align="right"> {items.TOTAL} </td>
      		<td class="hidden-phone" align="center">
        	<!-- IF items.B_DIGITAL_ITEM -->
      			<!-- IF items.B_PAID -->
    			<a class="btn btn-primary" href="{SITEURL}my_downloads.php?diupload=3&fromfile={items.DIGITAL_ITEMS}">{L_350_10177}</a>
    			<!-- ELSE -->
    			{L_350_10024}
    			<!-- ENDIF -->
       		<!-- ELSE -->
    			<!-- IF items.B_SHIPPED_0 -->
		    	<img src="{SITEURL}images/Box-Empty.png" border="0"><br>
				<!-- ENDIF -->
				<!-- IF items.B_SHIPPED_1 -->
		    	<img src="{SITEURL}images/Shipped.png" border="0"><br>
		    		<form name="shipped" action="" method="post" enctype="multipart/form-data" id="process_shipped_{a.COUNTER}">
						<input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
						<input type="hidden" name="update" value="shipped">
						<input type="hidden" name="shipped" value="{items.ID}">
						<input type="submit" class="btn btn-small btn-primary" value="{L_350_10021}">
					</form>
				<!-- ENDIF -->
				<!-- IF items.B_SHIPPED_2 -->
		    	<img src="{SITEURL}images/delivery.png" border="0"><br>{L_350_10022}
				<!-- ENDIF --> 
	   		<!-- ENDIF -->
      		</td>
      		<td>
        		<!-- IF items.B_PAID -->
        		<span style="color:green"><b>{L_755}</b></span>
        		<!-- ELSE -->
		        <form name="" method="post" action="{SITEURL}{items.PAY_LINK}" id="fees">
		          <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
		          <input type="hidden" name="pfval" value="{items.ID}">
		          <input type="submit" name="Pay" value="{L_756}" class="pay btn btn-primary">
		        </form>
        		<!-- ENDIF -->
      		</td>
    	</tr>
    <!-- END items -->
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
