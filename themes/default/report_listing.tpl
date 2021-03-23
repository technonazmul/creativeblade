	<legend>Report Auction</legend>

    <div id="formbox"> 
<!-- IF EMAILSENT eq '' -->
        <div align="center" >
        <div class="well">
            <div >
            <p><b>{L_059} </b></p>
            <p><b> Thank you for taking the time to contact us, the Site Administrator has been informed and will respond immediately. </b></p>
        </div></div>
<!-- ELSE -->
	<div class="titTable3">
		<div class="buttonwrapper">
			<a id="btn_primary" class="btn btn-primary" href="{SITEURL}products/{SEO_TITLE}-{ID}" style="margin-right: 3px">{L_138}</a><br><br>
		</div>
	</div>
	<div class="span9 offset1">
        <div id="formbox"> 
        	<form name="adminmail" action="report_listing.php" method="post">
        	<input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">    
			<!-- IF CANT_REPORT eq 0 -->
      			 <table class="table well" cellpadding="4" cellspacing="0" border="0" >
      			 <!-- IF ERROR ne '' -->
      			 <tr>
      			 	<td colspan="2" align="center" style="color:red"><b>{ERROR}</b></td>
      			 </tr>
			<!-- ENDIF -->
          			<tr>
          				<td colspan="2" align="center">
              				{L_REQUIRED}                
          				</td>
          			</tr>
        			<tr> 
            			<td align="right" width="40%"><b>{L_1431}</b></td>
            			<td align="left"  colspan="2"><b>{TITLE} - ({L_1432} {ID})</b>
            				<input type="hidden" name="title" size="50" value="{TITLE}">
            				<input type="hidden" name="id" size="50" value="{ID}">
        				</td>
        			</tr>
        			<tr> 
         				<td align="right" width="30%"><img src="{PIC_URL1}"  border="0" align="center"> 
         					<input type="hidden" name="pic_url" size="50" value="{PIC_URL1}"> 
                        </td> 
            			<td align="left" colspan="2" valign="top"><b>{L_1415} </b>{SELLER_NICK} <br /><br />
            				<input type="hidden" name="seller_nick" size="50" value="{SELLER_NICK}">
            				<input type="hidden" name="seller_id" size="50" value="{SELLER_ID}">
            				<b>{L_1414}{SELLER_ID}</b><br /><br />
            			</td> 
            		<tr> 
            			<td width="40%"></td>
            			<td align="left" colspan="2"><b>{L_1416}</b>{SENDER_NICK}</td>          
        			</tr> 
            		<tr>             
            			<td align="right" width="40%">{L_ASTERIX}<b>{L_1428}</b></td>
            			<td align="left" colspan="2">{REPORT_REASONS_LIST}{L_OPENBUBBLE}{L_1430}{L_CLOSEBUBBLE}</td>            
        			</tr>    
        			<tr> 
            			<td align="right" width="40%" valign="top">{L_ASTERIX}<b>{L_1429}</b></td>
            			<td align="left" colspan="2">
                			<textarea name="sender_comment" cols="52" rows="6">{COMMENT}</textarea> <br> 
                		</td>
        			</tr>
        			<tr> 
            			<td align ="left"  colspan="2" >{CAPCHA}<br></td>
            		</tr>
            		<tr>
						<td colspan="2" align="center">
							<b>{L_1437}</b>
						</td>
					</tr>
            		<tr>
            			<td><p><b><i>&nbsp;</i></b></p></td>
            			<td>
            				<input type="hidden" name="id" value="{ID}"> 
                			<input type="hidden" name="action" value="sendmail">
                			<input type="hidden" name="csrftoken" value="{_CSRFTOKEN}"> 
                			<input class="btn btn-primary" type="submit" name="" value="{L_1410}"  id="btn_primary"> &nbsp;
                			<input class="btn btn-primary" type="reset" name="" value="{L_5190}"  id="btn_primary">           
            			</td>           
            		</tr>              
        		</table>
        <!-- ELSE -->
        
           <br /><br /><br /><br />
        <!-- ENDIF -->
        </form>
        </div><p class="line10">&nbsp;</p>
 <!-- ENDIF -->


