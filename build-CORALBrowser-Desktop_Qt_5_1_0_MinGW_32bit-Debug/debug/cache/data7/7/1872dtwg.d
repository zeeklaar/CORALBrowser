   �      'http://fixtracking.com/css/addons.css?1     %{��n�     %{�\~�              �      
     O K      Server   nginx   Date   Tue, 02 Jul 2013 17:31:05 GMT   Content-Type   text/css   Last-Modified   Thu, 27 Jun 2013 06:20:39 GMT   Expires   Tue, 02 Jul 2013 17:32:05 GMT   Cache-Control   
max-age=60   Content-Encoding   gzip body { background-image: url('../images/fp-bg.png'); }

h1, h2, h3, h4, h5, h6 {	
	color: #4b3627; 
	margin: 20px auto;
	overflow: visible;
}
h1, h2, h4, h5 { 
	font-family: 'FrancoisOneRegular', sans-serif;
	font-weight: normal;
}
.h3 { font-size: 24px; }
h2 {
  font-size: 28px;
}
p { text-align: center; }

hr { margin: 40px auto; min-width: 694px; border-bottom-color: #b1a79a; }

a, a:active{  
	color:#07b4bf;
	text-decoration:none;
}
a:visited { color:#07929b; }
a:hover {  	
	text-decoration:underline;
}

#header { margin-bottom: 0px; text-shadow: 0 1px 0 #fff; }
#header img#pg-logo { display: block; position: relative; top: 5px; left: 0; margin: 22px auto 25px; }
#header h1 { line-height: 1; font-size: 40px; letter-spacing: -0.05em;}
	#header h1 .browsers { background: url(../images/head-banner.png) 50% 50% no-repeat; display: block; width: 585px; height: 81px; margin: 11px auto 0; position: relative; }
		#header h1 .browsers span { display: none; font-size: 38px; padding-top: 2px; }
		#header h1 .browsers .unknown-browser { padding-top: 13px; }
		#header h1 .browsers:before, #header h1 .browsers:after {
			content: "";
			display: block;
			position: absolute;
			top: 14px; 
			height: 43px; 
			width: 1px;
			border-left: 1px dotted #a3a09b;
		}
			#header h1 .browsers:before { left: 164px; }
			#header h1 .browsers:after { right: 164px; }
		#header h1 .browsers .swap { 
			  cursor: pointer;
			  padding: 0;
			  display: block;			 
			  position: absolute;			  
			  width: 100px;
			  height: 70px;	
			  top: 0;
		}
			.swap:before { 
			  content: '';
			  display: block;
			  position: relative;
			  top: 20px;
			  width: 20px;
			  height: 26px;
			  background: url(../images/swap-arrows-big.png) no-repeat;
			}
			#header h1 .browsers .swap.left {	
				left: 64px;
			}
				.swap.left:before { background-position: 0 2px; float: right; right: 20px; }
			#header h1 .browsers .swap.right {	
				right: 64px;
			}
				.swap.right:before { background-position: 0 -26px; float: left; left: 20px; }
			
	#header h1 .icon-browser { margin: 0 auto -17px; }	
	#header h1 + h3 { margin-top: 10px; }
	#header h3 { font-size: 18px; font-weight: normal; color: #877d78; }
	#header h3 a, #header h3 a:visited{  
		color:#DE3C10;
	}
	#header a:hover {  
		text-decoration:none;
	}
	
	.hr { display: inline-block; position: relative; }
	.hr:before, .hr:after { 
		height: 0px; 
		width: 240px; 
		content: ""; 
		display: block; 
		position: absolute; 
		top: 60%; 
		border-top: 1px dashed #bab7b2;
	}
		.hr:before { left: -250px;  }
		.hr:after { right: -250px;  }
	
	.frame-wrap, .frame { max-width: 700px; }
	
	.frame-wrap { margin-bottom: 40px; }
		.lt-ie9 .frame-wrap { background: none; }
	
	.frame { 
		background: #fff;
		border: 1px solid #C6C6C6; 
		-webkit-box-shadow: 0px 1px 0px 0px #CBCBCB;
		box-shadow: 0px 1px 0px 0px #CBCBCB;
	}
		.lt-ie9 .frame, .frame { -pie-background: none; }
	
	.unknown #header .icon-browser { display: none; }
	.unknown-browser { display: none; }
	.unknown .unknown-browser { display: block; color: #938f8a; font-weight: bold; }
	p.unknown-browser { margin-bottom:40px; }
	
	/* browser-specific selectors */
	
	.b-spec, .more-info, .instruct { display: none; } 
	/* browser-specific addons and the info that loves them */
	
	.firefox .rec-firefox, .firefox .opt-firefox, .firefox .b-spec.firefox, .firefox .more-info.firefox, .firefox #header h1 .browsers .firefox,
	.chrome .rec-chrome, .chrome .opt-chrome, .chrome .b-spec.chrome, .chrome .more-info.chrome, .chrome #header h1 .browsers .chrome,
	.msie .rec-msie, .msie .opt-msie, .msie .b-spec.msie, .msie .more-info.msie, .msie #header h1 .browsers .msie,
	.opera .rec-opera, .opera .opt-opera, .opera .b-spec.opera, .opera .more-info.opera, .opera #header h1 .browsers .opera,
	.safari .rec-safari, .safari .opt-safari, .safari .b-spec.safari,.safari .more-info.safari, .safari #header h1 .browsers .safari,
	.unknown .more-info.unknown, .unknown #header h1 .browsers .unknown-browser
	{ display: block; }
	.firefox span.instruct.firefox, .firefox span.b-spec.firefox,
	.chrome span.instruct.chrome, .chrome span.b-spec.chrome,
	.msie span.instruct.msie, .msie span.b-spec.msie,
	.opera span.instruct.opera, .opera span.b-spec.opera,
	.safari span.instruct.safari, .safari span.b-spec.safari, 
	.unknown span.b-spec.unknown {
	  display: inline;
	}
	.firefox div.instruct.firefox,
	.chrome div.instruct.chrome, 
	.msie div.instruct.msie, 
	.opera div.instruct.opera,
	.safari div.instruct.safari {
	  display: block;
	}
	.firefox .browser-display .icon-browser.firefox,
	.chrome .browser-display .icon-browser.chrome,
	.safari .browser-display .icon-browser.safari,
	.msie .browser-display .icon-browser.ie,
	.opera .browser-display .icon-browser.opera {	  
		opacity: 0.9;
		-ms-filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=90);
		filter: alpha(opacity=90);
	}
	/* do you see what happened there?  if not, doug_at_duckduckgo.com */
	
	/* end browser-specific selectors */
	
	
	
	.addon .more-info, .addon p { text-align: left; padding-left: 106px; font-size: 85%; }	
		.addon p.more-info { margin-bottom: 0; }
	.addon p, .addon ul { margin-bottom: 7px; }
	.addon ul, #browser-settings ul { 
		width: auto; 
		font-size: 85%; 
		margin-bottom: 7px; 
		padding-left: 122px;
	}
	.addon.warning .info { color: #b67228; }
	
	/*
		.addon a { color: #666; z-index: 15; }
			.addon a:visited { color: #444; }
			.addon a:active { color: #000; }
	*/
	.addon-logo{ float: left; width: 66px; height: 66px; margin: 20px 0; padding-right: 40px;  vertical-align: middle; text-align: center; }
		.addon-logo:before {
		  display: inline-block;
		  height: 100%;
		  width: 1px;
		  content: " ";
		  vertical-align: middle;
		}
		.addon-logo img, .addon-logo .icon-browser { margin: -90px auto 0; vertical-align: middle; }
			.addon-logo img { display: inline; min-width: 100%; }		
		.frame .icon-browser.big { 
			opacity: 0.1;
			-ms-filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=10);
			filter: alpha(opacity=10);
		}	
		.frame:hover .icon-browser.big { 
			opacity: 0.2;
			-ms-filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=20);
			filter: alpha(opacity=20);
		}	
		.frame .icon-browser.small { 
			opacity: 1;
			-ms-filter: none;
			filter: none;
			margin-bottom:-10px;
		}
		.browser-display .icon-browser { 
			margin: 0 5px;
			opacity: 0.5;
			-ms-filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=50);
			filter: alpha(opacity=50);
		}		
	.addon h5 { text-align: left; margin: 10px auto 7px; padding: 0; }
	.frame .icon-browser.big { position: absolute; bottom: 5px; right: 5px; z-index: 0; pointer-events: none; }
	
	.lt-ie9 #browser-settings { display: none; }
	#browser-settings .addon-logo { margin-top: 30px; }
	#browser-settings .intro { padding-left: 106px; margin-bottom: 8px;}
		#browser-settings .intro h4, #browser-settings .intro h5 { text-align: left; line-height: 1; padding: 0; }
		#browser-settings .intro p { text-align: left; padding: 0; margin-bottom: 0; }
		#browser-settings .intro ul { text-align: left; padding: 0; margin-bottom: 0; }
	#browser-settings .instruct h4, #browser-settings .instruct h5 { padding: 0; }
	#browser-settings .instruct h5 { font-size: 14px; }
	#browser-settings p.footnote { text-indent: -0.5ex; padding: 7px 21px; font-size: 85%; text-align: justify; }
	#browser-settings ul { width: auto;}
	
		
	.frame .instruct .left, .frame .instruct .right { float: none; overflow: hidden; padding: 10px 0 15px; margin: 0 auto; }
	.instruct .left, .instruct .left h4, .instruct .left h5, .instruct .left p { text-align: left; }	.instruct .left img, .instruct .right img { border: 1px solid #6C6868; max-width: 400px; }	
		.instruct .left img { float: left; margin-right: 20px; }
		#browser-settings .instruct .left ul, #browser-settings .instruct .left ol { position: relative; left: 10px; padding-left: none; }
	.instruct .right, .instruct .right h4, .instruct .right h5, .instruct .right p { text-align: right; }
		.instruct .right img { float: right; margin-left: 20px; }		
		#browser-settings .instruct .right ul, #browser-settings .instruct .right ol { margin-left: 20px; padding-left: 0; }
		
	.instruct.firefox .how img { max-width: 410px; }
	.instruct.firefox .settings img { max-width: 350px; margin-top: 0; }
	.instruct.chrome .how img { max-width: 380px; border-right: none; margin-top: 25px; }
	.instruct.chrome .settings img { max-width: 385px; margin-top: 25px; margin-bottom: 0; }
	.instruct.msie .how img { margin-left: 15%; margin-top: 0; }
	.instruct.msie .how h4 { margin-top: 80px; }
	.instruct.msie .settings img { max-width: 370px; margin-top: 0;}
	.instruct.msie .settings h4 { margin-top: 60px; }
	.instruct.opera .how h4 { margin-top: 100px; }
	.instruct.opera .settings.right img { margin-top: 0; }
	.instruct.safari .how img { margin-left: 11%; margin-top: 0; }
	.instruct.safari .how h4 { margin-top: 100px; }
	.instruct.safari .settings.left img { max-width: 370px; }
	
.icon {
  width: 25px;
  height: 25px;
  background-image: url("../images/icon-sprite.png");
  background-position: -187px 0;
  display: inline-block;
}
  .icon.referrer { background-position: -5px 0; }  
  .icon.bugs { background-position: -57px 0; }
  .icon.encryption { background-position: -84px 0; }
  .icon.scripts { background-position: -110px 0; }
  .icon.cookies { background-position: -136px 0; }
  .icon.flashcookies { background-position: -162px 0; }
  .icon.windows { background-position: -187px 0; }
  .icon.user { background-position: -240px 0; }
  .icon.settings { background-position: -266px 0; }

.type, .type-preview {
	z-index: 10;
	font-size: 15px;	
	padding: 3px 6px;
	background: #938f8a; 
	font-weight: bold;
	text-transform: uppercase;
	text-align: center;					
	display: inline-block;	
	position: relative;
	text-shadow: 0 1px 0 #D6D6D6;			
	-webkit-box-shadow: 0px 0px 3px rgba(0,0,0,0.3);
	-moz-box-shadow:    0px 0px 3px rgba(0,0,0,0.3);
	box-shadow:         0px 0px 3px rgba(0,0,0,0.3);				
}	
	.type {			
		display: block;
		position: absolute;			
		bottom: 5px;
		right:-5px;					
	}						
	.type:before, .type:after, .type-preview:before, .type-preview:after {
		content: " ";		
		position:absolute;
		top: 0;
		display: block;				
	}

	.type:before, .type-preview:before {
		left: -5px;
		border-left: 5px solid transparent;   
		border-top:  14px solid #938f8a;
		border-bottom: 14px solid #938f8a;
	}
	.type:after {
		right: 0; 
		top: -6px; 
		border-bottom:   6px solid #78746f;   
		border-left:  0px solid transparent;
		border-right: 5px solid transparent;
	}
	.type-preview:after {
		right: -5px;
		border-right: 5px solid transparent;   
		border-top:  14px solid #938f8a;
		border-bottom: 14px solid #938f8a;
	}
	.type .icon, .type-preview .icon { margin: -6px auto; position: relative; }
		.type .icon:after { 
			content: attr(rel);
			position: absolute;
			display: inline-block;
			text-align: right;
			min-width: 150px;
			visibility: hidden;
			bottom: 6px;
			font-size: 10px;
			right: 40px;
			background-color: #3368AE;
			background-color: rgba(50, 95, 168, 0.75);
			color: #fff;
			text-shadow: 2px 2px 1px #1e467b;
			font-weight: bold;
			padding: 5px 8px 5px 0;
			opacity:0;
			pointer-events: none; 
			-webkit-transition: all 0.3s ease-out; 
			-moz-transition: all 0.3s ease-out; 
			-o-transition: all 0.3s ease-out; 
			transition: all 0.3s ease-out; 
		}
		.type .icon:hover:after {
			visibility: visible;
			opacity: 1;
			right: 7px;
		}
	.type a { text-decoration: none; }
	p .type-preview { margin-left: 7px; }
.icon-browser {  
  display: inline-block;
  text-indent: -9999px;
  width: 66px;
  height: 66px;
  background-image: url("../common/images/browser_logos-64.png");
  -webkit-background-size: 353px 66px;
  background-size: 353px 66px;
  background-position: 1.5% -100%;
  background-repeat: repeat-x;
  -webkit-transition: all 0.5s ease-out; 
  -moz-transition: all 0.5s ease-out; 
  -o-transition: all 0.5s ease-out; 
  transition: all 0.5s ease-out; 
}

.icon-browser.chrome, .chrome .addon-logo .icon-browser, .chrome  .icon-browser.big, .chrome  .browsers .icon-browser {
  background-position: 1.5% 0;
}
.icon-browser.firefox, .firefox .addon-logo .icon-browser, .firefox .icon-browser.big, .firefox  .browsers .icon-browser {
  background-position: 26.5% 0;
}
.icon-browser.opera, .opera .addon-logo .icon-browser, .opera .icon-browser.big, .opera  .browsers .icon-browser  {
  background-position: 51.5% 0;
}
.icon-browser.safari, .safari .addon-logo .icon-browser, .safari .icon-browser.big, .safari  .browsers .icon-browser {
  background-position: 75% 0;
}
.icon-browser.ie, .icon-browser .msie, .msie .addon-logo .icon-browser, .msie .icon-browser.big, .msie  .browsers .icon-browser  {
  background-position: 99.5% 0;
}
.icon-browser:hover {
  opacity: 1;
  -ms-filter: none;
  filter: none;
}
.icon-browser:active {
  opacity: 0.9;
  -ms-filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=90);
  filter: alpha(opacity=90);
}

.icon-browser.big{
  width: 112px;
  height: 112px;
  background-image: url("../common/images/browser_logos-128.png");
  -webkit-background-size: 598px 112px;
  background-size: 598px 112px;
}
.icon-browser.small {
  width: 33px;
  height: 33px;
  background-image: url("../common/images/browser_logos-32.png");
  -webkit-background-size: 175px 33px;
  background-size: 175px 33px;
}
.unknown .icon-browser.big { display: none; }

/* Example styles used for this demo */
#tabContainer{
position:relative;
overflow: hidden;
padding: 0;
min-height: 320px;
margin-bottom: 30px;
}
#tabMenu{
position:absolute;
float: left;
z-index:50;
left:0;
top:0;
bottom:0;
}
#tabContent{
position:relative;
padding-left: 215px; /* same as .menu width */
}
#tabContent .content{
display:none;
padding: 0 50px;
}
#tabContent .content.active{
display:block;
}
#tabContent .content p { font-size: 85%; text-align: justify; margin-bottom: 0; }
	#tabContent .content p:last-child { margin-bottom: 14px; } 

.defaultmsg h5 { margin-top: 125px; color: #999; }

#tabMenu, .menu { background: #938f8a; }
.content-wrap ul.menu, .menu{margin:0 auto; padding:0; display:block; width: 215px; min-width: 175px; float: left; text-shadow: 1px 1px 2px rgba(0,0,0,0.2); }
.menu li {padding:0; margin:0; list-style:none; display:block; clear: both; }
.menu li .icon {float: left; margin-top: 2px; }
.menu li a{overflow: hidden; padding:5px; display:block; color:rgb(255,255,255); text-decoration:none; font-size:14px; cursor:pointer; background: #938f8a; font-weight: bold; }
.menu li a span{line-height:30px; float:left; display:block; padding:0 5px; }
.menu li:first-child a { -webkit-border-radius: 6px 0 0 0; border-radius: 6px 0 0 0; }
.menu li a:hover{ background: #78746f; }
.menu li a:active { background: #65615d; }
.menu li a:hover span{}
.menu li a.active, .menu li a.active:hover{ background: #78746f; }
.menu li a.active span, .menu li a.active:hover span{}

.swap_browser_trig {
	position: relative; 
	margin-top: -10px; 
	font-size: 80%; 
}
	.swap_browser_trig a { color:#DE3C10; }

#browser_swap_wrap { 
	position: relative;
    display: inline-block;
    width: 1px;
    height: 0px;	
}

.modal {
  min-height: 50px;
  width: 360px;
  background-color: #fff;
  border: 1px solid #c2c2c2;
  display: none;
  position: absolute;
  bottom: 25px;
  left: -10px;
  text-align: left;
  padding: 13px 7px 18px 18px;
  margin: 10px;
  -moz-border-radius: 4px;
  -webkit-border-radius: 4px;
  -webkit-border-radius: 4px;
  border-radius: 4px;
  z-index: 1000;
  font-size: 14px;
  -webkit-box-shadow: 0px 0px 6px 0px rgba(0,0,0,0.2);
  -webkit-box-shadow: 0px 0px 6px 0px rgba(0,0,0,0.2);
  box-shadow: 0px 0px 6px 0px rgba(0,0,0,0.2);
}
.modal.active { display: block; }
.modal:after,
.modal:before {
  display: block;
  position: absolute;
  z-index: -1;
  content: "";
  width: 0;
  height: 0;
  left: 50px;
  border-left: 9px solid transparent;
  border-right: 9px solid transparent;
  border-bottom: 0;
}
	.modal:before {
		bottom: -10px;  border-top: 9px solid #c2c2c2;
	}
	.modal:after {
		bottom: -8px;  border-top: 9px solid #fff;
	}

.modal h4 {
  color: #444;
  margin: 0 0 16px;
  font-size: 15px;
  font-weight: bold;
  display: block;
}
.modal a.active { cursor: default; }
.modal a .icon-browser { 
  opacity: 0.4;
  -ms-filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=40);
  filter: alpha(opacity=40);
}
	.modal a:hover .icon-browser { 
	  opacity: 0.6;
	  -ms-filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=60);
	  filter: alpha(opacity=60);
	}
	.modal a.active .icon-browser, .modal a.active:hover .icon-browser { 
	  opacity: 1;
	  -ms-filter: none;
      filter: none;
	}

	
#pg-addons:before, #pg-addons:after  {
	display: block; 
	position: absolute; 
	width: 100%; 
	content: ""; 
	left: 0; 	
	height: 100%;
	z-index: -2;
	background-image: -moz-radial-gradient(50% 50%, ellipse contain, rgba(255, 255, 255, 1) 0%, rgba(255, 255, 255, 0) 99%);
	background-image: -webkit-radial-gradient(50% 50%, ellipse contain, rgba(255, 255, 255, 1) 0%, rgba(255, 255, 255, 0) 99%);
	background-image: -o-radial-gradient(50% 50%, ellipse contain, rgba(255, 255, 255, 1) 0%, rgba(255, 255, 255, 0) 99%);
	background-image: -ms-radial-gradient(50% 50%, ellipse contain, rgba(255, 255, 255, 1) 0%, rgba(255, 255, 255, 0) 99%);
	background-image: radial-gradient(20% 20%, ellipse contain, rgba(255, 255, 255, 1) 0%, rgba(255, 255, 255, 0) 99%);
}
	#pg-addons:before { top: -300px; }
	#pg-addons:after { top: 400px; }
	
	
/*
@media only screen and (min-width: 800px) {	
	#header img#pg-logo, #header h1 { margin-left: 10% }
}
*/
@media only screen and (min-width: 523px) {	
	#tabMenu, .content-wrap ul.menu, .menu { 
	  -webkit-border-radius: 6px 0 0 6px; 
	  border-radius: 6px 0 0 6px; 
	}
	.menu li:last-child a { -webkit-border-radius: 0 0 0 6px; border-radius: 0 0 0 6px;}
}

@media only screen and (max-width: 523px) {
  
  #header img#pg-logo { position: relative; top: 0; left: 0; padding-top: 15px; margin: 0 auto; display: block; }
  #header h1 { padding: 0; text-align: center; font-size: 32px; }
  #header h1 .browsers { width: 100%; }
	#header h1 .browsers:before { left: 34px; }
	#header h1 .browsers:after { right: 34px; }
	#header h1 .browsers .swap { width: 34px; }
		#header h1 .browsers .swap.left {	left: 0; }
		#header h1 .browsers .swap.right { right: 0; }
		.swap.left:before { right: 10px; }
		.swap.right:before { left: 10px; }
  .addon-logo { padding-right: 20px; }  
  .addon .more-info, .addon p, #browser-settings .intro { padding-left: 86px; }
  .addon ul, #browser-settings ul { padding-left: 102px; }
  #tabContent{ padding-left: 0; }
  #tabContent .content { padding: 0 20px; }
  #tabMenu { margin-bottom: 14px; }
  #tabMenu, .content-wrap ul.menu, .menu { 
	position: relative; bottom: auto; width: 100%; 
	-webkit-border-radius: 6px 6px 0 0; border-radius: 6px 6px 0 0;
  }
  .menu li { display: inline; }
  .menu li a{float:left; }
  .content-wrap ul { min-width: 100px; }
  
  .instruct h4 { margin-top: 40px !important; }
  .instruct .left, .instruct .right { width: 95%; margin: 0 auto; }
  .instruct .left img, .instruct .right img { display: block; float: none; max-width: 99% !important; margin: 0 auto; }
}
@media only screen and (-webkit-min-device-pixel-ratio: 2),only screen and (-moz-min-device-pixel-ratio: 2),only screen and (min--moz-device-pixel-ratio: 2),only screen and (min-device-pixel-ratio: 2),only screen and (min-resolution: 192dpi) {
	#pg-logo.sherrif {		
		position: relative;
	}
		#pg-logo.sherrif:before {
			width: 172px;
			height: 172px;
			display: block;
			content: "";
			background: url(../images/dax-sheriff_out_hat_big.retina.png) 0 0 no-repeat;
			background-size: 172px 172px;
			position: absolute;
			top: 0;
			left: 0;
			z-index: 55;
			opacity: 1;
		}
}
@font-face {
    font-family: 'FrancoisOneRegular';
    src: url('../font/FrancoisOne-webfont.eot');
    src: url('../font/FrancoisOne-webfont.eot?#iefix') format('embedded-opentype'),
         url('../font/FrancoisOne-webfont.woff') format('woff'),
         url('../font/FrancoisOne-webfont.ttf') format('truetype'),
         url('../font/FrancoisOne-webfont.svg#FrancoisOneRegular') format('svg');
    font-weight: normal;
    font-style: normal;

}