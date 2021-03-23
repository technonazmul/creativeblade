<div class="span8 offset2 well">
  <legend>{L_181}</legend>
  <form name="user_login" action="{SSLURL}user_login.php" method="post" class="form-horizontal" enctype="multipart/form-data">
    <!-- IF ERROR ne '' -->
    <div class="alert">{ERROR}</div>
    <!-- ENDIF -->
    <div class="control-group">
      <label class="control-label" for="inputEmail">{L_187}</label>
      <div class="controls">
        <input type="text" name="username" size="20" maxlength="20" value="{USER}">
      </div>
    </div>
    <div class="control-group">
      <label class="control-label" for="inputEmail">{L_004}</label>
      <div class="controls">
        <input type="password" name="password" size="20" maxlength="20" value="">
      </div>
    </div>
    <div class="controls">
      <label class="checkbox">
      <input type="checkbox" name="rememberme" value="1">
      &nbsp;{L_25_0085} </label>
  	  <label class="checkbox">
      <input type="checkbox" id="hide_online" name="hide_online" value="y">
      {L_350_10114}</label>

      <a class="btn btn-danger" href="forgotpasswd.php">{L_215}</a>
    </div>
    <div class="form-actions">
      <button type="submit" class="btn btn-primary">{L_052}</button>
      <a class="btn btn-info" href="{SSLURL}new_account">{L_235}</a>
      <!-- IF B_FBOOK_LOGIN -->
    	<a class="btn btn-primary" id="facebook" href="#" data-content="{L_350_10193}" data-original-title="{L_350_10204_d}" data-trigger="hover" onclick="FBUserLogin();">{L_350_10204_d}</a>
      <!-- ENDIF -->
      <input type="hidden" name="action" value="login">
    </div>
  </form>


