   �      ;https://static.xx.fbcdn.net/rsrc.php/v2/yI/r/Mr-d_xx3iBv.js     %}�N#     %{� ��              �      
     O K   
   Access-Control-Allow-Origin   *   Cache-Control   public, max-age=31536000   Content-Type   'application/x-javascript; charset=utf-8   Expires   Sat, 19 Jul 2014 20:52:44 GMT   Last-Modified   Sat, 15 Jun 2013 00:19:35 GMT   X-Content-Type-Options   nosniff   Content-Encoding   gzip   
X-FB-Debug   ,6MZHFv+gjbaiI2H9fyjzGfw+R54mJMeJmFfS/hcOnwk=   Date   Fri, 19 Jul 2013 20:52:44 GMT   Server   proxygen /*1374267164,172681250*/

if (self.CavalryLogger) { CavalryLogger.start_js(["AWb\/8"]); }

__d("RegistrationInterstitialCaptcha",["CSS","DOM","Input","$"],function(a,b,c,d,e,f){var g=b('CSS'),h=b('DOM'),i=b('Input'),j=b('$'),k={havePermission:false,linkContainerID:'add_parent_link_container',emailFieldContainerID:'parent_email_field_container',emailFieldID:'parent_email_field',show:function(){var l=j('reg_pc'),m=j('reg_box'),n=j('reg_captcha'),o=j('reg_error'),p=j('tos_container'),q=j('security_check_header'),r=j('kid_captcha_container');h.setContent(j('content'),m);r.appendChild(n);l.appendChild(p);l.appendChild(o);g.hide(q);g.hide(j('captcha_buttons'));g.show(l);},toggleAddParent:function(){var l=j(this.linkContainerID),m=j(this.emailFieldContainerID);if(!this.havePermission){g.show(l);}else{g.hide(l);g.hide(m);}this.havePermission=!this.havePermission;},showEmailField:function(l){i.setPlaceholder(j(this.emailFieldID),l);g.show(j(this.emailFieldContainerID));g.hide(j(this.linkContainerID));}};e.exports=k;});