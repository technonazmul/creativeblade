<div class="row">
<!-- INCLUDE u_header.tpl -->
<div class="span9">
  <legend>{L_25_0188}</legend>
  <form action="" method="post" name="thisform" id="thisform">
    <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
    <p>{L_25_0195}</p>
    <label class="radio">
    <input type="radio" name="startemailmod" value="yes"{B_AUCSETUPY}>
    {L_25_0196} </label>
    <label class="radio">
    <input type="radio" name="startemailmod" value="no"{B_AUCSETUPN}>
    {L_25_0197} </label>
    <hr />
    <p>{L_25_0189}</p>
    <label class="radio">
    <input type="radio" name="endemailmod" value="one"{B_CLOSEONE}>
    {L_25_0190} </label>
    <label class="radio">
    <input type="radio" name="endemailmod" value="cum"{B_CLOSEBULK}>
    {L_25_0191} </label>
    <label class="radio">
    <input type="radio" name="endemailmod" value="none"{B_CLOSENONE}>
    {L_25_0193} </label>
    <hr />
    <p>{L_903}</p>
    <label class="radio">
    <input type="radio" name="emailtype" value="text"{B_EMAILTYPET}>
    {L_915} </label>
    <label class="radio">
    <input type="radio" name="emailtype" value="html"{B_EMAILTYPEH}>
    {L_902} </label>
    <hr />
    <input type="hidden" name="action" value="update">
    <input type="submit" name="Submit" value="{L_2_0015}" class="btn btn-primary">
  </form>
<!-- INCLUDE user_menu_footer.tpl -->
