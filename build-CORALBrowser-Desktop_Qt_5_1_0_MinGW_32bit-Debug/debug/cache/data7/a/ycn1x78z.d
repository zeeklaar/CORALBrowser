   �      +http://static.chartbeat.com/js/chartbeat.js     %{��\�     %{� �5@         
     O K           �   	   Accept-Ranges   bytes   Cache-Control   max-age=7200   Content-Type   'application/x-javascript; charset=utf-8   Expires   Tue, 25 Jun 2013 23:14:16 GMT   Last-Modified   Fri, 21 Jun 2013 02:58:16 GMT   Server   nginx   Vary   Accept-Encoding   Content-Encoding   gzip   Date   Mon, 08 Jul 2013 15:30:53 GMT (function(){var f=true,h,i=this;function k(a){var b={};if(a){a.charAt(0)=="?"&&(a=a.substring(1));for(var a=a.replace("+"," "),a=a.split(/[&;]/g),c=0;c<a.length;c++){var d=a[c].split("=");b[decodeURIComponent(d[0])]=decodeURIComponent(d[1])}}return b}function l(a,b,c){var d="",e=i.location.href.split("?");e.length&&(e=k(e[1]),b=c||b,e[b]&&(d="&"+a+"="+e[b]));return d};function n(a){a+="=";for(var b=document.cookie.split(";"),c=0;c<b.length;c++){for(var d=b[c];d.charAt(0)==" ";)d=d.substring(1,d.length);if(d.indexOf(a)==0)return d.substring(a.length,d.length)}return null}function q(a,b,c){var d=i._sf_async_config;if(!d||!d.noCookies)d=new Date,d.setTime(r()+c*864E5),document.cookie=a+"="+b+("; expires="+d.toGMTString())+"; path=/"};function s(){if(t!==void 0)return t;try{var a=i.localStorage;if(a.removeItem)return t=a}catch(b){}return t=null}var t;function w(){var a="",b,c;for(c=0;c<16;c++)b=Math.floor(Math.random()*36).toString(36),a+=b;return a}function x(a,b){return function(){a.apply(b,arguments)}}function y(a,b){var c=i;c.addEventListener?c.addEventListener(a,b,false):c.attachEvent&&c.attachEvent("on"+a,b)}function z(a){a=new Date(+a);return Date.UTC(a.getFullYear(),a.getMonth(),a.getDate())}
function r(){return(new Date).getTime()};function A(a){this.a=i._sf_async_config||{};this.C=x(this.I,this);this.e=[];this.o=a;this.b();y("unload",x(this.H,this));for(var a=x(this.K,this),b=i._cbq||[];b.length;)a(b.shift());i._cbq={push:a}}h=A.prototype;h.b=function(){this.k=this.c=0;this.z=r();this.w=w();this.m=f;this.t=72E5;this.f=this.d=0;this.o.b();var a=+this.a.sessionLength;if(!isNaN(a))this.t=a*6E4};h.K=function(a){this.a[a[0]]=a[1];this.c=0};
h.n=function(){var a=i._sf_startpt,b=i._sf_endpt;if(typeof a=="number")this.v=typeof b=="number"?b-a:r()-a;this.j=setInterval(x(this.u,this),15E3);this.u()};h.I=function(){this.e.push(1);for(var a=0,b=0;b<this.e.length;++b)a+=this.e[b];a<3?(this.m=f,B(this)):(clearInterval(this.j),q("_SUPERFLY_nosample","1",0.007))};function C(a){if(!n("_SUPERFLY_nosample"))a.F?a.n():(a.F=f,!i._sf_async_config&&!i._cbq?y("load",x(a.n,a)):a.n())}
h.H=function(){var a=this.w,b=s();if(b)b._cb_cp+=(b._cb_cp?",":"")+a;else if(!i.name)i.name="_cb_cp"+a};function B(a){var b=a.c,b=b?Math.min(b*2,16):1;a.c=b}h.M=function(a,b){this.q=i.location.protocol+"//"+this.a.domain+this.a.path;this.a.path=a;b&&(this.a.title=b);clearInterval(this.j);this.b();C(this)};
h.u=function(){var a=this.o,b=a.d;a.d=0;D(a);this.f=b;this.d+=this.f;a=this.a.reading&&+this.a.reading||this.f>0;if(this.k<this.c&&!a)this.k++;else{a?this.c=0:B(this);this.k=0;this.e.push(0);this.e.length>18&&this.e.shift();var a=this.a,b=E(),c=Math.round((r()-this.z)/600)/100,d=0,e=0,g=0;F(this.o,"onkeydown")?e=1:this.a.reading&&+this.a.reading||this.f>0||c<0.09?d=1:g=1;var o="",u="",I="";if(this.m){this.m=false;var o=(G(this)?"&v=":"&r=")+encodeURIComponent(this.q||document.referrer||""),u=this.a.title.slice(0,
100),u="&i="+encodeURIComponent(u),v=this.a.hudTrackable;v!==void 0&&(I="&L="+(v?"1":"0"))}var v=this.v?"&b="+this.v:"",O=this.h?"&A="+this.h:"",P=this.r?"&f="+this.r:"",p,m=s();if(m)p=m._cb_cp,m._cb_cp="";else if(/_cb_cp[a-z0-9]{16}/.test(i.name))p=i.name.substr(6),i.name="";p=p?"&D="+p:"";var m=[],j;for(j in a)j.charAt(0)=="_"&&m.push(j+"="+a[j]);j=document;j=(i.location.protocol||"http:")+"//"+a.pingServer+"/ping?h="+encodeURIComponent(a.domain)+"&p="+encodeURIComponent(a.path)+"&u="+this.p+"&d="+
encodeURIComponent(this.i)+"&g="+a.uid+(a.sections?"&g0="+encodeURIComponent(a.sections):"")+(a.authors?"&g1="+encodeURIComponent(a.authors):"")+(a.noCookies?"":"&n="+this.G)+P+"&c="+c+"&x="+b+"&y="+(document.body.scrollHeight||0)+"&w="+(j[j.compatMode==="CSS1Compat"?"documentElement":"body"].clientHeight||0)+"&j="+Math.round((this.c+2)*15E3/1E3)+"&R="+d+"&W="+e+"&I="+g+"&E="+this.d+"&e="+this.f+o+v+O+l("C","utm_campaign",a.campaignTag)+l("M","utm_medium",a.mediumTag)+"&t="+this.w+"&V=13"+p+u+I+(m.length?
"&"+m.join("&"):"")+"&_";a=new Image(1,1);a.onerror=this.C;a.src=j;r()-this.z>=this.t&&clearInterval(this.j)}};function G(a){if(a.q)return f;a=(document.referrer||"").indexOf("://"+i.location.host+"/");return a!=-1&&a<9};function E(){var a=document.body,b=document.documentElement;if(typeof i.pageYOffset=="number")return i.pageYOffset;else if(a&&a.scrollTop)return a.scrollTop;else if(b&&b.scrollTop)return b.scrollTop;return 0};function H(a){A.call(this,a)}(function(){var a=A;function b(){}b.prototype=a.prototype;H.L=a.prototype;H.prototype=new b})();
H.prototype.b=function(){H.L.b.call(this);this.h=null;for(var a=this.a,b=document.getElementsByTagName("script"),c=0;c<b.length;++c)if(b[c].src.match(/chartbeat.js/)){b=k(b[c].src.split("?")[1]);a.uid=a.uid||b.uid;a.domain=a.domain||b.domain;break}a=i.location;b=this.a;b.pingServer=b.pingServer||"ping.chartbeat.net";b=this.a;b.title=b.title||document.title;b=this.a;b.domain=b.domain||a.host;b=this.a;a:{c=null;if(this.a.useCanonical){for(var c=null,d=document.getElementsByTagName("link"),e=0;e<d.length;++e)if(d[e].rel==
"canonical")c=d[e].href,c=c.substring(c.indexOf("/",9));if(c)break a}e=i.location;c=e.pathname+(e.search||"");c=c.replace(/PHPSESSID=[^&]+/,"");d=/&utm_[^=]+=[^&]+/ig;(e=d.exec(e.search))&&(c=c.replace(d,""));d=/\?utm_[^=]+=[^&]+(.*)/i;(e=d.exec(c))&&(c=c.replace(d,e[1]!=""?"?"+e[1]:""))}b.path=b.path||c;this.i=a.host.replace(/^www\./,"");this.a.domain=this.a.domain.replace(/^www\./,"");var a=(n("_chartbeat2")||"").split("."),b=r(),c=b-+(a[1]||0),e="1",g=a&&+a[2],d=a&&a[3];if(a&&g&&d)if(e=Math.abs((z(b)-
z(g))/864E5)){e=Math.min(e,16)-1;for(g="";e--;)g+=0;e=(d+g+"1").slice(-16)}else e=d;this.G=a[0]&&c>18E5?0:1;a[0]||(a[0]=w(),a[1]=b);a[2]=b;a[3]=e;this.p=a[0];this.J=a.join(".");q("_chartbeat2",this.J,30);this.a.utoken=this.p;var o;b=+a[1];c=+a[2];if((a=a[3])&&b&&c)o=(Math.min((Math.abs((z(c)-z(b))/864E5)||0)+1,16,a.length)-1).toString(16),o+=("0000"+parseInt(a,2).toString(16)).slice(-4);this.r=o;i.postMessage&&y("message",x(this.D,this))};H.prototype.B=function(a){this.h=a};
H.prototype.D=function(a){var b=this.a;if(a.origin==="http://"+(b.playerdomain||this.i)){var c=a.data;if(typeof c=="string"&&c.indexOf("cbqpush::")===0){if(a=c.split("::"),a.length==3)b[a[1]]=a[2],this.c=0}else c=="cbdata?"&&(b="domain="+encodeURIComponent(b.domain)+"&path="+encodeURIComponent(b.path)+"&title=",c=this.a.title.slice(0,100),a.source.postMessage(b+encodeURIComponent(c)+"&referrer="+encodeURIComponent(this.q||document.referrer||"")+"&internal="+(G(this)?"1":"0")+"&subdomain="+encodeURIComponent(this.i)+
"&utoken="+this.p,"*"))}};function J(){this.g=[];K(this,i,"onscroll");K(this,document.body,"onkeydown");K(this,document.body,"onmousemove");this.b()}J.prototype.b=function(){this.l={};this.d=0;D(this)};function D(a){a.s&&clearInterval(a.s);a.A();a.s=setInterval(x(a.A,a),1E3)}function K(a,b,c){var d=b[c]||function(){};a.g.push(c);b[c]=function(b){d.apply(this,arguments);if(b&&c=="onkeydown"){var g=b.keyCode?b.keyCode:b.which;if(g==32||g>36&&g<41){a.l.onscroll=r();return}}a.l[c]=r()}}
function F(a,b,c){a=a.l[b];if(a===void 0)return false;a=r()-a;return a<=(c||15E3)&&a>=0}J.prototype.A=function(){var a;a:{for(a=0;a<this.g.length;a++)if(F(this,this.g[a],5E3)){a=f;break a}a=false}a&&this.d++};var L=(document.location.protocol=="https:"?"https://a248.e.akamai.net/chartbeat.download.akamai.com/102508/":"http://static.chartbeat.com/")+"js/inpage.js";function M(){var a=document.createElement("script");a.async=f;a.src=L;var b=document.getElementsByTagName("script")[0];b.parentNode.insertBefore(a,b)}function N(a){if(/[\/|\.]chartbeat.com$/.test(a.origin)){var b=s(),c=String(a.data);if(b&&c.indexOf("_cb_ip")==0)b._cb_ip=1,a.source.postMessage(1,a.origin),M()}};if(!i.pSUPERFLY){var Q=new J,R=new H(Q);i.pSUPERFLY=R;H.prototype.virtualPage=H.prototype.M;H.prototype.activity=H.prototype.B;C(R);var S=s();S&&(y("message",N),S._cb_ip&&M())};})();
