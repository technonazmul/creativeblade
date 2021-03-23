		<div class="col-md-3">
			<div style="margin-left:auto; margin-right:auto;">
				<!-- INCLUDE sidebar-{CURRENT_PAGE}.tpl -->
			</div>
		</div>
	<div class="col-md-9">
			<div class="main-box">
				<h4 class="rounded-top rounded-bottom">{L_25_0018}&nbsp;&gt;&gt;&nbsp;{L_5032}&nbsp;&gt;&gt;&nbsp;{BOARD_NAME}&nbsp;&gt;&gt;&nbsp;{L_5276}</h4>
				<form name="editmessage" action="" method="post">
					<table width="100%" cellpadding="0" cellspacing="0" class="table blank">
						<tr>
							<td width="24%" valign="top">{L_5059}</td>
							<td>
								<textarea rows="8" cols="40" name="message">{MESSAGE}</textarea>
							</td>
						</tr>
						<tr>
							<td>{L_5060}</td>
							<td>{USER} - {POSTED}</td>
						</tr>
					</table>
					<input type="hidden" name="action" value="update">
					<input type="hidden" name="id" value="{BOARD_ID}">
					<input type="hidden" name="msg" value="{MSG_ID}">
					<input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
					<input type="submit" name="act" class="centre" value="{L_530}">
				</form>
			</div>
		</div>