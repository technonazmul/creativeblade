
<div class="row">
	<div class="span12">
		<div class="row">
			<div class="span3">
 				<ul class="well nav nav-list ">
    				<li class="nav-header">{L_276}</li>
    				<li class="divider"></li>
    				<li><a href="{SITEURL}browse.php?id=0"><i class="icon-tags"></i> {L_277}</a></li>
    				<li class="divider"></li>
    				<!-- BEGIN cat_list -->
    				<li> 
					<a href="browse.php?id={cat_list.ID}">{cat_list.IMAGE}{cat_list.NAME}</a></li>
    				<!-- END cat_list -->
  				</ul><br>
  					{INDEX_ADSENSE_1}
  					<div align="center" class="hidden-phone">
<a href="http://greenhost247.com/" target="_blank"><img src="http://dedicatedhost247.com/ads/green_dedicated-server-hosting.jpg"></a>
</div>
			</div>
			
			<div class="span6">
			<div class="row">
  				<div class="span6">
  					{INDEX_ADSENSE_2}
  					
  				</div>
			</div>
			
				    			



<div class="ban_slider">
    	         <div>
    	       	   <img class="img-advert" src="{SITEURL}slider/ban1.jpg">
    	       </div>
    	         <div>
    	       	   <img class="img-advert" src="{SITEURL}slider/ban2.jpg">
    	       </div>
    	       <div>
    	       	   <img class="img-advert" src="{SITEURL}slider/ban3.jpg">
    	       </div>
    	         <div>
    	       	   <img class="img-advert" src="{SITEURL}slider/ban4.jpg">
    	       </div>
 </div>
			
	<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
  <script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
  <script type="text/javascript" src="{SITEURL}themes/{THEME}/slick/slick.min.js"></script>			
			
			
<script>
	$(document).ready(function(){
		
	 $('.ban_slider')
        .slick({
            dots: true,
            arrows: false,
            autoplay: true
        });	
		
	});
	
</script>	




  				<div class="row">
  					<div class="span6">
      					<h3>{L_NAY_01}</h3>
    				</div>
    				<!-- BEGIN featured -->
    				<div class="span2" align="center"> 
    					<ul class="thumbnails">
    						<li class="span2">
    							<div class="thumbnail">
    								<div><a class="thumbnail" href="{SITEURL}item.php?id={featured.ID}"><img class="img-rounded media-grid" src="{featured.IMAGE}" alt="{featured.TITLE}" style="max-width:120px; max-height:100px; width: auto; height: auto;"></a>
      								<h5><a href="{SITEURL}item.php?id={featured.ID}">{featured.TITLE}</a></h5>
         							<p><small>{featured.BID} <br /><span class="muted">{L_171}<br>{featured.ENDS}</span></small></p></div>
      							</div>
      						</li>
      					</ul>
      				</div>
    				<!-- END featured -->
  				</div>
  	



	
	
  			<!-- IF B_HOT_ITEMS -->
  				<hr  />
  				<div class="row">
    				<div class="span6">
      					<h3>{L_279}</h3>
    				</div>
  				</div>
  				<div class="row">
    				<!-- BEGIN hotitems -->
    				<div class="span2" align="center">
    					<ul class="thumbnails">
    						<li class="span2">
    							<div class="thumbnail">
    								<div><a class="thumbnail" href="{SITEURL}item.php?id={hotitems.ID}"><img class="img-rounded" src="{hotitems.IMAGE}" alt="{hotitems.TITLE}" style="max-width:120px; max-height:100px; width: auto; height: auto;"></a>
      								<h5><a href="{SITEURL}item.php?id={hotitems.ID}">{hotitems.TITLE}</a></h5>
         							<p><small>{hotitems.BID} <br /><span class="muted">{L_171}<br>{hotitems.ENDS}</span></small></p></div>
      							</div>
      						</li>
      					</ul>
      				</div>
    				<!-- END hotitems -->
  				</div>
  			<!-- ENDIF -->
   			<!-- IF B_AUC_LAST -->
  				<hr  />
  				<div class="row">
    				<div class="span3">
      					<h3>{L_278}</h3>
      					<table class="table table-condensed">
        					<!-- BEGIN auc_last -->
        					<tr class="well">
          						<td style="text-align:center; width:50px;"><a href="{SITEURL}item.php?id={auc_last.ID}"> <img class="img-polaroid" src="{auc_last.IMAGE}" alt="{auc_last.TITLE}" style="max-height:40px; max-width:40px; width: auto; height: auto;"/></a></td>
          						<td><a href="{SITEURL}item.php?id={auc_last.ID}">{auc_last.TITLE}</a><br />
            						<span class="muted"><small>{auc_last.DATE}</small></span>
            					</td>
        					</tr>
        					<!-- END auc_last -->
      					</table>
    			</div>
    		<!-- ENDIF -->
    		<!-- IF B_AUC_ENDSOON -->
    			<div class="span3">
      				<h3>{L_280} test</h3>
      					<table class="table table-condensed">
        					<!-- BEGIN end_soon -->
        					<tr class="well">
        					  
          						<td style="text-align:center; width:50px;"><a href="{SITEURL}item.php?id={end_soon.ID}"> <img class="img-polaroid" src="{end_soon.IMAGE}" alt="{end_soon.TITLE}" style="max-height:40px; max-width:40px; width: auto; height: auto;"/></a></td>
          						<td><a href="{SITEURL}item.php?id={end_soon.ID}">{end_soon.TITLE}</a><br />
            						<span class="muted"><small>{end_soon.DATE}</small></span>
            					</td>
        					</tr>
        					<!-- END end_soon -->
      					</table>
    			</div>
    		<!-- ENDIF -->
  			</div>
		</div>
		<div class="span3">
  			  		<!-- IF B_NEWS_BOX -->
  		<div style="padding: 8px 0;">
    		<ul class="well nav nav-list ">
      			<li class="nav-header">{L_282}</li>
      			<li class="divider"></li>
      			<!-- BEGIN newsbox -->
      			<small><a data-fancybox-type="iframe" class="infoboxs" href="{SITEURL}news/{newsbox.SEO_TITLE}-{newsbox.ID}">{newsbox.TITLE}</a><br />
      			<span class="muted">{newsbox.DATE}</span></small>
      			<hr />
      			<!-- END newsbox -->
      			<div class="clearfix"></div>
    		</ul>
  		</div>
  		<!-- ENDIF -->
  		<!-- IF B_HELPBOX -->
  		<div style=" padding: 8px 0;">
    		<ul class="well nav nav-list">
     			<li class="nav-header">{L_281}</li>
      			<li class="divider"></li>
      			<!-- IF B_BOARDS -->
      			<li><a href="{SITEURL}boards.php">{L_5030}</a></li>
      			<!-- ENDIF -->
      			<!-- IF B_FEES -->
      			<li><a href="{SITEURL}fees.php">{L_25_0012}</a></li>
      			<!-- ENDIF -->
      			<li><a href="{SITEURL}email_request_support.php">Contact Us</a></li>
      			<!-- BEGIN helpbox -->
      			<li><a href="{SITEURL}viewhelp.php?cat={helpbox.ID}" alt="faqs" data-fancybox-type="iframe" class="infoboxs">{helpbox.TITLE}</a></li>
      			<!-- END helpbox -->
   		 	</ul>
  		</div>
  	<!-- ENDIF -->
  	<br>{INDEX_ADSENSE_3}
  	
<div align="center">
<a href="http://dedicatedhost247.com" target="_blank"><img src="http://dedicatedhost247.com/ads/dedicatehost247.com.jpg" /></a>
</div>

</div>

