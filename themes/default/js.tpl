<title>{PAGE_TITLE}</title>
<meta http-equiv="Content-Type" content="text/html; charset={CHARSET}">
<meta name="description" content="{DESCRIPTION}">
<meta name="keywords" content="{KEYWORDS}">
<meta name="generator" content="{PAGE_TITLE}">

<meta property="og:type" content="article" />
<meta property="og:site_name" content="{SITENAME}" />
<meta property="og:title" content="{FB_TITLE}{FB_PRICE}" />
<meta property="og:url" content="{FB_URL}" />
<meta property="og:description" content="{FB_DESC}" />
<meta property="og:image" content="{FB_IMG}" />
<meta property="fb:app_id" content="{FBOOK_APPID}" />

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<link rel="icon" type="image/ico" href="{SITEURL}favicon.ico"/>
<link type="text/css" rel="stylesheet" media="screen" href="{INCURL}themes/{THEME}/css/bootstrap.css">

<link rel="stylesheet" type="text/css" href="{INCURL}themes/{THEME}/css/bootstrap-responsive.css" >
<link rel="stylesheet" type="text/css" href="{INCURL}themes/{THEME}/css/style.css">
<link rel="stylesheet" type="text/css" href="{INCURL}themes/{THEME}/css/jquery.lightbox.css" media="screen">
<link rel="stylesheet" type="text/css" href="{INCURL}inc/calendar.css">
<link rel="stylesheet" type="text/css" href="{INCURL}themes/{THEME}/js/source/jquery.fancybox.css?v=2.1.5" media="screen">
<link rel="stylesheet" type="text/css" href="{INCURL}themes/{THEME}/js/source/helpers/jquery.fancybox-buttons.css?v=1.0.5">
<link rel="stylesheet" href="{INCURL}themes/{THEME}/css/slide.css" type="text/css" media="screen">

<link rel="alternate" type="application/rss+xml" title="{L_924}" href="{SITEURL}rss.php?feed=1">
<link rel="alternate" type="application/rss+xml" title="{L_925}" href="{SITEURL}rss.php?feed=2">
<link rel="alternate" type="application/rss+xml" title="{L_926}" href="{SITEURL}rss.php?feed=3">
<link rel="alternate" type="application/rss+xml" title="{L_927}" href="{SITEURL}rss.php?feed=4">
<link rel="alternate" type="application/rss+xml" title="{L_928}" href="{SITEURL}rss.php?feed=5">
<link rel="alternate" type="application/rss+xml" title="{L_929}" href="{SITEURL}rss.php?feed=6">
<link rel="alternate" type="application/rss+xml" title="{L_930}" href="{SITEURL}rss.php?feed=7">
<link rel="alternate" type="application/rss+xml" title="{L_931}" href="{SITEURL}rss.php?feed=8">
<script type="text/javascript" src="{INCURL}themes/{THEME}/js/jquery.js"></script>
<script type="text/javascript" src="{INCURL}themes/{THEME}/js/jquery.lightbox.js"></script>


<!-- IF LOADCKEDITOR -->
<script type="text/javascript" src="{INCURL}inc/ckeditor/ckeditor.js"></script>
<!-- ENDIF -->
<script type="text/javascript" src="{INCURL}themes/{THEME}/js/bootstrap.js"></script>
<script  type="text/javascript" src="{INCURL}themes/{THEME}/js/jquery-ui.js"></script>
<script type="text/javascript" src="{INCURL}themes/{THEME}/js/source/jquery.mousewheel-3.0.6.pack.js"></script>
<script type="text/javascript" src="{INCURL}themes/{THEME}/js/source/jquery.fancybox.js?v=2.1.5"></script>
<script type="text/javascript" src="{INCURL}themes/{THEME}/js/source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>
<script type="text/javascript" src="{INCURL}themes/{THEME}/js/slide.js"></script>

<!-- IF B_COOKIE_DIRECTIVE -->
<script type="text/javascript" src="{INCURL}js/jquery.cookiesdirective.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $.cookiesDirective({
            privacyPolicyUri: '{SITEURL}contents.php?show=priv', // uri of your privacy policy
            cookieyPolicyUri: '{SITEURL}contents.php?show=cookies', // uri of your cookie policy
            position: 'top', // top or bottom of viewport
            duration: 30,
        });
    });
</script>
<!-- ENDIF -->
<script type="text/javascript">
    jQuery(document).ready(function() {
        jQuery('[rel=popover]').popover();
        jQuery('[id=atype]').popover(
        {
        	placement: 'top'
        });
        jQuery('[id=pubdate_input]').popover(
        {
        	placement: 'top'
        });
        jQuery('[id=relist]').popover(
        {
        	placement: 'top'
        });
        jQuery('[id=item_condition]').popover(
        {
        	placement: 'top'
        });
        jQuery('[id=facebook]').popover(
        {
        	placement: 'top'
        });

    });
</script>
<!-- IF ANALYTICS ne '' -->
<script type="text/javascript">
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

ga('create', '{ANALYTICS}', 'auto');
ga('send', 'pageview');
</script>
<!-- ENDIF -->

<script type="text/javascript">
$(document).ready(function(){
	$(".trigger").click(function(){
		$(".panel").toggle("fast");
		$(this).toggleClass("active");
		return false;
	});
});
</script>

<!-- IF B_FBOOK -->
<script type="text/javascript">
window.fbAsyncInit = function() {
	FB.init({
	appId      : '{FBOOK_APPID}',  
	status     : true, 
	cookie     : true, 
	xfbml      : true  
	});
};
(function(d){
	var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
	if (d.getElementById(id)) {return;}
	js = d.createElement('script'); js.id = id; js.async = true;
	js.src = "//connect.facebook.net/en_US/all.js";
	ref.parentNode.insertBefore(js, ref);
}(document));

function FBRegist(){
	FB.login(function(response){
		if(response.authResponse){
			window.location.href = "{SITEURL}new_account-fbconnect";
		}
	}, {scope: 'email,user_location,user_birthday'});
}

function FBUserLogin(){
 	FB.login(function(response){
 		if(response.authResponse){
 			window.location.href = "{SITEURL}user_login.php?fbconnect=fblogin";
 		}
 	}, {scope: 'email,user_location,user_birthday'});
}
 
function IndexFBLogin(){
 	FB.login(function(response){
 		if(response.authResponse){
 			window.location.href = "{SITEURL}home-fbconnect=fblogin";
 		}
 	}, {scope: 'email,user_location,user_birthday'});
}

function EditFBLogin(){
 	FB.login(function(response){
 		if(response.authResponse){
 			window.location.href = "{SITEURL}edit_data.php?fbconnect=fblogin";
 		}
 	}, {scope: 'email,user_location,user_birthday'});
}

function ItemFBLogin(){
 	FB.login(function(response){
 		if(response.authResponse){
 			window.location.href = "{FBLOGIN}";
 		}
 	}, {scope: 'email,user_location,user_birthday'});
}
</script>
<!-- ENDIF -->

<script type="text/javascript">
	$(document).ready(function() {
	$('.fancybox-buttons').fancybox({
		openEffect  : 'elastic',
		closeEffect : 'elastic',
		prevEffect : 'none',
		nextEffect : 'none',
		locked : true,
		closeBtn  : false,
		helpers : {
			title : { type : 'float' },
			buttons	: {}
		},
		afterLoad : function() {
			this.title = 'Image ' + (this.index + 1) + ' of ' + this.group.length + (this.title ? ' - ' + this.title : '');
		}
	});
	$(".converter").fancybox({
		maxWidth	: 500,
		maxHeight	: 420,
		fitToView	: false,
		width		: '70%',
		height		: '70%',
		autoSize	: false,
		closeClick	: false,
		openEffect	: 'elastic',
		closeEffect	: 'elastic',
        locked : true
	});
	$(".infoboxs").fancybox({
		maxWidth	: 750,
		maxHeight	: 850,
		fitToView	: false,
		width		: '80%',
		height		: '80%',
		autoSize	: false,
		closeClick	: false,
		openEffect	: 'elastic',
		closeEffect	: 'elastic',
        locked : true
	});
	$(".imaging").fancybox({
		maxWidth	: 950,
		maxHeight	: 1050,
		fitToView	: false,
		width		: '90%',
		height		: '90%',
		autoSize	: false,
		closeClick	: false,
		openEffect	: 'elastic',
		closeEffect	: 'elastic',
        locked : true
	});

});
</script>

<script type="text/javascript">
$(document).ready(function() {
	$('a.new-window').click(function(){
		var posY = ($(window).height()-550)/2;
		var posX = ($(window).width())/2;
		window.open(this.href, this.alt, "toolbar=0,location=0,directories=0,scrollbars=1,screenX="+posX+",screenY="+posY+",status=0,menubar=0,width=550,height=550");
		return false;
	});
	var currenttime = '{ACTUALDATE}';
	var serverdate = new Date(currenttime);
	function padlength(what){
		var output=(what.toString().length==1)? "0"+what : what;
		return output;
	}
	function displaytime(){
		serverdate.setSeconds(serverdate.getSeconds()+1)
		var timestring=padlength(serverdate.getHours())+":"+padlength(serverdate.getMinutes())+":"+padlength(serverdate.getSeconds());
		$("#servertime").html(timestring);
	}
	setInterval(displaytime, 1000);
});
</script>

<script type="text/javascript">
// truncate js min
(function(a){function b(a){return!isNaN(parseFloat(a))&&isFinite(a)}function c(a,b,d,e,f,g,h,i){var j,k,l;return i?(j=e===0?"":d.slice(-e),k=d.slice(-f)):(j=d.slice(0,e),k=d.slice(0,f)),b<g.html(h)[a]()?0:g.html(k+h)[a]()<g.html(j+h)[a]()?f:(l=parseInt((e+f)/2,10),j=i?d.slice(-l):d.slice(0,l),g.html(j+h),g[a]()===b?l:(g[a]()>b?f=l-1:e=l+1,c(a,b,d,e,f,g,h,i)))}a.fn.truncate=function(d){var e={width:"auto",token:"&hellip;",center:!1,addclass:!1,addtitle:!1,multiline:!1};return d=a.extend(e,d),this.each(function(){var e=a(this),f={fontFamily:e.css("fontFamily"),fontSize:e.css("fontSize"),fontStyle:e.css("fontStyle"),fontWeight:e.css("fontWeight"),"font-variant":e.css("font-variant"),"text-indent":e.css("text-indent"),"text-transform":e.css("text-transform"),"letter-spacing":e.css("letter-spacing"),"word-spacing":e.css("word-spacing"),display:"none"},g=e.text(),h=a("<span/>").css(f).html(g).appendTo("body"),i=h.width(),j=b(d.width)?d.width:e.width(),k="width",l,m,n;d.multiline?(h.width(e.width()),k="height",m=h.height(),n=e.height()+1):(m=i,n=j),m>n&&(h.text(""),d.center?(n=parseInt(n/2,10)+1,l=g.slice(0,c(k,n,g,0,g.length,h,d.token,!1))+d.token+g.slice(-1*c(k,n,g,0,g.length,h,"",!0))):l=g.slice(0,c(k,n,g,0,g.length,h,d.token,!1))+d.token,d.addclass&&e.addClass(d.addclass),d.addtitle&&e.attr("title",g),e.empty().append(l)),h.remove()})}})(jQuery);

// amsmnmdksdljlfsdlkjd
$(document).ready(function () {
    $('a.new-window').click(function () {
        var posY = ($(window).height() - 550) / 2;
        var posX = ($(window).width()) / 2;
        window.open(this.href, this.alt, "toolbar=0,location=0,directories=0,scrollbars=1,screenX=" + posX + ",screenY=" + posY + ",status=0,menubar=0,width=550,height=550");
        return false;
    });
    var currenttime = '{ACTUALDATE}';
    var serverdate = new Date(currenttime);

    function padlength(what) {
        var output = (what.toString().length == 1) ? "0" + what : what;
        return output;
    }

    function displaytime() {
        serverdate.setSeconds(serverdate.getSeconds() + 1)
        var timestring = padlength(serverdate.getHours()) + ":" + padlength(serverdate.getMinutes()) + ":" + padlength(serverdate.getSeconds());
        $("#servertime").html(timestring);
    }
    setInterval(displaytime, 1000);
});
$(document).ready(function () {
    var adjust_size = function () {
        windowsize = $(window).width();
		//truncate if window width < 480
        if (windowsize < 480) {
            $('.list-title a, .truncate-table').truncate({
                width: '200',
                token: '&hellip;',
                center: false,
                multiline: false
            });
            $('#sub-cats').removeClass('in');
            $('#sub-cats-btn').show();
        } else {
            $('#sub-cats').addClass('in');
            $('#sub-cats-btn').hide();
        };
    };
    adjust_size();
    $(window).resize(adjust_size);
    $(".table-row-click").click(function () {
        window.location.href = $(this).find(".list-title a").attr("href");
    });
    //end ready
});
</script>
