   �      �http://arstechnica.com/wp-content/themes/arstechnica/assets/html/ad-loader-frame.html?req=http://ad.doubleclick.net/adj/ars.dart/culture;abr=!webtv;tile=1;kw=top;kw=future;kw=100k_pvs;kw=culture;sz=728x90;ord=62655965983867650�       �����     %{ �ɐ         
     O K           �      Server   nginx   Date   Tue, 02 Jul 2013 12:45:06 GMT   Content-Type   	text/html   Last-Modified   Sat, 16 Feb 2013 02:44:42 GMT   X-Ars-Server   web11   Content-Encoding   gzip <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
	<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache" />
	<META HTTP-EQUIV="Pragma" CONTENT="no-cache" />
	<title>Dart Frame</title>
	<script type="text/javascript">
		google_page_url = window.parent.location.href;
	</script>
  <script type="text/javascript" src="http://ad.crwdcntrl.net/4/c=244%7Cto=y%7Cp=1686%7Cout=json%7Cvar=ccauds"></script>
  <!-- Omniture start -->
  <script type="text/javascript">
    function get_aamCookie(c_name) {
      var i,x,y,ARRcookies=document.cookie.split(";");
      for (i=0;i<ARRcookies.length;i++) {
        x=ARRcookies[i].substr(0,ARRcookies[i].indexOf("="));
        y=ARRcookies[i].substr(ARRcookies[i].indexOf("=")+1);
        x=x.replace(/^\s+|\s+$/g,"");
        if (x==c_name){
          return unescape(y);
        }
      }
    }
  </script>
</head>
<body style="margin:0;padding:0;background:transparent;">
	<script type="text/javascript">
	  //variable is used to tell the creative that the ad is loaded in an I-Frame with its src set to a hosted file
	  //please see IAB Documentation on refresh standards for more information
	  var inDapID = true; 
	  
	  var request = window.location.search.split('?req=')[1];

    var i=0,
        len,
        aud,
        tags = (typeof ccauds!=='undefined' ? ccauds : false);

    if(tags && tags.Profile){
      aud=tags.Profile.Audiences.Audience,
      len=aud.length;
      for(; i< len;i++){
        try{
          request += (';kw='+aud[i].abbr);
        }catch(e){}
      }
    }

    var parts = request.split(";");
    // Initially populate w/Adobe Audience Mgr uuid
    var u = ['trunc', get_aamCookie('aam_uuid'), 'trunc'];
    parts.shift(); //this will be the base URL before params

    for (var i=0; i< parts.length; i++) {
      var kv = parts[i].split("=");
      if (kv && kv[0] == "kw") {
        u.push(kv[1]);
      }
    }

    if (u.length) {
      request += ";u=" + u.join("|");
    }

    // Add final AAM key/value
    request += ';' + get_aamCookie('aamconde');

	  if(parent.cnp.ad.manager.isInit){ //see comment below
	  	document.write('<scr'+'ipt type="text/javascript" src="' + request + '"></scr'+'ipt>');
	  }
	  /*
	  	Firefox caches dynamically written iframe content when the browser refresh button or back buttons are used. 
		The above check is put in place because of this. Without this check, when this document/page is fetched 
		from the browsers cache before the initial ad load, it could run twice when using Firefox's refresh/back button
	  */
	</script><div id="bottom_div"></div>
</body>
</html>

