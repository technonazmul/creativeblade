<script type="text/javascript">
$(document).ready(function() {
	var relist_fee = {RELIST_FEE};
	$("#processrelist").submit(function() {
		if (confirm('{L_30_0087}')){
			return true;
		} else {
			return false;
		}
	});
	$("#relistid").click(function(){
		if (this.is(':checked'))
			$("#to_pay").text(parseFloat($("#to_pay").text()) - relist_fee);
		else
			$("#to_pay").text(parseFloat($("#to_pay").text()) + relist_fee);
	});
});
</script>

<div class="row">
<!-- INCLUDE u_header.tpl -->
<div class="span9">
  <legend>{L_25_0119}</legend>
  <small><span class="muted">{L_5117}&nbsp;{PAGE}&nbsp;{L_5118}&nbsp;{PAGES}</span></small>
  <small><span style="float:right"><a class="btn btn-small btn-warning" href="selling.php"><i class="icon-user"></i> {L_3500_1015409}</a></span></small>
  <table class="table table-bordered table-condensed table-striped">
    <tr>
      <td width="40%"><a href="yourauctions_sold.php?solda_ord=title&solda_type={ORDERNEXT}">{L_624}</a>
        <!-- IF ORDERCOL eq 'title' -->
        <a href="yourauctions_sold.php?solda_ord=title&solda_type={ORDERNEXT}">{ORDERTYPEIMG}</a>
        <!-- ENDIF -->
      </td>
      <td width="10%"><a href="yourauctions_sold.php?solda_ord=starts&solda_type={ORDERNEXT}">{L_625}</a>
        <!-- IF ORDERCOL eq 'starts' -->
        <a href="yourauctions_sold.php?solda_ord=starts&solda_type={ORDERNEXT}">{ORDERTYPEIMG}</a>
        <!-- ENDIF -->
      </td>
      <td  class="hidden-phone"  width="10%"><a href="yourauctions_sold.php?solda_ord=ends&solda_type={ORDERNEXT}">{L_626}</a>
        <!-- IF ORDERCOL eq 'ends' -->
        <a href="yourauctions_sold.php?solda_ord=ends&solda_type={ORDERNEXT}">{ORDERTYPEIMG}</a>
        <!-- ENDIF -->
      </td>
      <td  class="hidden-phone"  width="10%" align="center"><a href="yourauctions_sold.php?solda_ord=num_bids&solda_type={ORDERNEXT}">{L_627}</a>
        <!-- IF ORDERCOL eq 'num_bids' -->
        <a href="yourauctions_sold.php?solda_ord=num_bids&solda_type={ORDERNEXT}">{ORDERTYPEIMG}</a>
        <!-- ENDIF -->
      </td>
      <td  width="10%" align="center"><a href="yourauctions_sold.php?solda_ord=current_bid&solda_type={ORDERNEXT}">{L_628}</a>
        <!-- IF ORDERCOL eq 'current_bid' -->
        <a href="yourauctions_sold.php?solda_ord=current_bid&solda_type={ORDERNEXT}">{ORDERTYPEIMG}</a>
        <!-- ENDIF -->
      </td>
      <td width="10%">&nbsp;</td>
    </tr>
    <!-- BEGIN items -->
    <tr>
      <td width="40%"><a href="{SITEURL}products/{items.SEO_TITLE}-{items.ID}">{items.TITLE}</a><br />
        {items.ITEM_SOLD}{items.NO_PAYMENT}{items.PAID}
        <br><a class="btn btn-small btn-warning" href="selling.php?id={items.ID}"><i class="icon-user"></i> {L_900}</a>
      </td>
      <td width="10%"> {items.STARTS} </td>
      <td  class="hidden-phone"  width="10%"> {items.ENDS} </td>
      <td   class="hidden-phone" width="10%" align="center"> {items.BIDS} </td>
      <td align="center">
      <!-- IF items.B_HASNOBIDS -->
        -
        <!-- ELSE -->
        {items.BID}
        <!-- ENDIF -->
      </td>
      <td width="10%" align="center"><!-- IF items.B_CLOSED -->
        <a href="sellsimilar.php?id={items.ID}">{L_2__0050}</a>
        <!-- ELSE -->
        -
        <!-- ENDIF -->
      </td>
    </tr>
    <!-- END items -->
  </table>
  <div class="pagination pagination-centered">
    <ul>
      {PREV}
      <!-- BEGIN pages -->
      {pages.PAGE}
      <!-- END pages -->
      {NEXT}
    </ul>
  </div>
<!-- INCLUDE user_menu_footer.tpl -->
