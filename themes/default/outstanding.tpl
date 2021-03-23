<div class="row">
<!-- INCLUDE u_header.tpl -->
<div class="span9">
<legend>{L_422}</legend>
<div class="row">
  <div class="span6 well"> {L_846}:{USER_BALANCE}<br />
    <br />
    <form name="" method="post" action="{SITEURL}pay.php?a=1" id="fees">
      <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
      <input type="text" name="pfval" value="{PAY_BALANCE}" size="7">
      <small><span class="muted">{CURRENCY} </span></small><br />
      <input type="submit" name="Pay" value="{L_3500_1015727}" class="btn btn-primary btn-small">&nbsp;&nbsp;
      <span><a class="btn" href="{SITEURL}invoices.php">{L_1057}</a></span>
    </form>
  </div>
</div>
<small><span class="muted">{L_5117}&nbsp;{PAGE}&nbsp;{L_5118}&nbsp;{PAGES}</span></small>
<table class="table table-bordered table-condensed table-striped">
  <tr style="background-color:{TBLHEADERCOLOUR}">
    <td style="width: 35%;">{L_018}</td>
    <td style="width: 15%;">{L_847}</td>
    <td style="width: 15%;">{L_319}</td>
    <td style="width: 15%;">{L_189}</td>
    <td>&nbsp;</td>
  </tr>
  <!-- BEGIN to_pay -->
  <tr>
    <td><!-- IF to_pay.B_NOTITLE -->
      {L_113} {to_pay.ID}
      <!-- ELSE -->
      <a href="{SITEURL}products/{to_pay.SEO_TITLE}-{to_pay.AUC_ID}">{to_pay.TITLE}</a>
      <!-- ENDIF -->
    </td>
    <td><small><!-- IF to_pay.B_DIGITAL_ITEM -->
    		{to_pay.BID}
    	<!-- ELSE -->
    		{to_pay.DIGITAL_ITEM_BID}
    	<!-- ENDIF -->
</small></td>
    <td><small><!-- IF to_pay.B_DIGITAL_ITEM -->
		{to_pay.SHIPPING} X 1 =<br>{to_pay.SHIPPING}
		<br><br><b>{L_350_1009}</b><br>{to_pay.ADDITIONAL_SHIPPING} X {to_pay.ADDITIONAL_SHIPPING_QUANTITYS} =<br>{to_pay.ADDITIONAL_SHIPPING_COST}
		<!-- ELSE -->
		{to_pay.DIGITAL_ITEM_SHIPPING}
  		<!-- ENDIF -->
	</small></td>
    <td>{to_pay.TOTAL}</td>
    <td style="text-align: center;">
    	<form name="" method="post" action="{SITEURL}{to_pay.PAY_LINK}" id="fees" style="margin:0">
        	<input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
    		<input type="hidden" name="pfval" value="{to_pay.ID}">
        	<input type="submit" name="Pay" value="{L_756}" class="pay btn btn-primary">
        </form>
	</td>
  </tr>
  <!-- END to_pay -->
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
