<html>
<head>
<title>{SITENAME}</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link  rel="stylesheet" type="text/css" href="{INCURL}themes/{THEME}/css/bootstrap.css">
<script type="text/javascript" src="{INCURL}themes/{THEME}/js/bootstrap.js"></script>
<script  type="text/javascript" src="{INCURL}themes/{THEME}/js/jquery-ui.js"></script>
<script type="text/javascript">
function _(el){
	return document.getElementById(el);
}
function uploadFile(){
	var file = _("file_up[]").files[0];
	//alert(file.name+" | "+file.size+" | "+file.type);
	var formdata = new FormData();
	formdata.append("file_up[]", file);
	var ajax = new XMLHttpRequest();
	ajax.upload.addEventListener("progress", progressHandler, false);
	ajax.addEventListener("load", completeHandler, false);
	ajax.addEventListener("error", errorHandler, false);
	ajax.addEventListener("abort", abortHandler, false);
	ajax.open("POST", "{SITEURL}digital_item.php?diupload=1");
	ajax.send(formdata);
}
function progressHandler(event){
	_("loaded_n_total").innerHTML = "{L_3500_1015578} "+event.loaded+" {L_3500_1015579} "+event.total;
	var percent = (event.loaded / event.total) * 100;
	_("progressBar").value = Math.round(percent);
	_("status").innerHTML = Math.round(percent)+"{L_3500_1015575}";
}
function completeHandler(event){
	_("status").innerHTML = event.target.responseText;
	_("progressBar").value = 100;
	_("completed").innerHTML = "<b>{L_3500_1015574}</b>";
}
function errorHandler(event){
	_("status").innerHTML = "{L_3500_1015576}";
}
function abortHandler(event){
	_("status").innerHTML = "{L_3500_1015577}";
}
</script>  
 
<meta http-equiv="Content-Type" content="text/html; charset={CHARSET}">
</head>
<body>

<div class="container-fluid" style="padding-top:10px">
	<div class="row-fluid">
    	<div class="span12">
	    	<legend>{L_350_10171}</legend>
	    	<div class="well">
	    		<h3 id="status"></h3>
	    		<div class="progress progress-warning">
	           		<progress class="bar" id="progressBar" value="0" max="100" style="width:100%;"></progress>
	           	</div>
	           	<p id="loaded_n_total"></p>
	           	<div id="completed"></div>
	        </div>
	    </div>
	    <div class="span12">
	    	<div class="well span6">
	    		{TYPES}
	    	</div>
	    	<div class="well span5">
	    		{SIZE}
	    	</div>
	    </div>
		<div class="well span11">
				<div class="alert alert-info">{L_3500_1015580}</div>
	    		<b>{L_350_10172}</b>{STORED}<br>
	    		<b>{L_350_10173}</b>{FILE_UPLOADED}
	    </div>
	    <div class="span11">
		    <form id="upload_form" enctype="multipart/form-data" method="post">
		    	<input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
		  		<input type="file" class="btn btn-primary" name="file_up[]" id="file_up[]">&nbsp;&nbsp;&nbsp;&nbsp;
		  		<input type="button" class="btn btn-success"  value="Upload File" onclick="uploadFile()">&nbsp;&nbsp;&nbsp;&nbsp;
		        <a class="btn btn-inverse" href="javascript:parent.$.fancybox.close();">{L_678}</a>
		    </form>
		</div>  
    </div>
</div>
</body>
</html>

