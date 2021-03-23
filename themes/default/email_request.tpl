	<div >
		<span style="float:right">
			<a class="btn btn-primary" href="{SITEURL}profile.php?user_id={USERID}">{L_206}</a> 
			<a class="btn btn-info" href="{SITEURL}products/{AUCTION_ID}">{L_138}</a>
		</span>
		<h3>{L_334} {USERNAME}</h3>
		</div>
		<hr />
<div class="row">
<div class="well span11 ">	

<!-- IF B_SENT -->
		<div align="center">
			<p>{L_337} {USERNAME}</p>
		</div>
<!-- ELSE -->
	<!-- IF ERROR ne '' -->
		<div class="alert alert-success">
			{ERROR}
		</div>
	<!-- ENDIF -->
			<form name="seller" action="email_request.php" method="post">
            <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
						<div align="center">{L_149}</div>
				<table  align="center" cellpadding="4" cellspacing="0">
					<tr>
						<td align="right" valign="top">
							{L_333}
						</td>
						<td valign="top">
							<p><textarea name="TPL_text" style="width:100%" cols="50" rows="8">{MSG_TEXT}</textarea></p>
							<input type="hidden" name="user_id" value="{USERID}">
							<input type="hidden" name="username" value="{USERNAME}">
							<input type="hidden" name="action" value="proceed">
							<input type="submit" name="Submit" value="{L_007}" class="btn btn-primary">
						</td>
					</tr>
				</table>
			</form>
<!-- ENDIF --></div>
