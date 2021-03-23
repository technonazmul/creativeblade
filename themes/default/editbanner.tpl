<div class="row">
<!-- INCLUDE u_header.tpl -->
<div class="span9">
			<legend>{L_350_1012212}</legend>
            <div class="contentbox">
     <form name="upldbanner" action="" method="post" enctype="multipart/form-data"><br>
                    <table class="table table-bordered table-condense table-striped" width="98%" cellpadding="0" cellspacing="0">
                    <tr>
                    	<td width="10%" style="height: 19px">{L_5180}:</td>
                    	<td width="80%" style="height: 19px">{NAME}</td>
                    </tr>
                    <tr>
                    	<td style="height: 20px">{L__0022}:</td>
                    	<td style="height: 20px">{COMPANY}</td>
                    </tr>
                    <tr>
                    	<td>{L_303}:</td>
                    	<td>{EMAIL}</td>
                    </tr>
                    <tr>
                    	<td width="30%">
                        	<a class="btn btn-primary" href="editbannersuser.php?id={ID}">{L_350_10150}</a>
                        </td>
                        <td></td>
                    </tr>

                    </table>
                    <table class="table table-bordered table-condense table-striped" width="98%" cellpadding="0" cellspacing="0">
                    <tr>
                    	<th colspan="5">{L__0043}</th>
                    </tr>
<!-- BEGIN banners -->
                    <tr {banners.BG}>
                    	<td colspan="5" align="center"><br/><br/>
	<!-- IF banners.TYPE eq 'swf' -->
                        	<object width="{banners.WIDTH}" height="{banners.HEIGHT}">
                                <param name="movie" value="{SITEURL}{banners.BANNER}">
                                <param name="quality" value="high">
                                <embed src="{SITEURL}{banners.BANNER}" width="{banners.WIDTH}" height="{banners.HEIGHT}"></embed>
                            </object>
	<!-- ELSE -->			
                        	<a target="_blank" href="{banners.URL}"><img border="0" alt="{banners.ALT}" src="{SITEURL}{banners.BANNER}"></a>
	<!-- ENDIF -->
    						<p><a target="_blank" href="{banners.URL}">{banners.SPONSERTEXT}</a></p>
                        </td>
                    </tr>
                    <tr class="titTable20 rounded-top rounded-bottom"><br><br>
                    	<td>{L__0050} <strong><a target="_blank" href="{banners.URL}">{banners.URL}</a></strong></td>
                    	<td>{L__0049} <strong>{banners.VIEWS}</strong></td>
                    	<td>{L__0051} <strong>{banners.CLICKS}</strong></td>
                    	<td>{L__0045}: <strong>{banners.PURCHASED}</strong></td>
                    	<td align="center">
          	<!-- IF NOTEDIT -->
                        	<a href="editbanner.php?banner={banners.ID}&amp;id={ID}"><img src="{SITEURL}themes/{THEME}/banner/img/application_form_edit.png" alt="{L__0055}"></a>
                        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="deletebanner.php?banner={banners.ID}&amp;id={ID}"><img src="{SITEURL}themes/{THEME}/banner/img/bin.png" alt="{L_008}"></a>
	<!-- ENDIF -->
                        </td>
                    </tr>
<!-- END banners -->
                    </table>
                    <table class="table table-bordered table-condense table-striped" width="98%" cellpadding="0" cellspacing="0" class="blank">
                    <tr>
                    	<th colspan="2"><!-- IF NOTEDIT -->{L__0041}<!-- ELSE -->{L__0055}<!-- ENDIF --></th>
                    </tr>
                    <tr>
                    	<td width="30%">{L__0029}</td>
                    	<td><input type="file" name="bannerfile" size="40">{L__0042} <span style="text-align:right; font-size:0.9em;" class="bannersize rounded-top rounded-bottom">{L_350_10123}</span><p>{L__0036}</p></td>
                    </tr>
                    <tr>
                    	<td>{L__0030}</td>
                    	<td><input type="text" name="url" SIZE="45" value="{URL}">{L__0042}<p>{L__0037}</p></td>
                    </tr>
                    <tr>
                    	<td>{L__0031}</td>
                    	<td><input type="text" name="sponsortext" SIZE="45" value="{SPONSORTEXT}"><p>{L__0038}</p></td>
                    </tr>
                    <tr>
                    	<td>{L__0032}</td>
                    	<td><input type="text" name="alt" SIZE="45" value="{ALT}"><p>{L__0038}</p></td>
                    </tr>
                    <tr>
                    	<td>{L__0045}</td>
                    	<td><input type="text" name="purchased" SIZE="8" value="{PURCHASED}"><p>{L__0046}</p></td>
                    </tr>
                    <tr>
                    	<td>{L__0035}</td>
                    	<td>
                    	<textarea name="keywords" cols="45" rows="8">{KEYWORDS}</textarea><br />
                    	{L_350_10151}</td>
                    </tr>

                     </table>
                    <input type="hidden" name="action" value="insert">
                    <input type="hidden" name="id" value="{ID}">
                    <input type="hidden" name="banner" value="{BANNERID}">
                    <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
                    <input type="submit" name="act" class="btn btn-primary" value="{L__0055}">
				<span><a class="btn" href="{SITEURL}managebanners.php">{L_350_1012222}</a></span>
				</form>
<!-- INCLUDE user_menu_footer.tpl -->