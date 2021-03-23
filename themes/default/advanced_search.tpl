<div class="row">
	<div class="span12">
		<legend> {L_464} </legend>
		<!-- IF ERROR ne '' -->
    	<div class="alert"> {ERROR} </div>
    	<!-- ENDIF -->
    	<form class="form-horizontal" name="adsearch" method="post" action="" enctype="multipart/form-data">
      		<input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
      		<div class="span5 well">
	      		<div class="control-group">
	      			<label class="control-label"> {L_1000}</label>
	      			<div class="controls">
	      				<input type="text" size="45" placeholder="{L_1000}" name="title">
	      			</div>
	      		</div>
	      		<label class="checkbox inline  c-margin">
	     			<input name="desc" type="checkbox" value="y">{L_1001} 
	      		</label>
	      		<label class="checkbox inline c-margin">
	      			<input name="closed" type="checkbox" id="closed" value="y">{L_25_0214} 
	      		</label>
	      		<hr />
	      		<div class="control-group">
	      			<label class="control-label">{L_1002}</label>
	      			<div class="controls">
	      				{CATEGORY_LIST}
	      			</div>
	      		</div>
	      		<hr />
	      		<div class="control-group">
	      			<label class="control-label">{L_1003}</label>
	      			<div class="controls">
	        			{L_1004}<br><input class="input-small" type="text" maxlength="12" name="minprice" placeholder="0.02">{L_1005}
	        			<input type="text" class="input-small" maxlength="12" name="maxprice" size="5" placeholder="900.00">{CURRENCY} 
	        		</div>
	        	</div>
	        	<hr />
	        	<div class="control-group">
	        		<label class="control-label">{L_2__0025}</label>
	        		<div class="controls">
	             		<label class="checkbox inline c-margin">
	      					<input type="checkbox" name="buyitnow" value="y">{L_30_0100}
	      				</label>
	      				<label class="checkbox inline c-margin">
	      					<input type="checkbox" name="buyitnowonly" value="y">{L_30_0101}
	      				</label>
	      			</div>
	      		</div>
	      		<hr />
	      		<div class="control-group">
	      			<label class="control-label">{L_1006}</label>
	      			<div class="controls">
	      				{PAYMENTS_LIST}
	      			</div>
	      		</div>
      		</div>
      		<div class="well span5">
	      		<div class="control-group">
	      			<label class="control-label">{L_125}</label>
	      			<div class="controls">
	      				<input type="text" placeholder="{L_125}" name="seller">
	      			</div>
	      		</div>
	      		<hr />
	      		<div class="control-group">
	      			<label class="control-label">{L_1008}</label>
	      			<div class="controls">
	      				{COUNTRY_LIST}
	      			</div>
	      		</div>
	      		<hr />
	      		<div class="control-group">
	      			<label class="control-label">{L_012}</label>
	      			<div class="controls">
	      				<input type="text" name="zipcode" placeholder="{L_012}" size="12">
	      			</div>
	      		</div>
	      		<hr />
	      		<div class="control-group">
	      			<label class="control-label">{L_1009}</label>
	      			<div class="controls">
	      				<select name="ending" size="1">
	        				<option></option>
	        				<option value="1">{L_1010}</option>
	        				<option value="2">{L_1011}</option>
	        				<option value="4">{L_1012}</option>
	        				<option value="6">{L_1013}</option>
	      				</select>
	      			</div>
	      		</div>
	      		<hr />
	      		<div class="control-group">
	      			<label class="control-label">{L_1014}</label>
	      			<div class="controls">
	      				<select name="SortProperty" size="1">
	        				<option></option>
	        				<option value="ends">{L_1015}</option>
	        				<option value="starts">{L_1016}</option>
	        				<option value="min_bid">{L_1017}</option>
	        				<option value="max_bid">{L_1018}</option>
	      				</select>
	      			</div>
	      		</div>
	      		<hr />
	      		<div class="control-group">
	      			<label class="control-label">{L_718} </label>
	      			<div class="controls">
	      				<select name="type" size="1">
	        				<option></option>
	        				<option value="2">{L_1020}</option>
	        				<option value="1">{L_1021}</option>
	      				</select>
	      			</div>
	      		</div>
	      		<hr />
	      		<div class="form-actions">
	        		<input name="action" type="hidden" value="search">
	        		<input type="submit" name="go" value="{L_5029}" class="btn btn-primary">
	      		</div>
    	</form>

