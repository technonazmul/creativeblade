<html>
<head>
<title>{SITENAME}</title>
<link rel="stylesheet" type="text/css" href="{SITEURL}themes/{THEME}/css/bootstrap.css">
<meta http-equiv="Content-Type" content="text/html; charset={CHARSET}">

</head>
<body>
<div class="container-fluid" style="padding-top:10px">
  <div class="row-fluid">
	<table class="table table-condensed table-striped table-bordered">
<!-- BEGIN conditions -->
                        <tr>
                           
                            <td><b>{conditions.ITEM_CONDITION}</b></td>
                            <td>{conditions.CONDITION_DESC}</td>
                        </tr>
<!-- END conditions -->   
                    </table>
 
<div style="text-align:center">
			<input class="btn btn-primary" type="button" value="Close" onClick="javascript:parent.$.fancybox.close();">
</div>
</div>
</div>
</body>
</html>