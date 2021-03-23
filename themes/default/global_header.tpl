<!DOCTYPE html>
<html dir="{DOCDIR}" lang="{LANGUAGE}">
<head>
<!-- INCLUDE js.tpl -->
<link rel="stylesheet" type="text/css" href="{SITEURL}themes/{THEME}/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="{SITEURL}themes/{THEME}/slick/slick-theme.css"/>
</head>
<body>

<div id="toppanel">
	<div id="panel">
		<div class="content clearfix">
			<div class="left">
				<!-- IF B_LOGGED_IN -->
					<h1>{L_25_0083}</h1>
					<ul class="nav nav-stacked">
						<!-- IF B_DIGITAL_ITEM_ON -->
						<li><a href="{SITEURL}my_downloads.php">{L_3500_1015430} {MY_DOWNLOADS}</a></li>
						<!-- ENDIF -->
	        			<li><a href="{SITEURL}auction_watch.php">{L_471} {AUC_KEYWORDS}</a></li>
	        			<li><a href="{SITEURL}item_watch.php">{L_472} {BENDING_SOON}</a></li>
	        			<li><a href="{SITEURL}yourbids.php">{L_620} {BOUTBID}</a></li>
	        			<li><a href="{SITEURL}buying.php">{L_454} {ITEMS_WON}</a></li>
	        			<li><a href='{SITEURL}fsm.php'>{L_FSM7} {FAVSELLER}</a></li>
        			</ul>
        		<!-- ELSE -->
        			{L_863}
				<!-- ENDIF -->
			</div>
			<div class="left right">
				<!-- IF B_LOGGED_IN -->
					<!-- IF B_CAN_SELL -->
      					<h1>{L_25_0082}</h1>
      					<ul class="nav nav-stacked">
	      					<li><a href="{SITEURL}selleremails.php">{L_25_0188}</a></li>
	      					<li><a href="{SITEURL}yourauctions_p.php">{L_25_0115} {PENDING_AUCTIONS}</a></li>
	      					<li><a href="{SITEURL}yourauctions.php">{L_203} {ACTIVE_AUCTIONS}</a></li>
	        				<li><a href="{SITEURL}yourauctions_c.php">{L_204} {CLOSED_AUCTIONS}</a></li>
	        				<li><a href="{SITEURL}yourauctions_s.php">{L_2__0056} {SUSPENDED_AUCTIONS}</a></li>
	        				<li><a href="{SITEURL}yourauctions_sold.php">{L_25_0119} {SOLD_ITEM4}</a></li>
        				</ul>
        			<!-- ENDIF -->
        		<!-- ELSE -->
        		<!-- ENDIF -->
			</div>
			<div class="left ">	
			<!-- IF B_LOGGED_IN -->
      				<h1>{L_205}</h1>
      				<ul class="nav nav-stacked">
	      				<li><a href="{SITEURL}support">{L_3500_1015432} {SUPPORT}</a></li>
	      				<li><a href="{SITEURL}user_menu.php">{L_622}</a></li>
	      				<li><a href="{SITEURL}edit_data.php?">{L_621}</a></li>
	      				<li><a href="{SITEURL}yourfeedback.php">{L_208} {FEEDBACK}</a></li>
	      				<li><a href="{SITEURL}buysellnofeedback.php">{L_207} {FBTOLEAVE2}</a></li>
	      				<li><a href="{SITEURL}mail.php">{L_623} {NEW_MESSAGES2}</a></li>
	      				<li><a href="{SITEURL}outstanding.php">{L_422} {OUTSTANDING}</a></li>
	      				<!-- IF B_BANNERMANAGER -->
	      				<li><a href="{SITEURL}managebanners.php">{L_350_1012111} {BANNER_ACC}</a></li>
	      				<!-- ENDIF -->
      				</ul>
			<!-- ELSE -->
				<form class="login-home" name="login" action="{SITEURL}user_login.php" method="post">
					<h1>{L_181}</h1>
					<label class="grey" for="log">{L_221}:</label>
					<input type="text" name="username" maxlength="70" id="username" placeholder="{L_003}">
					<label class="grey" for="pwd">{L_004}:</label>
					<input type="password" name="password" id="password" placeholder="{L_004}">
        	</div>
        	<div class="left ">
        			<label><input type="checkbox" name="rememberme" id="rememberme" value="1"> &nbsp;{L_25_0085}</label>
        			<label><input type="checkbox" id="hide_online" name="hide_online" value="y"> &nbsp;Hide my online status</label>
					<label><a class="btn btn-danger" href="{SITEURL}forgotpasswd.php">{L_215}</a></label>
        			<div class="clear"></div>
        			<!-- IF B_FBOOK_LOGIN -->
            			<div id="fb-root"></div>
            			<label><a class="btn" onclick="{B_FB_LINK}();" id="popoverData" href="#" data-content="{L_350_10193}" rel="popover" data-placement="bottom" data-original-title="{L_350_10204_d}" data-trigger="hover">{L_350_10204_d}</a></label>
            		<!-- ENDIF -->
					<label><input type="submit" name="action" value="{L_052}" class="btn btn-primary"></label>
				</form>
			<!-- ENDIF -->
			</div>
		</div>
	</div> 	
	<div class="tab hidden-phone">
		<ul class="login">
			<li class="left">&nbsp;</li>
			<li>{L_200} <!-- IF B_LOGGED_IN -->{YOURUSERNAME}<br><a href="{SITEURL}logout.php">{L_245}</a><!-- ELSE -->Guest!<!-- ENDIF --></li>
			<li class="sep">|</li>
			<li id="toggle">
				<a id="open" class="open" href="#"><!-- IF B_LOGGED_IN -->{L_25_0081}<!-- ELSE -->{L_221}</a><!-- ENDIF -->
				<a id="close" style="display: none;" class="closed" href="#">Close</a>			
			</li>
			<li class="right">&nbsp;</li>
		</ul> 
	</div> 
</div> 
	
	
<div class="navbar navbar-fixed-top hidden-desktop" >
  <div class="navbar-inner">
    <ul class="nav pull-left" style="margin:0;">
      <li class="active" style="cursor: pointer"><a style="cursor: pointer" href="{SITEURL}home?"><i class="icon-home"></i></a></li>
      <li class="active" style="cursor: pointer; margin-left:2px"><a style="cursor: pointer" href="{SITEURL}browse.php?id=0"><i class="icon-list"></i></a></li>
    </ul>
    <ul class="nav pull-right">
      <!-- IF B_LOGGED_IN -->
      <li><a href="{SITEURL}user_menu.php?cptab=summary"><i class="icon-user"></i> {L_25_0081}</a></li>
      <li><a href="{SSLURL}logout.php?"><i class="icon-lock"></i> {L_245}</a></li>
      <!-- ELSE -->
      <li><a href="{SSLURL}register.php"><i class="icon-user"></i> {L_235}</a></li>
      <li class="divider-vertical"></li>
      <li><a href="{SSLURL}user_login.php?"><i class="icon-share-alt"></i> {L_052}</a></li>
      <!-- ENDIF -->
    </ul>
  </div>
</div>	
	
	
	
	
	
	
	
	
	
	
	
<div class="navbar navbar-fixed-top hidden-desktop" >
  <div class="navbar-inner">
    <ul class="nav pull-left" style="margin:0;">
      <li class="active" style="cursor: pointer"><a style="cursor: pointer" href="{SITEURL}home?"><i class="icon-home"></i></a></li>
      <li class="active" style="cursor: pointer; margin-left:2px"><a style="cursor: pointer" href="{SITEURL}browse.php?id=0"><i class="icon-list"></i></a></li>
    </ul>
    <ul class="nav pull-right">
      <!-- IF B_LOGGED_IN -->
      <li><a href="{SITEURL}user_menu.php?cptab=summary"><i class="icon-user"></i> {L_25_0081}</a></li>
      <li><a href="{SSLURL}logout.php?"><i class="icon-lock"></i> {L_245}</a></li>
      <!-- ELSE -->
      <li><a href="{SSLURL}new_account"><i class="icon-user"></i> {L_235}</a></li>
      <li class="divider-vertical"></li>
      <li><a href="{SSLURL}user_login.php?"><i class="icon-share-alt"></i> {L_052}</a></li>
      <!-- ENDIF -->
    </ul>
  </div>
  
</div>
<div class="container">
<div class="row">
    
  <div class="span12" style="position:relative">
    <div class="row">
        
    <br>
      <div class="span4 logo-holder">
      <br><br>
        <a href="{SITEURL}"><img src="{SITEURL}uploaded/logo/{LOGO}" border="0" alt="{SITENAME}"></a>
    </div>
      <div class="span8">
        <br><div class="hidden-phone" style="float:right;margin-top:5px; text-align:right">{BANNER}{HEADER_ADSENSE}</div>
      </div>
      <!-- IF B_MULT_LANGS -->
      <div class="span12">
		<div class="well well-small flags-icons"><small><span>{L_2__0001}:</span></small> {FLAGS} <div class="hidden-phone" style="float:right" class="muted"><small style="font-size:9px">{HEADERCOUNTER}</small></div></div>
	</div>
	<!-- ELSE -->
	<div class="span12">
		<span style="float:right" class="muted"><small style="font-size:9px">{HEADERCOUNTER}</small></span>
	</div>
	<!-- ENDIF -->
    </div>
  </div>
</div>


<div class="navbar">
  <div class="navbar-inner">
    <div class="container"> <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </a>
      <div class="nav-collapse collapse">
        <ul class="nav">
          <li class="hidden-phone hidden-tablet" style="cursor: pointer"><a style="cursor: pointer" href="{SITEURL}home"><i class="icon-home"></i></a></li>
          <li class="divider-vertical"></li>
          <li class="hidden-phone hidden-tablet"><a href="{SITEURL}/browse.php?id=0"> {L_104}</a></li>
          <li class="divider-vertical"></li>
         <!-- IF B_CAN_SELL -->
				<li><a href="{SITEURL}select_category.php">{L_028}</a></li>
<!-- ENDIF -->
<!-- IF B_LOGGED_IN -->
				<li><a href="{SITEURL}user_menu.php">{L_622}</a></li>
				<li><a href="{SITEURL}logout.php">{L_245}</a></li>
<!-- ELSE -->
				<li><a href="{SITEURL}register.php">{L_235}</a></li>
				          <li class="divider-vertical hidden-phone"></li>
				<li><a href="{SITEURL}user_login.php">{L_052}</a></li>
<!-- ENDIF -->
<!-- IF B_BOARDS -->
				<li><a href="{SITEURL}boards.php">{L_5030}</a></li>
<!-- ENDIF -->

          <!-- IF B_FEES and B_HELPBOX eq false -->
          <li class="divider-vertical hidden-phone"></li>
      	  <li><a href="{SITEURL}fees.php">{L_25_0012}</a></li>
      	  <!-- ENDIF -->
          <!-- IF B_HELPBOX -->
          <li class="divider-vertical hidden-phone"></li>

          <!-- ENDIF -->
          <li class="divider-vertical hidden-phone"></li>
          <form class="navbar-form pull-left" action="{SITEURL}search.php" method="get" enctype="multipart/form-data">
            <input type="text" class="search-query" placeholder="{L_103}" name="q" size="50" value="{Q}">
            <button type="submit" class="btn btn-success" name="sub" value="{L_399}" >{L_199}</button>
            <a class="btn btn-info" href="{SITEURL}adsearch.php">{L_464}</a>
          </form>
        </ul>
      </div>
    </div>
  </div>
</div>
