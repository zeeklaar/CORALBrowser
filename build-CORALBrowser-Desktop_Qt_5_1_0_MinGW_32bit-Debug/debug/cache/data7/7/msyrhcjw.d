   �      <http://partner.googleadservices.com/gampad/google_service.js     %{�;
��       �����         
     O K           �      P3P   lpolicyref="http://www.googleadservices.com/pagead/p3p.xml", CP="NOI DEV PSA PSD IVA IVD OTP OUR OTR IND OTC"   Content-Type   text/javascript; charset=UTF-8   ETag   11257695149715655591   Date   Mon, 01 Jul 2013 12:44:49 GMT   Expires   Mon, 01 Jul 2013 13:44:49 GMT   X-Content-Type-Options   nosniff   Content-Disposition   
attachment   Content-Encoding   gzip   Server   cafe   X-XSS-Protection   1; mode=block   Age   2517   Cache-Control   public, max-age=3600 (function(){function h(a){this.t={};this.tick=function(a,c,d){d=d?d:(new Date).getTime();this.t[a]=[d,c]};this.tick("start",null,a)}var k=new h;window.GA_jstiming={Timer:h,load:k};if(window.GA_jstiming){window.GA_jstiming.d={};window.GA_jstiming.i=1;var l=function(a,b,c){var d=a.t[b],e=a.t.start;if(d&&(e||c))return d=a.t[b][0],e=void 0!=c?c:e[0],d-e};window.GA_jstiming.report=function(a,b,c){var d="";a.h&&(d+="&"+a.h);var e=a.t,g=e.start,u=[],n=[],f;for(f in e)if("start"!=f&&0!=f.indexOf("_")){var p=e[f][1];p?e[p]&&n.push(f+"."+l(a,f,e[p][0])):g&&u.push(f+"."+l(a,f))}delete e.start;if(b)for(var v in b)d+="&"+v+"="+b[v];a=[c?c:"{{SCHEME}}//csi.gstatic.com/csi","?v=3","&s="+
(window.GA_jstiming.sn||"gam")+"&action=",a.name,n.length?"&it="+n.join(","):"","",d,"&rt=",u.join(",")].join("");b=new Image;var w=window.GA_jstiming.i++;window.GA_jstiming.d[w]=b;b.onload=b.onerror=function(){delete window.GA_jstiming.d[w]};b.src=a;b=null;return a}};var m=this,q=function(a,b){var c,d=b,e=a.split(".");c=c||m;e[0]in c||!c.execScript||c.execScript("var "+e[0]);for(var g;e.length&&(g=e.shift());)e.length||void 0===d?c=c[g]?c[g]:c[g]={}:c[g]=d},s=function(a){var b=r;function c(){}c.prototype=b.prototype;a.k=b.prototype;a.prototype=new c};var t=/^([\w-]+\.)*([\w-]{2,})(\:[0-9]+)?$/,x=function(a,b){if(!a)return b;var c=a.match(t);return c?c[0]:b};var y,z="false",A=!1,B=y=/^true$/.test(z)?!0:/^false$/.test(z)?!1:A;var C=function(){return x("","pubads.g.doubleclick.net")};var D;D||x("","pagead2.googlesyndication.com");var E=function(a,b){for(var c in a)Object.prototype.hasOwnProperty.call(a,c)&&b.call(null,a[c],c,a)};var F=function(a){this.c=[];this.b={};for(var b=0,c=arguments.length;b<c;++b)this.b[arguments[b]]=""};F.prototype.j=function(a){return this.b.hasOwnProperty(a)?this.b[a]:""};F.prototype.geil=F.prototype.j;var G=function(a){var b=[],c=function(a){""!=a&&b.push(a)};E(a.b,c);return 0<a.c.length&&0<b.length?a.c.join(",")+","+b.join(","):a.c.join(",")+b.join(",")};function H(a){var b="adsense";if(a&&("string"==typeof a&&0<a.length)&&null!=b){var c=window.GS_googleServiceIds_[b];null==c&&(c="adsense"==b?new I:new J,window.GS_googleServiceIds_[b]=c);t:{for(b=0;b<c.a.length;b++)if(a==c.a[b])break t;c.a[c.a.length]=a}a=c}else a=null;return a}q("GS_googleAddAdSenseService",H);function K(){for(var a in window.GS_googleServiceIds_){var b=window.GS_googleServiceIds_[a];"function"!=typeof b&&b.enable()}}q("GS_googleEnableAllServices",K);
function L(){window.GS_googleServiceIds_={}}q("GS_googleResetAllServices",L);function M(){var a="adsense",a=null==a?null:window.GS_googleServiceIds_[a];return a=null==a?"":a.a.join()}q("GS_googleGetIdsForAdSenseService",M);function N(a){return O(a)}q("GS_googleFindService",N);function P(){var a=O("adsense");return a?G(a.g):""}q("GS_googleGetExpIdsForAdSense",P);function r(a){this.f=a;this.a=[];this.g=new F}
r.prototype.toString=function(){for(var a="["+this.f+" ids: ",b=0;b<this.a.length;b++)0<b&&(a+=","),a+=this.a[b];return a+="]"};var O=function(a){return a=null==a?null:window.GS_googleServiceIds_[a]};function J(){r.call(this,"unknown")}s(J);J.prototype.enable=function(){};function I(){r.call(this,"adsense");this.e=!1}s(I);
I.prototype.enable=function(){if(!this.e){var a;a=(a=document.URL)&&(0<a.indexOf("?google_debug")||0<a.indexOf("&google_debug"))?"google_ads_dbg.js":"google_ads.js";var b="http://"+x("","partner.googleadservices.com");B&&(b="https://"+x("","securepubads.g.doubleclick.net"));var c="",d;d=C();(d="pubads.g.doubleclick.net"==d)||(c="?prodhost="+C());a=b+"/gampad/"+a+c;b="script";document.write("<"+b+' src="'+a+'">\x3c/script>');this.e=!0;window.GA_jstiming&&
window.GA_jstiming.Timer&&(window.GA_jstiming.load.name="load",window.GA_jstiming.load.tick("start"))}};window.GS_googleServiceIds_||(window.GS_googleServiceIds_={});})()
