<!-- IF ERROR ne '' -->

<div class="alert alert-warning"> {ERROR} </div>
<!-- ENDIF -->
<!-- IF B_NOTBOUGHT -->
<form action="{ASSLURL}buy_now.php?id={ID}" method="post">
  <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
  <!-- ENDIF -->
  <div class="row">
  <div class="span8 offset2 well">
  <legend> {TITLE} </legend>
  {L_017}: {TITLE}<br />
  <br />
  {L_125}: {SELLER} {SELLERNUMFBS} {FBICON}<br />
  <br />
  {L_497}:<!-- IF B_DIGITAL_ITEM -->{BN_PRICE}<!-- ELSE -->{DIGITAL_ITEM_TOTAL}<!-- ENDIF --><br />
  <br />
  <!-- IF ERROR ne '' -->
  <div class="alert alert-warning">{ERROR}</div>
  <!-- ENDIF -->
  <!-- IF B_NOTBOUGHT -->
  {L_284}:
  <!-- IF B_QTY -->
  <input type="text" name="qty" size="15" maxlength="15">
  {LEFT} {L_5408}
  <!-- ELSE -->
  <input type="hidden" name="qty" value="1"> 1
  <!-- ENDIF -->
  <!-- IF B_SHIPPING -->
  {L_column_shipping}: {SHIPPING}
  <!-- ENDIF -->
  <br />
  {L_003}: {YOURUSERNAME}
  <!-- IF B_USERAUTH -->
  <label>{L_004}</label>
  <input type="password" name="password" size="15" maxlength="65">
  <!-- ENDIF -->
  <div class="form-actions">
    <input type="hidden" name="action" value="buy">
    <input type="submit" name="" <!-- IF B_FREEITEMS -->value="{L_3500_1015747}"<!-- ELSE -->value="{L_496}"<!-- ENDIF --> class="btn btn-primary">
  </div>
</form>
<!-- ELSE -->
	<!-- IF B_FREEITEM -->
		<!-- IF B_DIGITAL_ITEM_TOTAL -->
			<a class="btn btn-primary" href="{SITEURL}my_downloads.php">{L_3500_1015750}</a>
		<!-- ELSE -->
			<a href="{SITEURL}buying.php">{L_3500_1015749}</a>
		<!-- ENDIF -->
	<!-- ELSE -->
		<div class="form-actions">
		  <form name="" method="post" action="{SITEURL}{PAY_LINK}" id="fees">
		    <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
		    <input type="hidden" name="pfval" value="{WINID}">
		    <input type="submit" name="Pay" value="{L_756}" class="btn btn-primary">
		  </form>
		</div>
	<!-- ENDIF -->
<!-- ENDIF -->
