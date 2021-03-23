<!-- INCLUDE sell_js.tpl -->
<div class="well">
  <legend> {TITLE}</legend>
  <a name="goto"></a>
  <!-- IF PAGE eq 0 -->
  <form name="sell" class="form-horizontal"  action="{ASSLURL}sell.php" method="post" enctype="multipart/form-data">
    <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
    <!-- IF ERROR ne '' -->
    <div class="alert">{ERROR}</div>
    <!-- ENDIF -->
    <div class="control-group">
      <label class="control-label"><span class="muted">{L_287}</span></label>
      <div class="controls">
        <div style="padding:5px;"> {CAT_LIST1}
          <!-- IF CAT_LIST2 ne '' -->
          <br /><br />{CAT_LIST2}
          <!-- ENDIF -->
          <a href="{SITEURL}select_category.php?change=yes" class="btn btn-small btn-info">{L_5113}</a> </div>
      </div>
    </div>
    <div class="control-group">
      <label class="control-label">{L_017}</label>
      <div class="controls">
        <input type="text" name="title" size="40" maxlength="70" value="{AUC_TITLE}">
      </div>
    </div>
    <!-- IF B_SUBTITLE -->
    <div class="control-group">
      <label class="control-label">{L_806}</label>
      <div class="controls">
        <input type="text" name="subtitle" id="subtitle" size="40" maxlength="70" value="{AUC_SUBTITLE}">
      </div>
    </div>
    <!-- ENDIF -->
    <!-- IF B_CONDITION -->
    <div class="control-group">
      <label class="control-label">{L_103600}</label>
      <div class="controls">
        {ITEM_CONDITION} 
		  <a href="{SITEURL}meanings.php" alt="description meanings" data-fancybox-type="iframe" class="btn converter btn-small btn-info">{L_104400}</a>
	  </div>
	</div>
	 <div class="control-group">
      <label class="control-label">{L_103700}</label>
      <div class="controls">
 		<input type="text" name="item_manufacturer" id="item_manufacturer" size="32" maxlength="32" value="{ITEM_MANUFACTURER}"> 
 	  </div>
	</div>
	<div class="control-group">
      <label class="control-label">{L_103800}</label>
      <div class="controls">
 		<input type="text" name="item_model" id="item_model" size="32" maxlength="32" value="{ITEM_MODEL}"> 
 	  </div>
	</div>
	<div class="control-group">
      <label class="control-label">{L_103900}</label>
      <div class="controls">
 		<input type="text" name="item_colour" id="item_colour" size="32" maxlength="32" value="{ITEM_COLOUR}"> 
 	  </div>
	</div>
	<div class="control-group">
      <label class="control-label">{L_104000}</label>
      <div class="controls">
 		<input type="text" name="item_year" id="item_year" size="4" maxlength="4" value="{ITEM_YEAR}"> 
 	  </div>
	</div>
	<!-- ENDIF -->

    <div class="control-group">
      <label class="control-label">{L_018}</label>
      <div class="controls">
        <div class=""> {AUC_DESCRIPTION}
          <input type="hidden" name="imgtype" value="1">
        </div>
        <div class="clear"></div>
      </div>
    </div>
    <hr  />
    <input type="hidden" name="imgtype" value="1">
	<!-- IF B_GALLERY -->	
	<div align="center">													
	{L_663}<br>
	<p>{MAXPICS}</p>
	<a id="pics" href="{SITEURL}upldgallery.php" alt="gallery" data-fancybox-type="iframe" class="imaging btn btn-primary" data-content="{L_1049}" rel="popover" data-placement="bottom" data-original-title="{L_677}" data-trigger="hover">{L_677}</a>
    <input type="hidden" name="numimages" value="{NUMIMAGES}" id="numimages">
	</div>	
	<!-- ENDIF -->
	<hr />
    <div class="control-group">
      <label class="control-label">{L_257}</label>
      <div class="controls">{ATYPE}</div>
    </div>
    <!-- IF B_FREEITEM -->
	<div class="control-group">
    	<label class="control-label">{L_3500_1015744}</label>
	    <div class="controls">
	    	<label class="radio ">
        		<input data-content="{L_3500_1015752}" rel="popover" data-original-title="{L_3500_1015744}" data-trigger="hover" type="radio" name="sellType" id="free_item_yes" value="free" {FREEITEM_Y}>
        		{L_3500_1015745}
        	</label>
        	<label class="radio ">
        		<input data-content="{L_3500_1015753}" rel="popover" data-original-title="{L_3500_1015744}" data-trigger="hover" type="radio" name="sellType" id="free_item_no" value="sell" {FREEITEM_N}>
        		{L_3500_1015746}
        	</label>
		</div>
    </div>
    <!-- ENDIF -->
    <!-- IF B_SELL_DI -->
    <div class="control-group hide1" {DIGITAL_ITEM}>
      <label class="control-label">{L_350_1010}</label>
      <div class="controls">
      	<a href="{SITEURL}digital_item.php" data-fancybox-type="iframe" class="infoboxs btn btn-primary">{L_677_a}</a>
      </div>
    </div>
	<!-- ENDIF -->
    <div class="control-group hide9">
      <label class="control-label">{L_258}</label>
      <div class="controls">
        <input type="text" name="iquantity" id="iqty" size="5" value="{ITEMQTY}" {ITEMQTYD}>
      </div>
    </div>
    <hr />
    <div class="control-group hide2">
      <label class="control-label" id="minval_text">{MINTEXT}</label>
      <div class="controls">
        <input type="text" size="10" name="minimum_bid" id="min_bid" value="{MIN_BID}" {BID_PRICE}>
        <small>{CURRENCY}&nbsp;&nbsp;(<a href="{SITEURL}converter.php" alt="converter" class="new-window">{L_5010}</a>)</small> </div>
    </div>
    <div class="control-group hide3">
      <label class="control-label">{L_023}</label>
      <div class="controls">
        <input type="text" size="10" name="shipping_cost" id="shipping_cost" value="{SHIPPING_COST}"<!-- IF SHIPPING1 eq '' -->disabled="disabled"<!-- ENDIF -->>
        <small>{CURRENCY}&nbsp;&nbsp;(<a href="{SITEURL}converter.php" alt="converter" class="new-window">{L_5010}</a>)</small> </div>
    </div>
    <div class="control-group hide4">
      <label class="control-label">{L_350_1008}</label>
      <div class="controls">
        <input id="popoverData" data-content="{L_3500_1015739}" rel="popover" data-original-title="{L_350_1008}" data-trigger="hover" type="text" size="10" name="additional_shipping_cost" id="additional_shipping_cost" value="{ADDITIONAL_SHIPPING_COST}" <!-- IF SHIPPING1 eq '' -->disabled="disabled"<!-- ENDIF -->>
        <small>{CURRENCY}&nbsp;&nbsp;(<a href="{SITEURL}converter.php" alt="converter" class="new-window">{L_5010}</a>)</small> </div>
    </div>
    <div class="control-group hide5">
      <label class="control-label">{L_021}</label>
      <div class="controls">
        <label class="radio inline">
        <input type="radio" name="with_reserve" id="with_reserve_no" value="no" {RESERVE_N}>
        {L_029}</label>
        <label class="radio inline">
        <input type="radio" name="with_reserve" id="with_reserve_yes" value="yes" {RESERVE_Y}>
        {L_030}</label>
        <input type="text" name="reserve_price" id="reserve_price" size="10" value="{RESERVE}" {BN_ONLY}>
        <small>{CURRENCY}&nbsp;&nbsp;(<a href="{SITEURL}converter.php" alt="converter" class="new-window">{L_5010}</a>)</small> </div>
    </div>
    <!-- IF B_BN_ONLY -->
    <div class="control-group hide6">
      <label class="control-label">{L_30_0063}</label>
      <div class="controls">
        <label class="radio inline">
        <input type="radio" name="buy_now_only" value="n" {BN_ONLY_N} id="bn_only_no">
        {L_029}</label>
        <label class="radio inline">
        <input type="radio" name="buy_now_only" value="y" {BN_ONLY_Y} id="bn_only_yes">
        {L_030}</label>
      </div>
    </div>
    <!-- ENDIF -->
    <!-- IF B_BN -->
    <div class="control-group hide7">
      <label class="control-label">{L_496}</label>
      <div class="controls">
        <label class="radio inline">
        <input type="radio" name="buy_now" id="bn_no" value="no" {BN_N}>
        {L_029}</label>
        <label class="radio inline">
        <input type="radio" name="buy_now" id="bn_yes" value="yes" {BN_Y}>
        {L_030}</label>
        <input type="text" name="buy_now_price" id="bn" size="10" value="{BN_PRICE}" {BN}>
        <small>{CURRENCY}&nbsp;&nbsp;(<a href="{SITEURL}converter.php" alt="converter" class="new-window">{L_5010}</a>) </small> </div>
    </div>
    <!-- ENDIF -->
    <!-- IF B_CUSINC -->
    <div class="control-group hide8">
      <label class="control-label">{L_120}</label>
      <div class="controls">
        <label class="radio ">
        <input type="radio" name="increments" id="inc1" value="1" {INCREMENTS1}>
        {L_614}</label>
        <label class="radio ">
        <input type="radio" name="increments" id="inc2" value="2" {INCREMENTS2}>
        {L_615}</label>
        <input type="text" name="customincrement" id="custominc" size="10" value="{CUSTOM_INC}" {INCREMENTS3}>
        <small>{CURRENCY}&nbsp;&nbsp;(<a href="{SITEURL}converter.php" alt="converter" class="new-window">{L_5010}</a>) </small> </div>
    </div>
    <!-- ELSE -->
    <input type="hidden" name="increments" id="inc1" value="1">
    <!-- ENDIF -->
    <hr />
    <!-- IF B_EDIT_STARTTIME -->
    <div class="control-group">
      <label class="control-label">{L_2__0016}</label>
      <div class="controls">
        <!-- IF B_EDITING -->
        <input type="hidden" name="a_starts" value="{START_TIME}">
        <!-- ELSE -->
        <label class="radio ">{L_211}
          <input id="popoverData" data-content="{L_3500_1015740}" rel="popover" data-original-title="{L_2__0016}" data-trigger="hover" type="checkbox" name="start_now" {START_NOW}>
        </label>
        <label class="radio ">{L_260}
        	<div class="input-append date form_datetime">
        		<input data-content="{L_3500_1015741}" data-original-title="{L_2__0016}" data-trigger="hover" type="text" name="a_starts" id="pubdate_input" value="{START_TIME}" size="20" maxlength="19">
        		<span class="add-on"><i class="icon-calendar"></i></span>
        	</div>
        	<script type="text/javascript" src="{INCURL}themes/{THEME}/js/timepicker.js"></script>
	        <script type="text/javascript">
				$(function()
				{
					$("#pubdate_input").datetimepicker(
					{
						format: '{DATES_FORMAT}',
						autoclose: true,
						showMeridian: true,
						minuteStep: 1,
						todayHighlight: true,
						forceParse: true,
        				pickerPosition: "bottom-left",
        				startDate: '{START_TIME}'
					});
				});
			</script>
        </label>
        <!-- ENDIF -->
      </div>
    </div>
    <!-- ELSE -->
    <input type="hidden" name="start_now" value="1">
    <!-- ENDIF -->
    <div class="control-group">
      <label class="control-label">{L_022}</label>
      <div class="controls"> {DURATIONS} </div>
    </div>
    <div class="control-group hide10">
      <label class="control-label">{L_025}</label>
      <div class="controls">
        <label class="radio ">
        <input type="radio" name="shipping" id="bps" value="1" {SHIPPING1}>
        {L_031}</label>
        <label class="radio ">
        <input type="radio" name="shipping" id="sps" value="2" {SHIPPING2}>
        {L_032}</label>
        <label class="checkbox ">
        <input type="checkbox" name="returns" id="returns" value="1" {RETURNS}>
        {L_025_E}</label>
        <label class="checkbox ">
        <input type="checkbox" name="international" value="1" {INTERNATIONAL}>
        {L_033}</label>
      </div>
    </div>
    <div class="control-group hide12">
      <label class="control-label">{L_25_0215}</label>
      <div class="controls">
        <textarea name="shipping_terms" rows="3" cols="34">{SHIPPING_TERMS}</textarea>
      </div>
    </div>
    <hr />
    <div class="control-group hide11">
      <label class="control-label">{L_026}</label>
      <div class="controls"> {PAYMENTS} </div>
    </div>
    <!-- IF B_MKFEATURED or B_MKBOLD or B_MKHIGHLIGHT -->
    <div class="control-group">
      <label class="control-label">{L_268}</label>
      <div class="controls">
        <!-- IF B_MKFEATURED -->
        <label class="checkbox ">
        <input type="checkbox" name="is_featured" id="is_featured" {IS_FEATURED}>
        {L_273}</label>
        <!-- ENDIF -->
        <!-- IF B_MKBOLD -->
        <label class="checkbox ">
        <input type="checkbox" name="is_bold" id="is_bold" {IS_BOLD}>
        {L_274}</label>
        <!-- ENDIF -->
        <!-- IF B_MKHIGHLIGHT -->
        <label class="checkbox ">
        <input type="checkbox" name="is_highlighted" id="is_highlighted" {IS_HIGHLIGHTED}>
        {L_292}</label>
        <!-- ENDIF -->
      </div>
    </div>
    <!-- ENDIF -->
    <!-- IF B_AUTORELIST -->
    <div class="control-group">
      <label class="control-label">{L__0161}</label>
      <div class="controls"> {RELIST} </div>
    </div>
    <!-- ENDIF -->
    <!-- IF B_CAN_TAX -->
    <div class="control-group">
      <label class="control-label">{L_1102}</label>
      <div class="controls">
        <input type="radio" name="is_taxed" value="y" {TAX_Y}>
        <span><strong>{L_030}</strong></span><br>
        <input type="radio" name="is_taxed" value="n" {TAX_N}>
        <span><strong>{L_029}</strong></span> 
      </div>
    </div>
    <div class="control-group">
      <label class="control-label">{L_1103}</label>
      <div class="controls">
        <input type="radio" name="tax_included" value="y" {TAXINC_Y}>
        <span><strong>{L_030}</strong></span><br>
        <input type="radio" name="tax_included" value="n" {TAXINC_N}>
        <span><strong>{L_029}</strong></span> 
      </div>
    </div>
    <!-- ENDIF -->
    <!-- IF B_FEES -->
    <div class="control-group">
      <label class="control-label">{L_263}</label>
      <div class="controls">
        <input type="hidden" name="fee_exact" id="fee_exact" value="{FEE_VALUE}">
        <span id="to_pay"><strong>{FEE_VALUE_F}</strong></span> {CURRENCY} </div>
    </div>
    <!-- ENDIF -->
    <div class="form-actions">
      <input type="hidden" value="3" name="action">
      <input type="submit" class="btn btn-primary" name="" value="{L_5189}" title="{L_5189}">&nbsp;&nbsp;&nbsp;
      <input type="reset" class="btn" id="resetbt" value="{L_5190}" title="{L_5190}">
    </div>
  </form>
<!-- ELSEIF PAGE eq 2 -->
  <form name="preview" action="{ASSLURL}sell.php" method="post">
    <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
    <table class="table">
      <!-- IF ERROR ne '' -->
      <tr>
        <td class="alert" colspan="2" align="center">{ERROR}</td>
      </tr>
      <!-- ENDIF -->
      <div class="alert alert-info">{L_046}</div>
      <tr>
        <td width="40%" align="right"  valign="top"><b>{L_017}</b></td>
        <td width="60%" >{TITLE}</td>
      </tr>
      <!-- IF B_SUBTITLE -->
      <tr>
        <td width="40%" align="right"  valign="top"><b>{L_806}</b></td>
        <td width="60%" >{SUBTITLE}</td>
      </tr>
      <!-- ENDIF -->
      <tr>
        <td  valign="top" align="right"><b>{L_018}</b></td>
        <td>{AUC_DESCRIPTION}</td>
      </tr>
      <!-- IF B_CONDITION -->
      <tr>
				<td  valign="top" align="right"><b>{L_103600}</b></td>
				<td>{ITEM_CONDITION}</td>
			</tr>
			<tr>
				<td  valign="top" align="right"><b>{L_103700}</b></td>
				<td>{ITEM_MANUFACTURER}</td>
			</tr>
			<tr>
				<td  valign="top" align="right"><b>{L_103800}</b></td>
				<td>{ITEM_MODEL}</td>
			</tr>
			<tr>
				<td  valign="top" align="right"><b>{L_103900}</b></td>
				<td>{ITEM_COLOUR}</td>
			</tr>
			<tr>
				<td  valign="top" align="right"><b>{L_104000}</b></td>
				<td>{ITEM_YEAR}</td>
			</tr>
			<!-- ENDIF -->
      <tr>
        <td  valign="top" align="right"><b>{L_019}</b></td>
        <td>{PIC_URL}</td>
      </tr>
      <!-- IF B_GALLERY -->
      <tr>
        <td width="260" valign="middle" align="right">&nbsp;</td>
        <td> {L_663}<br>
          <!-- BEGIN gallery -->
          <a href="{gallery.IMAGE}" data-fancybox-type="image" class="fancybox-buttons" rel="gallery1"><img src="{gallery.IMAGE}" width=40 hspace=5 border=0></a>
          <!-- END gallery -->
        </td>
      </tr>
      <!-- ENDIF -->
      <!-- IF ATYPE_PLAIN eq 3 -->
	<tr>
	<td valign="top" align="right"><b>{L_350_1010}</b></td>
	<td>
		<b>{L_350_10172}</b> {FILE}<br>
      	<!-- BEGIN d_items-->
      	<b>{L_350_10173}</b> {d_items.K}
        <!-- END d_items-->
    </td>
	</tr>
	<!-- ENDIF -->
      <!-- IF B_BN_ONLY -->
      <tr>
        <td valign="top" align="right"><b>{MINTEXT}</b></td>
        <td>{MIN_BID}</td>
      </tr>
      <!-- ENDIF -->
      <!-- IF ATYPE_PLAIN eq 1 -->
      <!-- IF B_BN_ONLY -->
      <tr>
        <td valign="top" align="right"><b>{L_021}</b></td>
        <td>{RESERVE}</td>
      </tr>
      <!-- ENDIF -->
      <!-- IF B_BN -->
      <tr>
        <td valign="top" align="right"><b>{L_496}</b></td>
        <td>{BN_PRICE}</td>
      </tr>
      <!-- ENDIF -->
      <!-- ENDIF -->
      <tr>
        <td valign="top" align="right"><b>{L_023}</b></td>
        <td>{SHIPPING_COST}</td>
      </tr>
      <tr>
        <td valign="top" align="right"><b>{L_2__0016}</b></td>
        <td>{STARTDATE}</td>
      </tr>
      <tr>
        <td valign="top" align="right"><b>{L_022}</b></td>
        <td>{DURATION}</td>
      </tr>
      <!-- IF B_CUSINC -->
      <tr>
        <td valign="top" align="right"><b>{L_120}</b> </td>
        <td>{INCREMENTS}</td>
      </tr>
      <!-- ENDIF -->
      <tr>
        <td valign="top" align="right"><b>{L_261}</b> </td>
        <td>{ATYPE}</td>
      </tr>
      <tr>
        <td valign="top" align="right"><b>{L_025}</b></td>
        <td>{SHIPPING}<br>
          {INTERNATIONAL}</td>
      </tr>
      <tr> 
        <td valign="top" align="right"><b>{L_025_C}</b></td> 
    	<td>{RETURNS}</td> 
	  </tr>
      <tr>
        <td align="right" valign="top"><b>{L_25_0215}</b></td>
        <td>{SHIPPING_TERMS}</td>
      </tr>
      <tr>
        <td valign="top" align="right"><b>{L_026}</b> </td>
        <td>{PAYMENTS_METHODS}</td>
      </tr>
      <tr>
        <td  valign="top" align="right"><b>{L_027}</b></td>
        <td> {CAT_LIST1}
          <!-- IF CAT_LIST2 ne '' -->
          <br>
          {CAT_LIST2}
          <!-- ENDIF -->
        </td>
      </tr>
      <!-- IF B_FEES -->
      <tr>
        <td valign="top" align="right"><b>{L_263}</b> </td>
        <td>{FEE}</td>
      </tr>
      <!-- ENDIF -->
      <tr> </tr>
      <!-- IF B_USERAUTH -->
      <tr>
        <td align="right">{L_003}</td>
        <td><b>{YOURUSERNAME}</b>
          <input type="hidden" name="nick" value="{YOURUSERNAME}">
      </tr>
      <tr>
        <td align="right">{L_004}</td>
        <td><input type="password" name="password" size="20" maxlength="20" value=""></td>
      </tr>
      <!-- ENDIF -->
    </table>
    <div class="alert alert-info">{L_046}</div>
    <div class="form-actions">
      <input type="hidden" value="4" name="action">
      <input type="submit" name="" value="{L_2__0037}" class="btn btn-primary">
    </div>
  </form>
  <!-- ELSE -->
  <div style="text-align:center">
    <p><!-- IF B_EMAIL -->{L_100}<!-- ELSE -->{L_100_b}<!-- ENDIF -->
    {L_101}:&nbsp;&nbsp;<a href="{SITEURL}products/{SEO_TITLE}-{AUCTION_ID}">{SITEURL}products/{SEO_TITLE}-{AUCTION_ID}</a><br>
    {MESSAGE}<br><br>
    <a class="btn btn-success" href="{SITEURL}edit_active_auction.php?id={AUCTION_ID}">{L_30_0069}</a> <a class="btn btn-info" href="{SITEURL}sellsimilar.php?id={AUCTION_ID}">{L_2__0050}</a>
    <p> 
  </div>
  <!-- ENDIF -->

