<ul class="nav nav-tabs">
	<!-- IF B_FEATURED_ITEMS -->
	<li class="active"><a href="#featured-item" data-toggle="tab">{L_350_10206}</a></li>
	<!-- ENDIF -->
	<li <!-- IF B_FEATURED_ITEMS --><!-- ELSE -->class="active"<!-- ENDIF -->><a href="#standard-auction" data-toggle="tab">{L_1021}</a></li>
</ul>
<div class="tab-content">
<!-- IF B_FEATURED_ITEMS -->
	<div class="tab-pane fade in active" id="featured-item">
		<table class="table table-condensed table-striped table-bordered table-hover">
		  <tr>
		    <th class="tr-image"> <small>{L_741}</small> </th>
		    <th class="tr-title"> <small>{L_017}</small> </th>
		    <th width="15%"> <small>{L_169}</small> </th>
		    <th width="10%" class="hidden-phone tr-bindsno"> <small>{L_319}</small> </th>
		    <th width="8%" class="hidden-phone tr-bindsno"> <small>{L_170}</small> </th>
		    <th width="15%" class="tr-timeleft hidden-phone"> <small>{L_171}</small> </th>
		  </tr>
		  <!-- BEGIN featured_items -->
		  <tr class="{featured_items.ROWCOLOUR}"<!-- IF featured_items.B_BOLD -->style="font-weight: bold;"<!-- ENDIF -->>
		  	<td class="mini-img"><div class="tdb-image"><a href="{SITEURL}products/{featured_items.SEO_TITLE}-{featured_items.ID}"><img src="{featured_items.IMAGE}" style="max-width:{MAXIMAGESIZE}px; max-height:{MAXIMAGESIZE}px; width: auto; height: auto;"></a></div></td>
		    <td><span class="list-title"><a href="{SITEURL}products/{featured_items.SEO_TITLE}-{featured_items.ID}">{featured_items.TITLE}</a></span>
		      <!-- IF B_SUBTITLE && featured_items.SUBTITLE ne '' -->
		      <br />
		      <span class="truncate-table"> {featured_items.SUBTITLE} </span>
		      <!-- ENDIF -->
		    </td>
		    <td> {featured_items.BIDFORM} <em>{featured_items.BUY_NOW}</em></td>
		    <td class="hidden-phone"><small>{featured_items.SHIPPING_COST}</small> </td>
		    <td class="hidden-phone"><small><span class="badge badge-success">{featured_items.NUMBIDS}</span></small> </td>
		    <td class="hidden-phone"><small><span class="label label-info">{featured_items.TIMELEFT}</span></small> </td>
		  </tr>
		  <!-- END featured_items -->
		</table>
	</div>
	<!-- ENDIF -->
	<div class="tab-pane fade in <!-- IF B_FEATURED_ITEMS --><!-- ELSE -->active<!-- ENDIF -->" id="standard-auction">
		<table  class="table table-condensed table-striped table-bordered table-hover">
		  <tr>
		    <th class="tr-image"> <small>{L_741}</small> </th>
		    <th class="tr-title"> <small>{L_017}</small> </th>
		    <th width="15%"> <small>{L_169}</small> </th>
		    <th width="10%" class="hidden-phone tr-bindsno"> <small>{L_319}</small> </th>
		    <th width="8%" class="hidden-phone tr-bindsno"> <small>{L_170}</small> </th>
		    <th width="15%" class="tr-timeleft  hidden-phone"> <small>{L_171}</small> </th>
		  </tr>
		  <!-- BEGIN items -->
		  <tr class="{items.ROWCOLOUR}"  <!-- IF items.B_BOLD -->style="font-weight: bold;"<!-- ENDIF -->>
		  	<td  class="mini-img"><div class="tdb-image"><a href="{SITEURL}products/{items.SEO_TITLE}-{items.ID}"><img src="{items.IMAGE}" style="max-width:{MAXIMAGESIZE}px; max-height:{MAXIMAGESIZE}px; width: auto; height: auto;"></a></div></td>
		    <td><span class="list-title"><a href="{SITEURL}products/{items.SEO_TITLE}-{items.ID}">{items.TITLE}</a></span>
		      <!-- IF B_SUBTITLE && items.SUBTITLE ne '' -->
		      <br />
		      <span class="truncate-table"> {items.SUBTITLE} </span>
		      <!-- ENDIF -->
		    </td>
		    <td> {items.BIDFORM} <em>{items.BUY_NOW}</em> </td>
		    <td class="hidden-phone"><small>{items.SHIPPING_COST}</small> </td>
		    <td  class="hidden-phone"  style="text-align:center;"><small><span class="badge badge-success">{items.NUMBIDS}</span></small> </td>
		    <td class="hidden-phone"><small><span class="label label-info">{items.TIMELEFT}</span></small> </td>
		  </tr>
		  <!-- END items -->
		</table>
	</div>
</div>

<div class="pagination pagination-centered">
  <ul>
    <li>{PREV}</li>
    <!-- BEGIN pages -->
    <li>{pages.PAGE}</li>
    <!-- END pages -->
    <li>{NEXT}</li>
  </ul>
</div>
</div>
