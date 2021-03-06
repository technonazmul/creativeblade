<div>
  <div class="hero-unit"><h2>{L_219}<a href="{SITEURL}profile.php?user_id={USER_ID}">{USERNAME}</a> <a href="{SITEURL}rss.php?feed=9&user_id={USER_ID}"><img src="{SITEURL}images/rss.png" alt="RSS" border="0"></a></h2></div>
  <small><span class="muted">{L_5117} {PAGE} {L_5118} {PAGES}</span></small>
  <table class="table table-bordered">
    <tr align="center">
      <th width="10%">{L_167}</th>
      <th width="45%">{L_168}</th>
      <th width="15%">{L_169}</th>
      <th class="hidden-phone" width="15%">{L_170}</th>
      <th width="15%">{L_171}</th>
    </tr>
    <!-- BEGIN auctions -->
    <tr style="text-align:center;" class="{auctions.BGCOLOUR}">
      <td width="10%"><a href="{SITEURL}products/{auctions.SEO_TITLE}-{auctions.ID}"><img src="{auctions.PIC_URL}" style="max-width:{MAXIMAGESIZE}px; max-height:{MAXIMAGESIZE}px; width: auto; height: auto;" border="0" alt="image"></a></td>
      <td width="45%"><a href="{SITEURL}products/{auctions.SEO_TITLE}-{auctions.ID}">{auctions.TITLE}</a>
      </td>
      <td width="15%">
      	<!-- IF auctions.B_BNONLY -->
      		<!-- IF auctions.B_FREEITEM -->
				<div class="badge badge-warning">{L_3500_1015748}</div><br><br>
				<a class="btn btn-primary" href="{SITEURL}buy_now.php?id={auctions.ID}">{L_3500_1015747}</a>
			<!-- ELSE -->
      			<img src="{auctions.BNIMG}" border="0" class="buynow"><br><br>
        		{auctions.BNFORMAT}<br /><a class="btn btn-primary" href="{SITEURL}buy_now.php?id={auctions.ID}">{L_350_1015402}</a>
        	<!-- ENDIF -->
        <!-- ELSE -->
        {L_124}: {auctions.MBIDFORMAT}<br />
        {L_116}: {auctions.BIDFORMAT}<br /><a class="btn btn-primary" href="{SITEURL}products/{auctions.SEO_TITLE}-{auctions.ID}">{L_350_1015403}</a>
        <!-- IF auctions.B_BUY_NOW and not auctions.B_BNONLY -->
        <br><br>{auctions.BNFORMAT}<br /><a class="btn btn-primary" href="{SITEURL}buy_now.php?id={auctions.ID}">{L_350_1015402}</a>
        <!-- ENDIF -->
        <!-- ENDIF -->
      </td>
      <td class="hidden-phone" width="15%">{auctions.NUM_BIDS} </td>
      <td width="15%">{auctions.TIMELEFT}</td>
    </tr>
    <!-- BEGINELSE -->
    <tr align="center">
      <td colspan="5">{L_910}</td>
    </tr>
    <!-- END auctions -->
  </table>
  <!-- IF B_MULPAG -->
  <div class="pagination pagination-centered">
    <ul>
      <!-- IF B_NOTLAST -->
      <li><a href="active_auctions.php?PAGE={PREV}&user_id={USER_ID}">{L_5119}</a></li>
      <!-- ENDIF -->
      {PAGENA}
      <!-- IF B_NOTLAST -->
      <li><a href="active_auctions.php?PAGE={NEXT}&user_id={USER_ID}">{L_5120}</a></li>
      <!-- ENDIF -->
    </ul>
  </div>
  <!-- ENDIF -->

