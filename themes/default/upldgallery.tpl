<html>
<head>
<!-- Force latest IE rendering engine or ChromeFrame if installed -->
<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><![endif]-->
<title>{SITENAME}</title>
<meta name="description" content="Image Uploader">
<meta name="viewport" content="width=device-width">
<link rel="stylesheet" type="text/css" href="{INCURL}themes/{THEME}/css/bootstrap.css">

<link rel="stylesheet" href="{SITEURL}themes/{THEME}/css/bootstrap-responsive.min.css">
<!-- Bootstrap CSS fixes for IE6 -->
<!--[if lt IE 7]><link rel="stylesheet" href="{SITEURL}themes/{THEME}/css/bootstrap-ie6.min.css"><![endif]-->
<link rel="stylesheet" href="{SITEURL}themes/{THEME}/css/bootstrap-image-gallery.min.css">
<link rel="stylesheet" href="{SITEURL}themes/{THEME}/css/jquery.fileupload-ui.css">
<noscript><link rel="stylesheet" href="{SITEURL}themes/{THEME}/css/jquery.fileupload-ui-noscript.css"></noscript>
<!-- Shim to make HTML5 elements usable in older Internet Explorer versions -->
<!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
</head>
<body>
<div style="width:98%">
    <div class="page-header">
        <h1>{L_3500_1015494}</h1>
    </div>
	<div class="well">{MAXPICS}<br>{FREEMAXPIC}</div>
    <form id="fileupload" action="" class="well" method="POST" enctype="multipart/form-data">
        <div class="row fileupload-buttonbar">
            <div style="width:98%; margin-left:15px">
                <span class="btn btn-success fileinput-button">
                    <i class="icon-plus icon-white"></i>
                    <span>{L_3500_1015495}...</span>
                    <input type="file" name="files[]" multiple>
                </span>
                <button type="submit" class="btn btn-primary start">
                    <i class="icon-upload icon-white"></i>
                    <span>{L_3500_1015496}</span>
                </button>
                <button type="reset" class="btn btn-warning cancel">
                    <i class="icon-ban-circle icon-white"></i>
                    <span>{L_3500_1015497}</span>
                </button>
                <button type="button" class="btn btn-danger delete">
                    <i class="icon-trash icon-white"></i>
                    <span>{L_008}</span>
                </button>
                <input type="checkbox" class="toggle">
                <span style="float:right"><a class="btn btn-primary" href="javascript:parent.$.fancybox.close();">{L_3500_1015498}</a></span>
            </div>
            <div class="span8 fileupload-progress fade">
                <div class="progress progress-success progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
                    <div class="bar" style="width:0%;"></div>
                </div>
                <div class="progress-extended">&nbsp;</div>
            </div>
        </div>
        <div class="fileupload-loading"></div>
        <table role="presentation" class="table table-bordered table-striped table-condensed">
        	<tr>
        		<td>{L_741}</td>
        		<td width="20px">{L_302}</td>
        		<td>{L_3500_1015499}</td>
        		<td>{L_019}</td>
        		<td>{L_008}</td>
        	</tr>
        <tbody class="files" data-toggle="modal-gallery" data-target="#modal-gallery"></tbody></table>
    </form>
</div>
<script id="template-upload" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-upload fade">
        <td class="preview"><span class="fade"></span></td>
        <td class="name"><span>{%=file.name%}</span></td>
        <td class="size"><span>{%=o.formatFileSize(file.size)%}</span></td>
        {% if (file.error) { %}
            <td class="error" colspan="2"><span class="label label-important">Error</span> {%=file.error%}</td>
        {% } else if (o.files.valid && !i) { %}
            <td>
                <div style="width:100%" class="progress progress-success progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0"><div class="bar" style="width:0%;"></div></div>
            </td>
            <td>{% if (!o.options.autoUpload) { %}
                <button class="btn btn-primary start">
                    <i class="icon-upload icon-white"></i>
                    <span>{L_3500_1015496}</span>
                </button>
            {% } %}
        {% } else { %}
            <td colspan="2"></td>
        {% } %}
        {% if (!i) { %}
            <br><br><button class="btn btn-warning cancel">
                <i class="icon-ban-circle icon-white"></i>
                <span>{L_618}</span>
            </button>
        {% } %}</td>
    </tr>
{% } %}
</script>
<script id="template-download" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-download fade" name="{%=file.name%}">
        {% if (file.error) { %}
            <td width="20px" class="name"><span>{%=file.name%}</span></td>
            <td class="size"><span>{%=o.formatFileSize(file.size)%}</span></td>
            <td class="error" colspan="2"><span class="label label-important">{L_415}</span> {%=file.error%}</td>
        {% } else { %}
			<td><img style="max-width:120px; max-height:120px; width: auto; height: auto;" src="{%=file.url%}"></td>
            <td class="name">
                <a href="{%=file.url%}" title="{%=file.name%}" data-gallery="{%=file.thumbnail_url&&'gallery'%}" download="{%=file.name%}">{%=file.name%}</a>
            </td>
            <td class="size"><span>{%=o.formatFileSize(file.size)%}</span></td>

			<td>
				<button {% if (file.name === file.favorite_name) { %} disabled {% } %} class="btn btn-warning favorite" data-type="{%=file.favorite_type%}"data-url="{%=file.favorite_url%}">
					<i class="icon-white icon-star icon"></i>
					<span class="default">{% if (file.name === file.favorite_name) { %} {L_686} {% } else { %}{L_3500_1015500} {% } %}</span>			
				</button>		
			</td>
        {% } %} 
        <td>
            <button class="btn btn-danger delete" data-type="{%=file.delete_type%}" data-url="{%=file.delete_url%}"{% if (file.delete_with_credentials) { %} data-xhr-fields='{"withCredentials":true}'{% } %}>
                <i class="icon-trash icon-white"></i>
                <span>{L_008}</span>
            </button>
            <input type="checkbox" name="delete" value="1" class="toggle">
        </td>

    </tr>
{% } %}
</script>
<script src="{SITEURL}themes/{THEME}/js/jquery.min.js"></script>
<script src="{SITEURL}themes/{THEME}/js/upload/vendor/jquery.ui.widget.js"></script>
<script src="{SITEURL}themes/{THEME}/js/upload/tmpl.min.js"></script>
<script src="{SITEURL}themes/{THEME}/js/upload/load-image.min.js"></script>
<script src="{SITEURL}themes/{THEME}/js/upload/canvas-to-blob.min.js"></script>
<script src="{SITEURL}themes/{THEME}/js/bootstrap.min.js"></script>
<script src="{SITEURL}themes/{THEME}/js/upload/bootstrap-image-gallery.min.js"></script>
<script src="{SITEURL}themes/{THEME}/js/upload/jquery.iframe-transport.js"></script>
<script src="{SITEURL}themes/{THEME}/js/upload/jquery.fileupload.js"></script>
<script src="{SITEURL}themes/{THEME}/js/upload/jquery.fileupload-fp.js"></script>
<script src="{SITEURL}themes/{THEME}/js/upload/jquery.fileupload-ui.js"></script>
<script src="{SITEURL}themes/{THEME}/js/upload/main.js"></script>
<!-- The XDomainRequest Transport is included for cross-domain file deletion for IE8+ -->
<!--[if gte IE 8]><script src="{SITEURL}themes/{THEME}/js/cors/jquery.xdr-transport.js"></script><![endif]-->
</body> 
</html>
