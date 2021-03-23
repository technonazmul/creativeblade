<div class="row">
<!-- INCLUDE u_header.tpl -->

<div class="span9">
			<legend>{L_350_1012212}</legend>
            <div class="contentbox">
      <form name="editbanneruser" action="" method="post">
                    <table class="table table-bordered table-condense table-striped"  width="98%" cellpadding="0" cellspacing="0" class="blank">
                    <tr>
                    	<td>{L_302}</td>
                    	<td><input type="text" name="name" value="{NAME}"></td>
                    </tr>
                    <tr>
                    	<td>{L__0022}</td>
                    	<td><input type="text" name="company" value="{COMPANY}"></td>
                    </tr>
                    <tr>
                    	<td>{L_107}</td>
                    	<td><input type="text" name="email" value="{EMAIL}"></td>
                    </tr>
                    </table>
					<input type="hidden" name="id" value="{ID}">
                    <input type="hidden" name="action" value="update">
                    <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
                    <input type="submit" name="act" class="btn btn-primary" value="{L_530}">
                    <span><a class="btn " href="{SITEURL}managebanners.php">{L_350_1012222}</a></span>
				</form>
<!-- INCLUDE user_menu_footer.tpl -->