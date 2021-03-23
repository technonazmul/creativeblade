<div>
  <ul class="breadcrumb">
    <li class="active">{L_287} : </li>
    {CAT_STRING}
  </ul>
</div>
<div class="row ">
  <div class="span3 hidden-phone"> {cat_name}
    <div class="row">
      <div id="cat-list-holder" class="span3" style="position:relative;">
        <ul class="well nav nav-list cat-list">
          <li class="nav-header">{L_276}</li>
          <li class="divider"></li>
          <li><a href="{SITEURL}cat/{L_277_1}-0"><i class="icon-tags"></i> {L_277}</a></li>
          <li class="divider"></li>
          <!-- BEGIN cat_list_drop_2 -->
          <li> <a href="{SITEURL}cat/{cat_list_drop_2.SEO_NAME}-{cat_list_drop_2.ID}">{cat_list_drop_2.IMAGE} {cat_list_drop_2.NAME}</a></li>
          <!-- END cat_list_drop_2 -->
        </ul><br>
        {BROWSE_ADSENSE_1}
      </div>
    </div>
  </div>
  <div class="row">
    <div id="browser-holder" class="span9">
      <div class="">
        <legend>{CUR_CAT}</legend>
        <br />
        <button id="sub-cats-btn" 
        <!-- IF TOP_HTML eq '' -->
        style="display:none;"
        <!-- ENDIF -->
        type="button" class="btn btn-small" data-toggle="collapse" data-target="#sub-cats">{L_31_1}
        </button>
        <!-- IF NUM_AUCTIONS eq 0 -->
        <div class="alert alert-info" style="margin-top:10px"><i class="icon-info-sign icon-white"></i> <strong>{L_198}</strong> </div>
        <!-- ENDIF -->
        <!-- IF TOP_HTML ne '' -->
        <div id="sub-cats" class="collapse" style="margin-top:10px"> <small> {TOP_HTML} </small> </div>
      </div>
      <!-- ELSE  IF TOP_HTML e '' -->
      <!-- ENDIF -->
      <div class="row">
        <div class="span9">
          <!-- IF ID gt 0 && NUM_AUCTIONS gt 0 -->
          <div class="form-actions">
            <div class="row">
              <div class="span4">
                <form class="form-search" name="catsearch" action="?id={ID}" method="post" >
                  <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
                  <div class="input-append">
                    <input type="text" placeholder="{L_287}: {CUR_CAT} " class="span2 search-query" name="catkeyword">
                    <button type="submit" class="btn btn-success" name="submit">{L_103}</button>
                  </div>
                </form>
              </div>
              <div class="span222 offset2"><a class="btn btn-primary" href="{SITEURL}adsearch.php">{L_464}</a> </div>
            </div>
          </div>
        </div>
        <!-- ENDIF -->
        <!-- IF NUM_AUCTIONS gt 0 -->
      </div>
      <!-- INCLUDE browse.tpl -->
      <!-- ELSE -->
    </div>
  </div>
</div>
</div>
<!-- ENDIF -->
</div>
