<div class="row">
<!-- INCLUDE u_header.tpl -->
<div class="span9">
<!-- IF B_MENUTITLE -->
<legend>{UCP_TITLE}</legend>
<!-- ENDIF -->
<div class="hero-unit">
  <h3>{USERNICK} <small>({USERFB}) {USERFBIMG}</small></h3>
</div>
<table class="table table-bordered table-striped">
  <!-- BEGIN fbs -->
  <tr>
    <td style="width:20px;"><img src="{fbs.IMG}" align="middle" alt=""> </td>
    <td style="width:50%"><b>{L_504}: </b>{fbs.FEEDBACK} </td>
    <td><a href="{fbs.USFLINK}"><small>{fbs.USERNAME} ({fbs.USFEED})</a> &nbsp;{fbs.USICON}<br />
      ({L_506}{fbs.FBDATE} {L_25_0177} {fbs.AUCTIONURL})</small> </td>
  </tr>
  <!-- END fbs -->
</table>
<div class="pagination pagination-centered">
  <ul>
    {PAGENATION}
  </ul>
</div>
<!-- INCLUDE user_menu_footer.tpl -->
