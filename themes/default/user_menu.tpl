<!-- IF TMPMSG ne '' -->
<p style="background-color;#FF9933;display:block" > <b><span style="color:red;">{TMPMSG}</span></b> </p>
<!-- ENDIF -->
<div class="row">
<!-- INCLUDE u_header.tpl -->
  	<div class="span9">
    	<legend>{L_593}</legend>
    	<table class="table table-condensed table-striped table-bordered">
	    	{FBTOLEAVE}
	    	{NEWMESSAGES}
			{NO_REMINDERS}
	    	{TO_PAY}
			{BENDING_SOON}
	   		{BOUTBID}
	    	{SOLD_ITEM8}
 		</table>
    	<!-- IF B_CAN_SELL -->
    	<!-- ELSE -->
	    <form name="request" action="" method="post" enctype="multipart/form-data">
	        <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
	        <p>{L_25_0140}</p>
	     	<p><input type="submit" name="requesttoadmin" value="{L_25_0141}"  class="button"></p>
		</form>
    <!-- ENDIF -->


<!-- INCLUDE user_menu_footer.tpl -->
