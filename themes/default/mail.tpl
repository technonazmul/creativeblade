<script type="text/javascript">
$(document).ready(function () {
    $("#checkboxall").click(function () {
        var checked_status = this.checked
        $(".deleteid").each(function () {
            this.checked = checked_status;
        });
    });
});
</script>
<div class="row">
<!-- INCLUDE u_header.tpl -->
<div class="span9">
  <legend>{L_623}</legend>
  <div align="center">{ERROR}</div>
  <!-- IF REPLY_X eq 1 -->
  <!-- INCLUDE mail-send.tpl -->
  <!-- ENDIF -->
  <form action="mail.php" method="post" name="deletemessages">
    <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
    <table class="table table-bordered table-condensed table-striped">
      <thead>
        <tr>
          <td width="100"><small>{WHENSENT}</small></td>
          <td>{TITLE}</td>
          <td width="200">{SENTFROM}</td>
          <td style="text-align:center" nowrap="nowrap"><small><span class="muted">{L_2__0028}</span></small><br>
            <input type="checkbox" name="" id="checkboxall" value=""></td>
        </tr>
      </thead>
      <tbody>
        <!-- IF MSGCOUNT eq 0 -->
        <tr>
          <td colspan="5">{L_2__0029}</td>
        </tr>
        <!-- ELSE -->
        <!-- BEGIN msgs -->
        <tr>
          <td><small><span class="muted">{msgs.SENT}</span></small></td>
          <td><a href="yourmessages.php?id={msgs.ID}">{msgs.SUBJECT}</a></td>
          <td>{msgs.SENDER}</td>
          <td style="text-align:center"><input type="checkbox" name="deleteid[]" class="deleteid" value="{msgs.ID}"></td>
        </tr>
        <!-- END msgs -->
        <!-- ENDIF -->
      </tbody>
    </table>
    <div align="right">
      <input class="btn btn-primary" type="submit" name="submit" value="{L_008}"  OnClick="if ( !confirm('{L_2__0031}') ) { return false; }">
    </div>
  </form>
<!-- INCLUDE user_menu_footer.tpl -->
