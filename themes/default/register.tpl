<script type="text/javascript" src="{INCURL}themes/{THEME}/js/password/pwstrength-{LANGUAGE}.js"></script>

<!-- IF B_FIRST -->
<!-- IF B_SSL -->
<div class="alert alert-success"><img src="{SITEURL}images/ssl.png">{L_3500_1015493}</div>
<!-- ENDIF -->
<!-- ENDIF -->

<!-- IF B_FIRST -->
<!-- IF ERROR ne '' -->
<div class="alert"> {ERROR} </div>
<!-- ENDIF -->
<form class="form-horizontal" name="registration" action="{SSLURL}new_account" method="post" enctype="multipart/form-data">
	<input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
	<div class="span5 well">
		<legend>{L_001}</legend>
  		<!-- IF B_FBOOK_LOGIN -->
		<div class="well">
		<legend>{L_350_10204_a}</legend>
			<!-- IF FBOOK_EMAIL -->
			<div class="control-group">
				<label class="control-label"><img src="images/longin1.png"></label>
		    	<div class="controls">
		  			 {L_350_10186}
		  		</div>
		  	</div>
		  	<!-- ELSE -->
		  	<div class="control-group">
		  		<label class="control-label"><img src="images/redlogin1.png"></label>
		    	<div class="controls">
		    		{L_350_10187}<br>
		 			<a id="popoverData" class="btn btn-primary" href="#" data-content="{L_350_10202}" onclick="{B_FB_LINK}();" rel="popover" data-placement="bottom" data-original-title="Connect with Facebook" data-trigger="hover">{L_350_10204_b}</a>
				</div>
		  	</div>
	 		<!-- ENDIF -->
	 	</div>
	  	<!-- ENDIF -->
  		<div class="control-group">
    		<label class="control-label" for="TPL_name">{L_002} *</label>
    		<div class="controls">
      			<input type="text" name="TPL_name" maxlength=255 value="{V_YNAME}" placeholder="{L_3500_1015532}">
    		</div>
  		</div>
  		<div class="control-group">
    		<label class="control-label" >{L_003} *</label>
    		<div class="controls">
      			<input type="text" name="TPL_nick" maxlength=150  value="{V_UNAME}" placeholder="{USERNAME_SIZE}"><br />
    		</div>
  		</div>
  		<div class="control-group">
    		<label class="control-label" >{L_004} *</label>
    		<div class="controls col-sm-4">
      			<input type="password" id="passwordname" name="TPL_password" maxlength=150 value="" placeholder="{PASSWORD_SIZE}">
    		</div>    
  		</div>
  		<div class="control-group">
    		<label class="control-label" >{L_005} *</label>
    		<div class="controls">
      			<input type="password" name="TPL_repeat_password" maxlength=150 value="">
    		</div>
  		</div>
  		<div class="control-group">
    		<label class="control-label" for="">{L_006} *</label>
    		<div class="controls">
    			<div class="input-prepend">
					<span class="add-on"><i class="icon-envelope"></i></span>
      				<input type="text" name="TPL_email" maxlength=150 value="{V_EMAIL}" placeholder="{L_3500_1015640}">
      			</div>
    		</div>
  		</div>
  		<!-- IF BIRTHDATE -->
  		<div class="control-group">
    		<label class="control-label" for="">{L_252} {REQUIRED(0)}</label>
    		<div class="controls register-date"> {L_DATEFORMAT}
      			<input type="text" name="TPL_year" size="4" maxlength="4" value="{V_YEAR}">
    		</div>
  		</div>
  		<!-- ENDIF -->
  		<!-- IF ADDRESS -->
  		<div class="control-group">
    		<label class="control-label" for="">{L_009} {REQUIRED(1)}</label>
    		<div class="controls">
      			<input type="text" name="TPL_address" size=40 value="{V_ADDRE}">
    		</div>
  		</div>
  		<!-- ENDIF -->
  		<!-- IF CITY -->
  		<div class="control-group">
    		<label class="control-label" for="">{L_010} {REQUIRED(2)}</label>
    		<div class="controls">
      			<input type="text" name="TPL_city" size=25 value="{V_CITY}">
    		</div>
  		</div>
  		<!-- ENDIF -->
  		<!-- IF PROV -->
  		<div class="control-group">
    		<label class="control-label" for="">{L_011} {REQUIRED(3)}</label>
    		<div class="controls">
      			<input type="text" name="TPL_prov" size=10 value="{V_PROV}">
    		</div>
  		</div>
  		<!-- ENDIF -->
  		<!-- IF COUNTRY -->
  		<div class="control-group">
    		<label class="control-label" for="">{L_014} {REQUIRED(4)}</label>
    		<div class="controls">
      			<select name="TPL_country">
        			<option value="">{L_251}</option>
					{L_COUNTRIES}
      			</select>
    		</div>
  		</div>
  		<!-- ENDIF -->
  		<!-- IF ZIP -->
  		<div class="control-group">
    		<label class="control-label" for="">{L_012} {REQUIRED(5)}</label>
    		<div class="controls">
      			<input type="text" name="TPL_zip" size=8 value="{V_POSTCODE}">
    		</div>
  		</div>
  		<!-- ENDIF -->
  		<!-- IF TEL -->
  		<div class="control-group">
    		<label class="control-label" for="">{L_013} {REQUIRED(6)}</label>
    		<div class="controls">
      			<input type="text" name="TPL_phone" size=40 maxlength=50 value="{V_PHONE}">
    		</div>
  		</div>
  		<!-- ENDIF -->
  		<div class="control-group">
    		<label class="control-label" for="">{L_346}</label>
    		<div class="controls"> {TIMEZONE} </div>
  		</div>
  		<!-- IF B_NLETTER -->
  		<div class="control-group">
    		<label class="control-label" for="">{L_608}</label>
    		<div class="controls">
      			<label class="radio inline">
      			<input type="radio" name="TPL_nletter" value="1" {V_YNEWSL}>{L_030}</label>
      			<label class="radio inline">
      			<input type="radio" name="TPL_nletter" value="2" {V_NNEWSL}>{L_029}</label>
    		</div>
  		</div>
	</div>
  	<!-- ENDIF -->

	<div class="span5 well">
  		<legend>{L_719}</legend>
  		<!-- IF B_PAYPAL -->
  		<div class="control-group">
    		<label class="control-label" for="">{L_720}{REQUIRED(7)}</label>
    		<div class="controls">
      			<input type="text" name="TPL_pp_email" size=150 value="{PP_EMAIL}">
    		</div>
  		</div>
  		<!-- ENDIF -->
  		<!-- IF B_AUTHNET -->
  		<div class="control-group">
    		<label class="control-label" for="">{L_773}{REQUIRED(8)}</label>
    		<div class="controls">
      			<input type="text" name="TPL_authnet_id" size=150 value="{AN_ID}">
    		</div>
  		</div>
  		<div class="control-group">
    		<label class="control-label" for="">{L_774}{REQUIRED(8)}</label>
    		<div class="controls">
      			<input type="text" name="TPL_authnet_pass" size=150 value="{AN_PASS}">
    		</div>
  		</div>
  		<!-- ENDIF -->
  		<!-- IF B_WORLDPAY -->
  		<div class="control-group">
    		<label class="control-label" for="">{L_824}{REQUIRED(9)}</label>
    		<div class="controls">
      			<input type="text" name="TPL_worldpay_id" size=150 value="{WP_ID}">
    		</div>
  		</div>
  		<!-- ENDIF -->
  		<!-- IF B_TOOCHECKOUT -->
  		<div class="control-group">
    		<label class="control-label" for="">{L_826}{REQUIRED(10)}</label>
    		<div class="controls">
      			<input type="text" name="TPL_toocheckout_id" size=150 value="{TC_ID}">
    		</div>
  		</div>
  		<!-- ENDIF -->
  		<!-- IF B_MONEYBOOKERS -->
  		<div class="control-group">
    		<label class="control-label" for=""> {L_825}{REQUIRED(11)} </label>
    		<div class="controls">
      			<input type="text" name="TPL_skrill_email" size=150 value="{MB_EMAIL}">
   	 		</div>
  		</div>
  		<!-- ENDIF -->
  		<!-- IF B_BANK_TRANSFER -->
  		<div class="control-group">
    		<label class="control-label" for=""> {L_30_0216}{REQUIRED(12)} </label>
    		<div class="controls">
    			<input type="text" name="TPL_bank_name" size=150 value="{BANK}">
    		</div>
  		</div>
  		<div class="control-group">
    		<label class="control-label" for=""> {L_30_0217}{REQUIRED(12)} </label>
    		<div class="controls">
    			<input type="text" name="TPL_bank_account" size=150 value="{BANK_ACCOUNT}">
    		</div>
  		</div>
  		<div class="control-group">
    		<label class="control-label" for=""> {L_30_0218}{REQUIRED(12)} </label>
    		<div class="controls">
    			<input type="text" name="TPL_bank_routing" size=150 value="{BANK_ROUTING}">
    		</div>
  		</div>
  	<!-- ENDIF -->
  	</div>
	<div class="span5 well">
  		<!-- IF B_SINGUP_FEE -->
  		<p>{L_430}: {FEE}</p>
  		<!-- ENDIF -->
  		<!-- IF B_BONUS_FEE -->
  		<p>{L_736}: {BONUS}</p>
  		<!-- ENDIF -->
  		<label>{L_858}</label>
    	<label class="switch-light well" onclick="">
    		<input type="checkbox" name="terms_check" id="terms_check">
    		<span>
				<span>{L_029}</span>
				<span>{L_030}</span>
			</span>
			<a class="btn btn-primary"></a>
    	</label>
    	<label>{L_858_a}</label>
    	<label class="switch-light well" onclick="">
    		<input type="checkbox" name="cookies_check" id="cookies_check">
    		<span>
				<span>{L_029}</span>
				<span>{L_030}</span>
			</span>
			<a class="btn btn-primary"></a>
  		</label><br><br>
  		{CAPCHA}<br>
  		<input type="hidden" name="action" value="first">
  		<div class="form-actions">
    		<input type="submit" class="btn btn-success" value="{L_235}">
  		</div>
</form>
<!-- ELSE -->
	<div class="well">
  		<h2>{L_HEADER}</h2>
  		<p>{L_MESSAGE}</p>
  		<p>{L_860}</p>
<!-- ENDIF -->
