<div class="row">
<!-- INCLUDE u_header.tpl -->
<div class="span9">
  <!-- IF B_MENUTITLE -->
  <legend>{UCP_TITLE}</legend>
  <!-- ENDIF -->
    <!-- IF B_ISERROR -->
  <div class="alert">
    <button type="button" class="close" data-dismiss="alert">&times;</button>
    {UCP_ERROR} </div>
  <!-- ENDIF -->
  <div class="well">
    <h2> 
    <!-- IF AVATAR ne '' --><img src="{AVATAR}" border="0" style="float: left"><!-- ELSE --><img src="{SITEURL}/uploaded/avatar/default.gif" border="0" style="float: left"><!-- ENDIF -->
    {L_200} {NAME} <small>( {NICK} )</small>
    <br>
    <form class="hidden-phone" action="avatar_upload.php" method="post" enctype="multipart/form-data" name="form2" id="form2">
  		<small>{L_350_10025}</small><br><br>
  		<div class="well">
  			<input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
        	<input type="file" name="ifile">
            <input type="hidden" name="MAX_FILE_SIZE" value="{MAXUPLOADSIZE}" />
            <input name="Submit"  type="submit" class="btn btn-primary" id="Submit" value="Upload">
		</div>
	</form>
    </h2>
      </div>
  <form name="details" action="" method="post">
    <fieldset>
	    <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
	    <input type="hidden" name="FB_ids" value="{FBOOK_ID}">
	    <div class="row">
	    	<div class="span4 well">
	    		<span class="help-block">{L_617}</span>
	    		<label>{L_004}</label>
	    		<input type="password" name="TPL_password" size=20 maxlength="20">{L_050}
	    		<label>{L_005}</label>
	    		<input type="password" name="TPL_repeat_password" size=20 maxlength=20 />
	    		<label>{L_006}</label>
	    		<input type="text" name="TPL_email" size=50 maxlength=50 value="{EMAIL}">
	    	</div>
	    	<!-- IF B_FBOOK_LOGIN -->
	    	<div class="span4 well">
				<span class="help-block alert alert-info">{L_350_10192}</span><br>
				{FBOOK_EMAIL}
	    	</div>
	    	<!-- ENDIF -->
	    	</div>
	    	<ul class="nav nav-tabs">
				<li class="active"><a href="#details" data-toggle="tab">{L_3500_1015484}</a></li>
				<li><a href="#payment" data-toggle="tab">{L_719}</a></li>
			</ul>
			<div class="tab-content">
				<div class="tab-pane fade in active" id="details">
			    	<div class="row" style="margin-left:0;">
			    		<div class="span4">
			        		<label>{L_009}</label>
			        		<input type="text" name="TPL_address" size="40" maxlength=255 value="{ADDRESS}">
			        		<label>{L_010}</label>
			        		<input type="text" name="TPL_city" size="25" maxlength=25 value="{CITY}">
			        		<label>{L_011}</label>
			        		<input type="text" name="TPL_prov" size="10" maxlength=10 value="{PROV}">
			         		<label>{L_252}</label>
			    			<div class="control-group">
			    				<div class="controls register-date">
			    					{DATEFORMAT}
			    					<input class="input-small" type="text" name="TPL_year" size="4" maxlength="4" value="{YEAR}">
			    				</div>
			    			</div>
			      		</div>
			      		<div class="span4">
			        		<label>{L_014}</label>
			        		<select  name="TPL_country">{COUNTRYLIST}</select>
			        		<label>{L_012}</label>
			        		<input type="text" name="TPL_zip" size=8 value="{ZIP}">
			        		<label>{L_013}</label>
			        		<input type="text" name="TPL_phone" size=40 maxlength=40 value="{PHONE}">
			        		<label>{L_346}</label>
			        		{TIMEZONE} 
			        	</div>
			    	</div>
			    	<div class="row"  style="margin-left:0;">
			      		<div class="span4">
			      			<label>{L_350_10115}&nbsp;&nbsp; {IS_ONLINE}</label>
				  			<label class="switch-light well" onclick="">
			        			<input type="checkbox" name="hide_online" id="hide_online" value="y" {HIDEONLINE}>
			        			<span>
									<span>Off</span>
									<span>On</span>
								</span>
								<a class="btn btn-primary"></a>
							</label>
			         		<span class="help-block alert alert-info">{L_350_10116}</span><br>
			        		<label>{L_352}</label>
			        		<label class="radio">
			        			<input type="radio" name="TPL_emailtype" value="html" {EMAILTYPE1} />{L_902} 
			        		</label>
			        		<label class="radio">
			        			<input type="radio" name="TPL_emailtype" value="text" {EMAILTYPE2} />{L_915} 
			        		</label>
			      		</div>
			      		<!-- IF B_NEWLETTER -->
			      		<div class="span4">
			        		<label>{L_603}</label>
			        		<label class="radio">
			        			<input type="radio" name="TPL_nletter" value="1" {NLETTER1} />{L_030} 
			        		</label>
			        		<label class="radio">
			        			<input type="radio" name="TPL_nletter" value="2" {NLETTER2} />{L_029} 
			        		</label>
			        		<span class="help-block alert alert-info">{L_609}</span> 
			        	</div>
			    	<!-- ENDIF --> 
			    	</div>
			    </div>
			    <div class="tab-pane tab-pane fade in" id="payment"> 
			    	<div class="row" style="margin-left:0;">
			      		<div class="span4">
			    			<!-- IF B_PAYPAL -->
			    			<label>{L_720}</label>
			    			<input type="text" name="TPL_pp_email" size=40 value="{PP_EMAIL}">
			    			<!-- ENDIF -->
			    			<!-- IF B_AUTHNET -->
			    			<label>{L_773}</label>
			    			<input type="text" name="TPL_authnet_id" size=40 value="{AN_ID}">
			    			<label>{L_774}</label>
			    			<input type="text" name="TPL_authnet_pass" size=40 value="{AN_PASS}">
			    			<!-- ENDIF -->
			    			<!-- IF B_WORLDPAY -->
			    			<label>{L_824}</label>
			    			<input type="text" name="TPL_worldpay_id" size=40 value="{WP_ID}">
			    			<!-- ENDIF -->
			    			<!-- IF B_TOOCHECKOUT -->
			    			<label>{L_826}</label>
			    			<input type="text" name="TPL_toocheckout_id" size=40 value="{TC_ID}">
			   	 			<!-- ENDIF -->
			    		</div> 
			    		<div class="span4">
			    			<!-- IF B_MONEYBOOKERS -->
			    			<label>{L_825}</label>
			    			<input type="text" name="TPL_skrill_email" size=40 value="{MB_EMAIL}">
			    			<!-- ENDIF -->
			    			<!-- IF B_BANK_TRANSFER -->
			    			<label>{L_30_0216}</label>
			    			<input type="text" name="TPL_bank_name" size=40 maxlength=40 value="{BANK}">
			    			<!-- ENDIF -->
			    			<!-- IF B_BANK_TRANSFER -->
			    			<label>{L_30_0217}</label>
			        		<input type="text" name="TPL_bank_account" size=40 maxlength=40 value="{BANK_ACCOUNT}">
			    			<!-- ENDIF -->
			    			<!-- IF B_BANK_TRANSFER -->
			    			<label>{L_30_0218}</label>
			        		<input type="text" name="TPL_bank_routing" size=40 maxlength=40 value="{BANK_ROUTING}">
							<!-- ENDIF -->
			    		</div>
			    	</div>
			    </div>
			</div>
   	 		<br />
    		<div class="form-actions">
      			<button  type="submit" name="Input" class="btn btn-primary">{L_530}</button>
      			<input type="reset" name="Input" class="btn">
      			<input type="hidden" name="action" value="update">
    		</div>
    </fieldset>
</form>
<!-- INCLUDE user_menu_footer.tpl -->
