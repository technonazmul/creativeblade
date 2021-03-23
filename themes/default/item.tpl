<link rel="Stylesheet" type="text/css" href="{INCURL}js/counter/item/jquery.countdown.css">
<link rel="stylesheet" type="text/css" href="{INCURL}themes/{THEME}/css/elastislide.css">
<link rel="stylesheet" type="text/css" href="{INCURL}themes/{THEME}/css/base/advanced-slider-base.css" media="screen">

<script type="text/javascript" src="{INCURL}themes/{THEME}/js/jquery.tmpl.min.js"></script>
<script type="text/javascript" src="{INCURL}themes/{THEME}/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="{INCURL}themes/{THEME}/js/jquery.elastislide.js"></script>
<script type="text/javascript" src="{INCURL}js/counter/item/jquery.countdown.js"></script>
<script type="text/javascript" src="{INCURL}js/counter/item/jquery.countdown-{LANGUAGE}.js"></script>

<script id="img-wrapper-tmpl" type="text/x-jquery-tmpl">	
	<div class="rg-image-wrapper">
		{{if itemsCount > 1}}
			<div class="rg-image-nav">
				<a href="#" class="rg-image-nav-prev">Previous Image</a>
				<a href="#" class="rg-image-nav-next">Next Image</a>
			</div>
		{{/if}}
		<div class="rg-image"></div>
		<div class="rg-loading"></div>
		<div class="rg-caption-wrapper">
			<div class="rg-caption" style="display:none;">
				<p></p>
			</div>
		</div>
	</div>
</script>
<!-- IF TQTY gt 1 -->
<script type="text/javascript">
$(document).ready(function(){
	$("#qty").keydown(function(){
		$("#bidcost").text(($("#qty").val())*($("#bid").val()) + ' {CURRENCY}');
	});
	$("#bid").keydown(function(){
		$("#bidcost").text(($("#qty").val())*($("#bid").val()) + ' {CURRENCY}');
	});
});
</script>

<!-- ENDIF -->
<!--adding 4 latest bottom-->
  <div class="breadcrumb">{L_041}: {CATSPATH}</div>
  <!-- IF SECCATSPATH ne '' -->
  <div class="breadcrumb">{L_814}: {SECCATSPATH}</div>
  <!-- ENDIF -->
<!-- IF B_USERBID -->
<div class="alert alert-success"> {YOURBIDMSG} </div>
<!-- ENDIF -->
<!-- IF B_CANEDIT -->
<div class="form-actions"> <a class="btn btn-primary" href="{SITEURL}edit_active_auction.php?id={ID}">{L_30_0069}</a> </div>
<!-- ENDIF -->
<div class="row">
<div class="span12">
<div class="row">
<div class="span12">
<ul class="inline pull-right" style="margin-bottom:8px;">
  <!-- IF B_CANCONTACTSELLER -->
  <li><small><a class="btn btn-mini" href="{SITEURL}send_email.php?auction_id={ID}"><i class="icon-question-sign"></i> {L_922}</a></small> </li>
  <!-- ENDIF -->
  <!-- IF B_LOGGED_IN -->
  <li><small><a class="btn btn-mini" href="{SITEURL}item_watch.php?{WATCH_VAR}={ID}"><i class="icon-eye-open"></i> {WATCH_STRING}</a></small></li>
  <!-- ELSE -->
  <li><small><a class="btn btn-mini" href="{SITEURL}user_login.php?"><i class="icon-eye-open"></i> {L_5202}</a></small></li>
  <!-- ENDIF -->
  <li><small><a class="btn btn-mini" href="{SITEURL}friend.php?id={ID}"><i class="icon-user"></i> {L_106}</a></small></li>
  <li><small><a class="new-window btn btn-mini" href="https://www.facebook.com/sharer.php?u={FB_URL}&amp;t={FB_TITLE}{FB_PRICE}" title="{L_350_10167}"><i class="icon-user"></i> {L_350_10167}</a></small></li> 
  <li><small><a class="new-window btn btn-mini" href="https://twitter.com/home?status={FB_TITLE}-{FB_URL}" title="{L_350_10168}" rel="nofollow" target="_blank"><i class="icon-user"></i> {L_350_10168}</a></small></li>
  <li><small><a class="new-window btn btn-mini" href="https://plus.google.com/share?url={FB_URL}" title="{L_350_10169}" target="_blank"><i class="icon-user"></i> {L_350_10169}</a></small></li>
</ul>

<div class="clearfix"></div>
<div class="row">
	<div class="span3" style="text-align:center">
	<img class="img-polaroid" src="{SITEURL}{PIC_URL}" border="0" align="center"><br />
</div>
<div class="span5">
  	<h3> {TITLE} </h3>
  	<!-- IF SUBTITLE ne '' -->
  	<h5>{SUBTITLE}</h5>
  	<!-- ENDIF -->

	<ul class="nav nav-tabs">
		<li class="active"><a href="#details" data-toggle="tab">{L_3500_1015484}</a></li>
		<li><a href="#shipping" data-toggle="tab">{L_3500_1015485}</a></li>
		<li><a href="#seller" data-toggle="tab">{L_3500_1015486}</a></li>
		<li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">{L_3500_1015487} <b class="caret"></b></a>
			<ul class="dropdown-menu">
				<div class="span2">
					<div class="row">
						<div class="span2">
							<div class="single-cat-dopdown ">
								<a href="#adi" data-toggle="tab">{L_3500_1015491}</a> 
							</div>
							<!-- IF B_SHOWHISTORY -->
							<div class="single-cat-dopdown ">
								<a href="#history" data-toggle="tab">{L_3500_1015490}</a> 
							</div>
							<!-- ENDIF -->
							<!-- IF B_CONDITION -->
							<div class="single-cat-dopdown ">
								<a href="#Item_Condition" data-toggle="tab">{L_3500_1015488}</a> 
							</div>
							<!-- ENDIF -->
						</div>
					</div>
				</div>
			</ul>
		</li>
	</ul>

<div class="tab-content">
	<div class="tab-pane well tab-pane fade in active" id="details">
		<!-- IF B_FREE_ITEM -->
		{L_3500_1015745}: <a style="cursor:pointer" class="btn btn-success" href="{SITEURL}buy_now.php?id={ID}">{L_3500_1015747}</a><br><br>
	  	<!-- ENDIF -->

	  <!-- IF B_BUY_NOW -->
		{L_496}: {BUYNOW} <a style="cursor:pointer" class="btn btn-success" href="{SITEURL}buy_now.php?id={ID}">{L_350_1015402}</a><br><br>
	  <!-- ENDIF -->
	  <!-- IF B_NOTBNONLY -->
	  <!-- IF ATYPE eq 2 -->
	  	{L_038}: {MINBID}<br />
	  <!-- ENDIF -->
	  	<div class="well" style="padding:4px; margin-bottom:10px;"> {L_116}: {MAXBID}</div>
	  <!-- IF B_HASRESERVE -->
	  	&nbsp;{L_514}
	  <!-- ENDIF -->
	  	<small>{L_119}: {NUMBIDS} {VIEW_HISTORY2}</small><br />
	  <!-- ENDIF -->
	  <!-- IF B_HASBUYER -->
	  	{L_117}:
	  <!-- BEGIN high_bidders -->
	  <!-- IF B_BIDDERPRIV -->
	  	<b>{high_bidders.BUYER_NAME}</b>
	  <!-- ELSE -->
	  	<a href="{SITEURL}profile.php?user_id={high_bidders.BUYER_ID}&auction_id={ID}"><b>{high_bidders.BUYER_NAME}</b></a> <b>(<a href="{SITEURL}feedback.php?id={high_bidders.BUYER_ID}&faction=show">{high_bidders.BUYER_FB}</a>)</b>
	  <!-- ENDIF -->
	  	{high_bidders.BUYER_FB_ICON}<br />
	  <!-- END high_bidders -->
	  <!-- ENDIF -->
	  	{L_023}: {SHIPPING_COST}<br />
	  	{L_026}: {PAYMENTS} <br />
	  	<span class="muted" style="font-weight:normal"> {L_611} {AUCTION_VIEWS} {L_612} </span><br />
	  	<div align="center">
	  		<!-- IF B_COUNTDOWN -->
	  			{L_354}
	  		<!-- ELSE -->
	  		<span style="color:red"><b>{L_118}:</b></span><br />
	  			<div class="well"><div id="2show{ID}"></div ></div>
	  				<script type="text/javascript">
						$(function () {
						var time  = new Date();
						$('#2show{ID}').countdown({until: '{ENDS_IN}'}); 
						});
					</script>
	  		<!-- ENDIF -->
	  	</div>
	</div>
  
  <div class="tab-pane tab-pane fade in" id="shipping">
  	<table class="table table-condensed table-striped table-bordered">
  		<tr>
  			<td width="30%">{L_023}:</td>
  			<td>{SHIPPING_COST}</td>
  		</tr>
  		<!-- IF B_ADDITIONAL_SHIPPING_COST or B_BUY_NOW_ONLY-->
  		<tr>
  			<td width="30%">{L_350_1008}:</td>
  			<td>{ADDITIONAL_SHIPPING_COST}</td>
  		</tr>
  		<!-- ENDIF -->
  		<!-- IF CITY ne '' -->
  		<tr>
  			<td width="30%">{L_010}:</td>
  			<td>{CITY}</td>
  		</tr>
		<!-- ENDIF -->
  		<!-- IF COUNTRY ne '' or ZIP ne '' -->
  		<tr>
  			<td width="30%">{L_014}:</td>
  			<td>{COUNTRY} ({ZIP})</td>
  		</tr>
		<!-- ENDIF -->
		<!-- IF B_SHIPPING_CONDITIONS eq y -->
		<tr>
  			<td width="30%">{L_025}:</td>
  			<td>{SHIPPING}, {INTERNATIONAL}</td>
  		</tr>
  		<!-- ENDIF -->
  		<!-- IF B_SHIPPING_TERMS eq y -->
	  		<!-- IF SHIPPINGTERMS ne '' -->
	  		<tr>
	  			<td width="30%">{L_25_0215}:</td>
	  			<td>{SHIPPINGTERMS}</td>
	  		</tr>
	  		<!-- ENDIF -->
  		<!-- ENDIF -->
  		<tr>
  			<td width="30%">{L_025_C}:</td>
  			<td>{RETURNS}</td>
  		</tr>
  	</table>
  </div>
  
  <div class="tab-pane tab-pane fade in" id="adi">
  <table class="table table-condensed table-striped table-bordered">
  <tr>
  	<td>{L_113}:</td>
  	<td>{ID}</td>
  </tr>
  <!-- auction type -->
  <tr>
  	<td>{L_261}:</td>
  	<td>{AUCTION_TYPE}</td>
  </tr>
  <!-- higher bidder -->
  <tr>
  	<td><!-- IF ATYPE eq 1 -->{L_127}<!-- ELSE -->{L_038}<!-- ENDIF -->:</td>
  	<td>{MINBID}</td>
  </tr>
  <tr>
  	<td>{L_111}:</td>
  	<td>{STARTTIME}</td>
  </tr>
  <tr>
  	<td>{L_112}:</td>
  	<td>{ENDTIME}</td>
  </tr>
  <!-- IF QTY gt 1 -->
  <tr>
  	<td>{L_901}:</td>
  	<td>{QTY}</td>
  </tr>
  <!-- ENDIF -->
  <!-- IF B_HASENDED -->
  <tr>
  	<td>{L_904}</td>
  	<td>&nbsp;</td>
  </tr>
  <!-- ENDIF -->
  <!-- IF B_LOGGED_IN -->
  <!-- IF B_CANCONTACTSELLER -->
  <tr>
  <td colspan="2"><br>
	<form name="report_auction" action="{ASSLURL}report_listing.php" method="post" enctype="multipart/form-data">
	  	<input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">       	
		<input type="hidden" name="seller_id" value="{SELLER_ID}">
		<input type="hidden" name="id" value="{ID}" >
		<input type="hidden" name="title" value="{TITLE}">
		<input type="hidden" name="seller_nick" value="{SELLER_NICK}">
		<input type="hidden" name="sender_name" value="{YOURUSERNAME}">
		<input type="hidden" name="pic_url" value="{PIC_URL}">
		<input class="btn btn-primary" type="submit" name="report_auction" value="{L_30_0181158}" title="{L_1413}">
	</form>
	</td>
  <!-- ENDIF -->
  <!-- ENDIF -->
  </tr>
</table>
  </div>
  <!-- IF B_CONDITION -->
<div class="tab-pane tab-pane fade in" id="Item_Condition">
	<table class="table table-condensed table-striped table-bordered">
	<!-- IF B_ITEM_CONDITION -->
		<tr>
			<td width="35%">{L_103600}:</td>
			<td>{ITEM_CONDITION}</td>
		</tr>
	<!-- ENDIF -->
	<!-- IF B_ITEM_MANUFACTURER -->
		<tr>
			<td width="35%">{L_103700}:</td>
			<td>{ITEM_MANUFACTURER}</td>
		</tr>
	<!-- ENDIF -->
	<!-- IF B_ITEM_MODEL -->
		<tr>
			<td width="35%">{L_103800}:</td>
			<td>{ITEM_MODEL}</td>
		</tr>
	<!-- ENDIF -->
	<!-- IF B_ITEM_COLOUR -->
		<tr>
			<td width="35%">{L_103900}:</td>
			<td>{ITEM_COLOUR}</td>
		</tr>
  	<!-- ENDIF -->
  		<!-- IF B_ITEM_YEAR-->
  		<tr>
  			<td width="35%">{L_104000}:</td>
  			<td>{ITEM_YEAR}</td>
  		</tr>
  	<!-- ENDIF -->
  		<tr>
			<td width="35%">{L_104400}</td>
			<td>{CONDITION_DESCRIPTION}</td>
		</tr>
	</table>
</div>
<!-- ENDIF -->
<div class="tab-pane tab-pane fade well in" id="seller">
	<span><!-- IF AVATAR ne '' -->
		<img src="{AVATAR}" border="0" style="float: left" hspace="5"><!-- ELSE --><img src="{SITEURL}/uploaded/avatar/default.gif" border="0" style="float: left" hspace="5"><!-- ENDIF --></span>
		<a href='{SITEURL}profile.php?user_id={SELLER_ID}&auction_id={ID}'><b>{SELLER_NICK}</b></a> (<a href='{SITEURL}feedback.php?id={SELLER_ID}&faction=show'>{SELLER_TOTALFB}</a>)
    	{SELLER_FBICON}
		<ul class="seller-list">
			<li><!-- IF IS_ONLINE --><img src="{SITEURL}images/online.png">{L_350_10111}<!-- ELSE --><img src="{SITEURL}images/offline.png">{L_350_10112}<!-- ENDIF --></li>
			<li><b>{L_5506}{SELLER_FBPOS}</b></li>
			<li><small>{L_5509}{SELLER_NUMFB}{L__0151}</small></li>
			<!-- IF SELLER_FBNEG ne 0 -->
				<li><small>{SELLER_FBNEG}</small></li>
			<!-- ENDIF -->
			<li><small>{L_5508}{SELLER_REG}</small></li>
			<small><a href="{SITEURL}active_auctions.php?user_id={SELLER_ID}">{L_213}</a> </small>
			<!-- IF B_CANCONTACTSELLER --><br>
				<!-- IF B_SETFSM -->
				<form name="fav" action="{SITEURL}products/{SEO_TITLE}-{ID}" method="post" enctype="multipart/form-data">
				  	<input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">       	
					<input type="hidden" name="faveseller" value="yes">
					<input class="btn btn-small btn-primary" type="submit" name="report_auction" value="{L_FSM1}" title="{L_FSM1}">
				</form>
				<!-- ENDIF --><small><font color='red'>{FSM}</font></small>
			<!-- ENDIF -->
		</ul>
</div>

<div class="tab-pane tab-pane fade in" id="history">
    <!-- IF B_SHOWHISTORY -->
      <table class="table table-condensed table-striped table-bordered">
        <tr>
          <th width="33%" align="center"><small>{L_176}</small></th>
          <th width="33%" align="center"><small>{L_130}</small></th>
          <th width="33%" align="center"><small>{L_175}</small></th>
          <!-- IF ATYPE eq 2 -->
          <th width="33%" align="center"><small>{L_284}</small></th>
          <!-- ENDIF -->
        </tr>
        <!-- BEGIN bidhistory -->
        <tr valign="top" {bidhistory.BGCOLOUR}>
          <td><!-- IF B_BIDDERPRIV -->
            <small>{bidhistory.NAME}</small>
            <!-- ELSE -->
            <a href="{SITEURL}profile.php?user_id={bidhistory.ID}"><small>{bidhistory.NAME}</small></a>
            <!-- ENDIF -->
          </td>
          <td align="center"><small>{bidhistory.BID}</small> </td>
          <td align="center"><small>{bidhistory.WHEN}</small> </td>
          <!-- IF ATYPE eq 2 -->
          <td align="center"><small>{bidhistory.QTY}</small> </td>
          <!-- ENDIF -->
        </tr>
        <!-- END bidhistory -->
      </table>
    <!-- ENDIF -->
    </div>
</div></div>
<!-- INCLUDE bid.tpl -->
<div class="span12">
	<ul class="nav nav-tabs">
		<li class="active"><a href="#description" data-toggle="tab">{L_018}</a></li>
		<!-- IF B_HASGALELRY -->

		<!-- IF B_HAS_QUESTIONS -->
		<li><a href="#question" data-toggle="tab">{L_3500_1015489}</a></li>
		<!-- ENDIF -->
		<!-- ENDIF -->
	</ul>
	<div class="tab-content">
		<div class="tab-pane fade in active" id="description">
			<div class="well"><h3>{L_018}</h3>
			{AUCTION_DESCRIPTION}</div>
		</div>
		<div class="tab-pane tab-pane fade in" id="question">
			<!-- IF B_HAS_QUESTIONS -->
		  	<!-- BEGIN questions -->
		  	<table class="table table-condensed table-striped table-bordered">
		  	<tr>
		  		<td><strong>{L_5239}</strong></td>
		  	</tr>
		  	<!-- BEGIN conv -->
		  	<tr>
		   		<td><strong>{questions.conv.BY_WHO}:</strong> <small>{questions.conv.MESSAGE}</small></td>
		   	</tr>
		   	<!-- END conv -->
		   	</table>
		  	<!-- END questions -->
			<!-- ENDIF -->
		</div>


</div></div>
