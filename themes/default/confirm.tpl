<div class="row">
	<div class="span7 offset2 well">
		<legend>{L_248}</legend>
<!-- IF PAGE eq error -->
			<div class="error-box">
            	{ERROR}
            </div>
<!-- ELSEIF PAGE eq confirm -->
			<form name="registration" action="{SITEURL}confirm.php" method="post">
				<p>{L_267}</p>
				<input type="hidden" name="id" value="{USERID}">
				<input type="hidden" name="hash" value="{HASH}">
				<input type="submit" name="action" class="btn btn-primary" value="{L_249}" class="button">
				<input type="submit" name="action" class="btn" value="{L_250}" class="button">
			</form>
<!-- ELSEIF PAGE eq confirmed -->
			{L_330}
<!-- ELSEIF PAGE eq refused -->
			{L_331}
<!-- ENDIF -->
