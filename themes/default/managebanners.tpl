<div class="row">
<!-- INCLUDE u_header.tpl -->
<div class="span9">
			<legend>{L_350_1012212}</legend>
			<!-- IF B_BANNERMANAGER -->
            <div class="well" align="center">
     			<form name="newuser" action="" method="post" >
     				<div align="center">{L_350_10149}</div>
     				<div align="center">{L_350_10127}: {SIGNUP_FEE}</div>
                    <table cellpadding="0" cellspacing="0" class="blank" align="center">
                    	<tr>
                    		<td align="right">{L_302}:</td>
                        	<td><input type="text" name="name" value="{NAME}"></td>
			            </tr>
			            <tr>
			                <td align="right">{L__0022}:</td>
			                <td><input type="text" name="company" value="{COMPANY}"></td>
			            </tr>
			            <tr>
			                <td align="right">{L_107}:</td>
			                <td><input type="text" name="email" value="{EMAIL}"></td>
			            </tr>
					</table><br/>
			        <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
			        <input type="hidden" name="action" value="insert">
			        <input type="hidden" name="bpval" value="{busers.ID}">
			        <input type="submit" name="act" class="btn btn-primary" value="{L_350_101244}">
			   	</form>
			</div><br><br>
<!-- ENDIF -->
     <form name="deleteusers" action="" method="post">
                    <table class="table table-bordered table-condense table-striped" width="98%" cellpadding="0" cellspacing="0">
                    <tr>
                    	<th>&nbsp;</th>
                    	<th width="15%">{L_5180}</th>
                    	<th width="25%">{L__0022}</th>
                    	<th width="28%">{L_303}</th>
                    	<th width="11%" align="center">{L__0025}</th>
                    	<th>&nbsp;</th>
                    	<th width="11%" align="center">{L_008}</th>
                    </tr>
<!-- BEGIN busers -->
					<tr {busers.BG}>
						<td><span>
						<a href="editbannersuser.php?id={busers.ID}">{L_350_10150}</a></span></td>
                    	<td>{busers.NAME}</td>
                    	<td>{busers.COMPANY}</td>
                    	<td><a href="mailto:{busers.EMAIL}">{busers.EMAIL}</a></td>
                    	<td align="center">{busers.NUM_BANNERS}</td>
                    	<td><span>
						<a href="newuserbanner.php?id={busers.ID}">{L__0024}</a></span></td>
                    	<td align="center"><input type="checkbox" name="delete[]" value="{busers.ID}"></td>
                    </tr>
<!-- END busers -->
					</table>
                    <input type="hidden" name="action" value="deleteusers">
                    <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
                    <input type="submit" name="act" class="btn btn-primary" value="{L_350_10131}">
				</form>
<!-- INCLUDE user_menu_footer.tpl -->