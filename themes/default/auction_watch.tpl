<div class="row">
<!-- INCLUDE u_header.tpl -->
<div class="span8 well">
  <legend>{L_25_0084}</legend>
  <div class="alert"> {L_30_0210} </div>
  <form action="auction_watch.php?insert=true" method="post">
    <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
    <div class="input-append">
      <input class="span4" name="add" id="appendedInputButton" type="text">
      <button class="btn" type="submit" value="{L_5204}">{L_5204}</button>
    </div>
  </form>
    <!-- BEGIN items -->
    <a href="{SITEURL}auction_watch.php?delete={items.ITEMENCODE}" type="button" class="btn btn-info btn-small"><i class=" icon-remove-sign icon-white"></i> {items.ITEM}</a>
    <!-- END items -->
</div>
<!-- INCLUDE user_menu_footer.tpl -->
