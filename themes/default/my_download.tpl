<div class="row">
<!-- INCLUDE u_header.tpl -->
<div class="span9">
  <legend> {L_3500_1015430}</legend>
  <table class="table table-bordered table-striped table-condensed">
    <!-- BEGIN items -->
    <tr valign="top">
      <td colspan="6"> {L_458} <b><a href="{SITEURL}products/{items.SEO_TITLE}-{items.AUC_ID}" target="_blank">{items.TITLE}</a></b> (ID: <a href="{SITEURL}products/{items.SEO_TITLE}-{items.AUC_ID}" target="_blank">{items.AUC_ID}</a>) </td>
    </tr>
    <tr>
      <th width="30%"> {L_125} </th>
      <th width="20%"> {L_460} </th>
      <th class="hidden-phone" width="15%">
      <!-- IF items.B_DIGITAL_ITEM -->
      {L_350_10026}
	 <!-- ENDIF -->
	 </th>
      <th width="10%"> {L_755} </th>
    </tr>
    <tr valign="top">
      <td> {items.SELLNICK}<br />
        <small>{items.FB_LINK}</small> </td>
      <td><small><a href="mailto:{items.SELLEMAIL}">{items.SELLEMAIL}</a></small> </td>
      <td class="hidden-phone" align="center">

      	<!-- IF items.B_DIGITAL_ITEM_PAID -->
    	<a class="btn btn-primary" href="{SITEURL}my_downloads.php?diupload=3&fromfile={items.DIGITAL_ITEM}">{L_350_10177}</a>
    	<!-- ELSE -->
    	{L_3500_1015431}
    	<!-- ENDIF -->

      </td>

      <td>
        <!-- IF items.B_PAID -->
        {L_755}
        <!-- ELSE -->

        <form name="" method="post" action="{SITEURL}pay.php?a=10" id="fees">
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
