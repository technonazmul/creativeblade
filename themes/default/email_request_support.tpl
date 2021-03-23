<script type="text/javascript">
function SubmitFriendForm(){
	document.friend.submit();
}
function ResetFriendForm(){
	document.friend.reset();
}
</script>
<div class="row">
<div class="well span8 offset2">
<legend>{PAGE_TITLE}</legend>
<!-- IF ERROR ne '' -->
		<div class="span8" align="center">
			<div style="width:80%" class="alert alert-error">{ERROR}</div>
		</div>
	<!-- ENDIF -->
<!-- IF MESSAGE ne '' -->
		<div align="center" class="padding">{MESSAGE}</div>
<!-- ELSE -->
			<form class="form-horizontal" name="sendemail" action="email_request_support.php" method=POST>
				<input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
    			<table class="table table-bordered table-condensed">
    				<tbody>
      					<tr>
        					<td>{L_3500_1015441}:</td>
        					<td>
								<input type="button" onclick="this.form.subject.value=this.value;" class="btn btn-primary" value="{L_3500_1015442}">  
								<input type="button" onclick="this.form.subject.value=this.value;" class="btn btn-primary" value="{L_3500_1015443}">
								<input type="button" onclick="this.form.subject.value=this.value;" class="btn btn-primary" value="{L_3500_1015444}"> 
								<input type="button" onclick="this.form.subject.value=this.value;" class="btn btn-primary" value="{L_3500_1015445}">
							</td>
		 				</tr>
		 			<!-- IF B_LOGGED_IN eq false -->
		 				<tr>
		 					<td>{L_006}</td>
		 					<td><INPUT TYPE="text" NAME="sender_email" SIZE="25" VALUE="{SENDER_EMAIL}"></td>
		 				</tr>
		 			<!-- ENDIF -->
		 			<!-- your email -->
		 				<tr>
		 					<td>{L_002}:</td>
		 					<td><INPUT TYPE="TEXT" NAME="sender_name" SIZE="25" VALUE="{SENDER_NAME}"></td>
		 				</tr>
		 				<tr>
		 					<td>{L_3500_1015446}:</td>
		 					<td><INPUT TYPE="TEXT" NAME="subject" SIZE="25" VALUE="{SUBJECT}"></td>
		 				</tr>
		 			<!-- comment -->
		 				<tr>
		 					<td>{L_650}</td>
		 					<td><TEXTAREA style="width:90%" NAME="sender_question" COLS="55" ROWS="7">{SELLER_QUESTION}</TEXTAREA></td>
		 				</tr>
		 			</tbody>
				</table>
				<div class="control-group">
        			<div class="controls">{CAPCHA}</div>
        		</div>
        		<hr />
        		<div align="center">
					<INPUT TYPE="hidden" NAME="admin_email" VALUE="{ADMIN_EMAIL}"> 
					<INPUT TYPE="hidden" NAME="action" VALUE="{L_106}">					
					<INPUT TYPE=submit NAME="" VALUE="{L_5201}"  class=" btn btn-primary">
					<!-- IF B_LOGGED_IN -->
					<INPUT TYPE="hidden" NAME="sender_email" SIZE="25" VALUE="{EMAIL}">
					<!-- ENDIF -->
				</div>
		</form>
<!-- ENDIF -->
</div>
