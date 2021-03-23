<div class="row">
<!-- INCLUDE u_header.tpl -->
<div class="span9">
  <div class="form-actions"> <a class="btn btn-primary" href="{SITEURL}mail.php">{L_351}</a><br />
  </div>
  <table class="table table-bordered table-condensed">
    <tbody>
      <tr>
        <td width="150">{L_332}:</td>
        <td><strong>{SUBJECT}</strong></td>
      </tr>
      <tr>
        <td>{L_340}:</td>
        <td>{SENDERNAME} <small><span class="muted">{SENT}</span></small></td>
      </tr>
      <tr>
        <td>{L_333}:</td>
        <td>{MESSAGE}</td>
      </tr>
    </tbody>
  </table>
  <p> <a class="btn btn-primary" href="{SITEURL}mail.php?x=1&amp;message={HASH}">{L_349}</a> <a class="btn btn-alert" href="{SITEURL}mail.php?deleteid[]={ID}" onClick="if ( !confirm('Are you sure you want to delete this message?') ) { return false; }">{L_008}</a> </p>
<!-- INCLUDE user_menu_footer.tpl -->
