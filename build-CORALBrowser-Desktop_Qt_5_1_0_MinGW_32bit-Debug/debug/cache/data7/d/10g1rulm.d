   �      �https://accounts.youtube.com/accounts/CheckConnection?pmpo=https%3A%2F%2Faccounts.google.com&v=587914017&timestamp=1372778602615     %{�q���       �����              �      
     O K   	   
Set-Cookie   'GoogleAccountsLocale_session=en; Secure   Content-Type   text/html; charset=UTF-8   Content-Encoding   gzip   Date   Tue, 02 Jul 2013 15:23:27 GMT   Expires   Tue, 02 Jul 2013 15:23:27 GMT   Cache-Control   private, max-age=0   X-Content-Type-Options   nosniff   X-XSS-Protection   1; mode=block   Server   GSE 
<html>
  <head>
  <script type="text/javascript"> <!--
    var Ga=/\s*;\s*/;var Gb=function(){try{return new XMLHttpRequest}catch(c){for(var d=["MSXML2.XMLHTTP.6.0","MSXML2.XMLHTTP.3.0","MSXML2.XMLHTTP","Microsoft.XMLHTTP"],b=0;b<d.length;b++)try{return new ActiveXObject(d[b])}catch(a){}}return null},Gc=function(){this.c=Gb();this.parameters={}};Gc.prototype.b=function(){};
Gc.prototype.send=function(c){var d=[],b;for(b in this.parameters){var a=this.parameters[b];d.push(b+"="+encodeURIComponent(a))}var d=d.join("&"),e=this.c,f=this.b;e.open("POST",c,!0);e.setRequestHeader("Content-type","application/x-www-form-urlencoded");e.onreadystatechange=function(){4==e.readyState&&f({status:e.status,text:e.responseText})};e.send(d)};
Gc.prototype.h=function(c){var d=this.b,b=this.c;b.open("GET",c,!0);b.onreadystatechange=function(){4==b.readyState&&d({status:b.status,text:b.responseText})};b.send()};var G=function(c){this.a=c;this.e=this.f();if(null==this.a)throw new Gd("Empty module name");};G.prototype.f=function(){var c=window.location.pathname;return c&&0==c.indexOf("/accounts")?"/accounts/JsRemoteLog":"/JsRemoteLog"};
G.prototype.g=function(c,d,b){var a=this.e,e=this.a||"",a=a+"?module="+encodeURIComponent(e);c=c||"";a=a+"&type="+encodeURIComponent(c);d=d||"";a=a+"&msg="+encodeURIComponent(d);b=b||[];for(c=0;c<b.length;c++)a=a+"&arg="+encodeURIComponent(b[c]);try{var f=Math.floor(1E4*Math.random()),a=a+"&r="+String(f)}catch(h){}return a};G.prototype.send=function(c,d,b){var a=new Gc;a.parameters={};try{var e=this.g(c,d,b);a.h(e)}catch(f){}};G.prototype.d=function(c,d){this.send("ERROR",c,d)};
G.prototype.i=function(c){var d=this;return function(){try{return c.apply(null,arguments)}catch(b){throw d.d("Uncatched exception: "+b),b;}}};var Gd=function(){};var Ge=Ge||new G("check_connection"),Gf=function(c,d){if(c){var b=c,a;a=d;!a||0>=a?a=0:(a=(new Date).getTime()-a,a=!a||0>a?0:a);var e;var f="CheckConnectionTempCookie"+String(Math.floor(1E3*Math.random()));e=String(Math.floor(1E6*Math.random()));var h=f,k=e,g=new Date((new Date).getTime()+1E4);document.cookie=h+"="+k+"; Expires="+g.toUTCString();n:{if(document.cookie)for(f+="=",h=document.cookie.split(Ga),k=0;k<h.length;k++)if(g=h[k],g=g.replace(/^\s+/,""),g=g.replace(/\s+$/,""),0==g.indexOf(f)){f=
g.substr(f.length);break n}f=void 0}e=f==e?!0:!1;f="0";e&&(f="1");return b=b+":"+String(a)+":"+f}Ge.d("Empty/null domain symbol")};G_getMsgToSend=Ge.i(Gf);


    function getMsg() {
      
        
        return G_getMsgToSend('youtube',
          1372778602615);
      
    }

    if (window.postMessage && window.parent) {
      window.parent.postMessage(getMsg(),
          'https:\x2F\x2Faccounts.google.com');
    }
  --> </script>
  </head>
</html>
