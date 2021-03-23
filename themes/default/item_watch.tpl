<div class="row">
<!-- INCLUDE u_header.tpl -->
<div class="span9">
  <legend>{L_472}</legend>
  <table class="table table-bordered table-center table-striped">
    <tr>
      <th> {L_167} </th>
      <th> {L_168} </th>
      <th> {L_169} </th>
      <th> {L_170} </th>
      <th> {L_171} </th>
      <th> {L_008} </th>
    </tr>
    <!-- BEGIN items -->
    <tr>
      <td><div class="td-image"><a href="{SITEURL}products/{items.SEO_TITLE}-{items.ID}"><img src="{items.IMAGE}"></a></div></td>
      <td><a href="{SITEURL}products/{items.SEO_TITLE}-{items.ID}">{items.TITLE}</a> {items.BUY_NOW} </td>
      <td> {items.BIDFORM} </td>
      <td> {items.RESERVE}{items.NUMBIDS} </td>
      <td> {items.TIMELEFT} </td>
      <td><a href="item_watch.php?delete={items.ID}"><i class="icon-trash"></i></a> </td>
    </tr>
    <!-- BEGINELSE -->
    <tr align="center">
      <td align="center" colspan="6"> {L_853} </td>
    </tr>
    <!-- END items -->
  </table>
<!-- INCLUDE user_menu_footer.tpl -->
