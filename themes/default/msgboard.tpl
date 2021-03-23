<div class="row">
	<!-- INCLUDE u_header.tpl -->
		<div class="span9">
    	<legend> {L_5030}: {BOARD_NAME}</legend>
    		<div class="well" align="center">
        			<form name="messageboard" action="" method="post">
              		<input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
              		<input type="hidden" name="action" value="insertmessage">
              		<input type="hidden" name="board_id" value="{BOARD_ID}">
              		<!-- IF B_LOGGED_IN eq false -->
              		<p class="errfont">{L_5056}</p>
              		<!-- ENDIF -->
              		<textarea name="newmessage" rows="6" style="width: 97%"></textarea>
              		<br>
              		<input type="submit" class="btn btn-primary" name="Submit" value="{L_5057}">
              		<a class="btn btn-info" href="{SITEURL}boards.php">{L_5058}</a>
            	</form>
      		</div>
      <br>
      <table align="center" class="table table-bordered table-condensed table-striped" cellspacing="0" cellpadding="2">
        <tr>
          <td colspan=2 valign="top" class="titTable4" bgcolor="#eeeeee"> {L_5059} </td>
        </tr>
        <!-- BEGIN msgs -->
        <tr>
          <td align="left" valign="top" width="100%"> {msgs.MSG} </td>
          <td valign="top" align="right" nowrap="nowrap">
          <!-- IF msgs.USERNAME ne '' -->
            {L_5060} <b>{msgs.USERNAME}</b> - {msgs.POSTED}
            <!-- ELSE -->
            {L_5060} <b>{L_5061}</b> - {msgs.POSTED}
            <!-- ENDIF -->
          </td>
        </tr>
        <!-- END msgs -->
      </table>
      <div align="center" class="padding centre"> {L_5117}&nbsp;{PAGE}&nbsp;{L_5118}&nbsp;{PAGES} <br>
        {PREV}
        <!-- BEGIN pages -->
        {pages.PAGE}&nbsp;
        <!-- END pages -->
        {NEXT} </div>
    </div>
<!-- INCLUDE user_menu_footer.tpl -->

