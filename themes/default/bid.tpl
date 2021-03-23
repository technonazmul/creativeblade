<div class="row">
	<div class="span4">
			<!-- IF B_HASENDED eq false -->
					<div class="well">
					<!-- IF PAGE eq 1 -->
						<!-- IF ERROR ne '' -->
							<div class="alert"> {ERROR} </div>
						<!-- ENDIF -->
						<!-- IF B_NOTBNONLY -->
							<div style="padding:8px;">
						  		<form name="bid" action="" method="post" enctype="multipart/form-data">
				      				<input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
				      				<!-- IF B_BUY_NOW -->
							    		{L_496}: {BUYNOW} <a class="btn btn-success" href="{SITEURL}buy_now.php?id={ID}">{L_350_1015402}</a><br><br>
						  			<!-- ENDIF -->
		          					{L_116} {CURRENT_BID}<br>
	            					{L_156} <input type="text" size="5" name="bid" id="bid" value="{BID}">
	            					<!-- IF ATYPE eq 1 -->
		            					<span class="help-block"><small>({L_283}: {NEXT_BID})</small></span>
	            					<!-- ENDIF -->
		          					<!-- IF TQTY gt 1 -->
			          					<label>{L_284}:</label>
			          					<input type="text" size="3" name="qty" id="qty" value="{QTY}">
		          					<!-- ENDIF -->
		          					<!-- IF B_USERAUTH -->
			          					<hr />
			          					<small><span class="muted">{L_003}</span></small> <b>{YOURUSERNAME}</b><br />
		          						{L_004}: <input type="password" name="password" size="20"  value="">
		          					<!-- ENDIF -->
				      				<div style="text-align:center; margin-top:20px;">
				        				<input type="hidden" name="id" value="{ID}">
				        				<div class="alert alert-info">{AGREEMENT}</div>
				        				<input type="hidden" name="action" value="bid">
				        				<input type="submit" name="Input" value="{L_5199}" class="btn btn-success">
				      				</div>
				    			</form>
							</div>
						<!-- ENDIF -->
						<!-- IF B_BUY_NOW_ONLY -->
							<!-- IF B_FREE_ITEM -->
							{L_3500_1015745}: <a style="cursor:pointer" class="btn btn-success" href="{SITEURL}buy_now.php?id={ID}">{L_3500_1015747}</a><br><br>
						  	<!-- ENDIF -->
							<!-- IF B_BUY_NOW -->
							  		<div style=" text-align:center"> <em>
							    		<p>{L_496}: {BUYNOW} <a class="btn btn-success" href="{SITEURL}buy_now.php?id={ID}">{L_350_1015402}</a></p>
							    	</em></div>
							<!-- ENDIF -->
						<!-- ENDIF -->
					<!-- ELSE -->
						<div align="center">
    						<a class="btn btn-primary" href="{SITEURL}products/{SEO_TITLE}-{ID}">{L_3500_1015529}</a><br><br>
    						{L_699} {BID} {L_700}
    					</div>
					<!-- ENDIF -->
					</div>
			<!-- ENDIF -->
</div>
</div>