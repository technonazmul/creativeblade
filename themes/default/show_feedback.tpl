<div class="content">
  <legend>{L_208}</legend>
  <div class="form-actions"> <a class="btn btn-primary" href="{BACK_TO_AUCTION}"><i class="icon-chevron-left icon-white"></i> {L_138}</a> <a class="btn btn-success" href="{SITEURL}profile.php?user_id={ID}"><i class="icon-chevron-left icon-white"></i> {L_505}</a> </div>
  <div class="hero-unit">
    <h4>{L_185} </h4>
    <h2>{USERNICK} ({USERFB}){USERFBIMG}</h2>
  </div>
  <table class="table table-bordered" >
    <tr>
      <td  width="5%">&nbsp;</td>
      <td width="40%">{L_503}</td>
      <td class="hidden-phone" width="15%">{L_240}</td>
      <td class="hidden-phone" width="15%">{L_364}</td>
    </tr>
    <!-- BEGIN fbs -->
    <tr>
      <td valign="top" width="5%"><img src="{fbs.IMG}" align="middle" alt=""> </td>
      <td  valign="top" width="40%"> {fbs.FEEDBACK}<br><span class="muted">{L_259}: {fbs.AUCTIONURL} (#{fbs.AUCTIONID})</span> </td>
      <td class="hidden-phone" valign="top" width="15%"><a href="{fbs.USFLINK}">{fbs.USERNAME}</a> (<a href="{SITEURL}feedback.php?id={fbs.USERID}&faction=show">{fbs.USFEED}</a>) {fbs.USICON} </td>
      <td class="hidden-phone" valign="top" width="15%"><small>{fbs.FBDATE}</small> </td>
    </tr>
    <!-- END fbs -->
  </table>
  <div class="pagination pagination-centered">
    <ul>
      <li>{PREV}</li>
      <!-- BEGIN pages -->
      <li>{pages.PAGE}</li>
      <!-- END pages -->
      <li>{NEXT}</li>
    </ul>
  </div>

