   �      *http://donttrack.us/common/css/micro.css?1     %{��}T     %{�\~�              �      
     O K      Server   nginx   Date   Tue, 02 Jul 2013 17:28:53 GMT   Content-Type   text/css   Last-Modified   Thu, 27 Jun 2013 06:20:39 GMT   Expires   Wed, 03 Jul 2013 17:28:53 GMT   Cache-Control   max-age=86400   Content-Encoding   gzip /* 
 *  _litestrap 
 *
 * Utility Classes to control site width, columns, floats, clears, and fixes
 *
 */

/* ok these aren't classes but they're good */
 
a { text-decoration: none; }
img { max-width: 100%; }

/* here are the classes... */
.site-wrapper { width: 100%; overflow: hidden; }
.content-wrap { max-width: 960px; margin: 0 auto; position: relative; }

.text-center, .text-mid { text-align: center; }
.text-left { text-align: left; }
.text-right { text-align: right; }

.pull-left { float: left; }
.pull-right { float: right; }
.pull-none { float: none; }

/* .r- rules */
.r-block { display: block; }
.r-inline { display: inline; }
.r-inline-block, .r-iblock { display: inline-block; }
.r-border-box { 
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    -ms-box-sizing: border-box;
    -o-box-sizing: border-box;
    box-sizing: border-box;
}
.r-content-box, .r-grid-pad {
    /* for when you *intentionally* want to break the grid with padding */
    -webkit-box-sizing: content-box;
    -moz-box-sizing: content-box;
    -ms-box-sizing: content-box;
    -o-box-sizing: content-box;
    box-sizing: content-box;
}

.clear { clear: both; }
.hide { display: none; }
.allcaps { text-transform: uppercase; }

/* grid sizes */
.whole, .half, .third, .twothird, .twothirds, .quarter, .threequarter, .threequarters, .sixth, .eighth, .ninety, .eighty, .seventy, .sixty, .fifty, .forty, .thirty, .twenty, .ten { 
    float: left; 
    display: block;
    position: relative; 
    /* Just in case someone tries to get cute and add padding to grid elements... */
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    -ms-box-sizing: border-box;
    -o-box-sizing: border-box;
    box-sizing: border-box;
}
.whole         { width: 100%; }
.half, .fifty 
                     { width: 50%; }
.third         { width: 33.3%; }
.twothird, .twothirds     
                     { width: 66.6%; }
.quarter     { width: 25%; }
.threequarter, .threequarters 
                     { width: 75%; }
.sixth         { width: 16.6%; }
.eighth       { width: 12.5%; }

.ninety       { width: 90%; }
.eighty       { width: 80%; }
.seventy     { width: 70%; }
.sixty         { width: 60%; }
.forty         { width: 40%; }
.thirty       { width: 30%; }
.twenty       { width: 20%; }
.ten             { width: 10%; }

/* after grids so that you can apply it and it should kill the float */
.block-mid { margin-left: auto; margin-right: auto; display: block; float: none; }

/* basic clearfix - comes in many flavours! */
.clearfix:after, .fix:after, .group:after, .row:after, .gw:after {
    content: "";
    display: table;
    clear: both;
}

@media only screen and (max-width: 600px) {    
    /* automatically mobile-ready!  leave this stuff out if you want */
	html { min-width: auto; }
    body, .content-wrap {
        min-width: 320px;
        width: 100%;
    }
	
	/* mobile-only trigger classes */
	.palm-hide { display: none; }
    .palm-clear { clear: both; }
    .palm-killfloat, .palm-pull-none { float: none; }    
    
	/* death to floating columns on mobile! */
    .whole, .half, .third, .twothird, .twothirds, .quarter, .threequarter, .threequarters, .sixth, .eighth, .ninety, .eighty, .seventy, .sixty, .fifty, .forty, .thirty, .twenty, .ten  { width: 100%; float: none; clear: both; margin: 0 auto;}    
        /* just in-case silly people apply the grids to images and it breaks things... */
		img.half, img.third, img.twothird, img.quarter, img.threequarter, img.sixth { width: auto; }
        .palm-half, .half.palm-half { width: 50%; float: left; clear: none; }
        .half .half { width: 100%; }
}

/* reset ( out of order to make it easier to update litestrap) */
html, body, div, span, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
abbr, address, cite, code, del, dfn, em, img, ins, kbd, q, samp,
small, strong, sub, sup, var, b, i, dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, figcaption, figure,
footer, header, hgroup, menu, nav, section, summary,
time, mark, audio, video {
  margin: 0;
  padding: 0;
  border: 0;
  font-size: 100%;
  font: inherit;
  vertical-align: baseline;
}

article, aside, details, figcaption, figure,
footer, header, hgroup, menu, nav, section {
  display: block;
}

blockquote, q { quotes: none; }

blockquote:before, blockquote:after,
q:before, q:after { content: ""; content: none; }

ins { background-color: #ff9; color: #000; text-decoration: none; }

mark { background-color: #ff9; color: #000; font-style: italic; font-weight: bold; }

del { text-decoration: line-through; }

abbr[title], dfn[title] { border-bottom: 1px dotted; cursor: help; }

table { border-collapse: collapse; border-spacing: 0; }

hr { display: block; height: 1px; border: 0; border-top: 1px solid #ccc; margin: 1em 0; padding: 0; }

input, select { vertical-align: middle; }


/**
 * Font normalization inspired by YUI Library's fonts.css: developer.yahoo.com/yui/
 */

body { font:15px/1.5 sans-serif; *font-size:small; } /* Hack retained to preserve specificity */
select, input, textarea, button { font:99% sans-serif; }

/* Normalize monospace sizing:
   en.wikipedia.org/wiki/MediaWiki_talk:Common.css/Archive_11#Teletype_style_fix_for_Chrome */
pre, code, kbd, samp { font-family: monospace, sans-serif; }


/**
 * Minimal base styles.
 */

/* Always force a scrollbar in non-IE */
html { overflow-y: scroll; }

/* Accessible focus treatment: people.opera.com/patrickl/experiments/keyboard/test */
a:hover, a:active { outline: none; }

ul, ol { margin-left: 2em; }
ol { list-style-type: decimal; }

/* Remove margins for navigation lists */
nav ul, nav li { margin: 0; list-style:none; list-style-image: none; }

small { font-size: 85%; }
strong, th { font-weight: bold; }
em { font-style: italic; }

td { vertical-align: top; }

/* Set sub, sup without affecting line-height: gist.github.com/413930 */
sub, sup { font-size: 75%; line-height: 0; position: relative; }
sup { top: -0.5em; }
sub { bottom: -0.25em; }

pre {
  /* www.pathf.com/blogs/2008/05/formatting-quoted-code-in-blog-posts-css21-white-space-pre-wrap/ */
  white-space: pre; white-space: pre-wrap; word-wrap: break-word;
  padding: 15px;
}

textarea { overflow: auto; } /* www.sitepoint.com/blogs/2010/08/20/ie-remove-textarea-scrollbars/ */

.lt-ie8 legend { margin-left: -7px; } 

/* Align checkboxes, radios, text inputs with their label by: Thierry Koblentz tjkdesign.com/ez-css/css/base.css  */
input[type="radio"] { vertical-align: text-bottom; }
input[type="checkbox"] { vertical-align: bottom; }
.lt-ie8 input[type="checkbox"] { vertical-align: baseline; }
.lt-ie8.lt-ie7 input { vertical-align: text-bottom; }

/* Hand cursor on clickable input elements */
label, input[type="button"], input[type="submit"], input[type="image"], button { cursor: pointer; }

/* Webkit browsers add a 2px margin outside the chrome of form elements */
button, input, select, textarea { margin: 0; }

/* Colors for form validity */
input:valid, textarea:valid   {  }
input:invalid, textarea:invalid {
   border-radius: 1px; -moz-box-shadow: 0px 0px 5px red; -webkit-box-shadow: 0px 0px 5px red; box-shadow: 0px 0px 5px red;
}
.no-boxshadow input:invalid, .no-boxshadow textarea:invalid { background-color: #f0dddd; }


/* These selection declarations have to be separate
   No text-shadow: twitter.com/miketaylr/status/12228805301 */
::-moz-selection{ background: #de3c10; color:#fff; text-shadow: none; }
::selection { background:#de3c10; color:#fff; text-shadow: none; }

/* j.mp/webkit-tap-highlight-color */
a:link { -webkit-tap-highlight-color: #de3c10; }

/* Make buttons play nice in IE:
   www.viget.com/inspire/styling-the-button-element-in-internet-explorer/ */
button {  width: auto; overflow: visible; }

/* Bicubic resizing for non-native sized IMG:
   code.flickr.com/blog/2008/11/12/on-ui-quality-the-little-things-client-side-image-resizing/ */
.lt-ie8 img { -ms-interpolation-mode: bicubic; }
 
/* End Reset */

/* +Globals */

body, .sans, .modal h4, .site-bottom, .site-bottom__heading, .micro-link__heading, .micro-link__subtitle { font-family: "Proxima Nova", ProximaNova, "Helvetica Neue", Segoe, "Segoe UI", Frutiger, "Nimbus Sans L", "Liberation Sans", "Open Sans", FreeSans, sans-serif; }

#wrapper { width: 100%; overflow: hidden; position: relative; }

h1, h2, h3, h4, h5, h6 {
	font-weight: bold;
	text-align: center;
	text-shadow: 0 1px 0 rgba(255, 255, 255, 0.5);
	position: relative;
	display: block;
	letter-spacing: -0.05em;
}
h1, .h1 { font-size:77.1px; }
h2 , .h2{ font-size:32px; }
h3 , .h3{ font-size:30px; } 
h4, .h4 { font-size:24px; }
h5, .h5 { font-size:18px; }
h6, .h6 { font-size:16px; font-weight: normal; }
h1, h2, h3, h4, h5, h6 { margin: 40px auto; }	
p, ul { margin: 0 auto 20px; }

h1 a, h2 a, h3 a, h4 a, h5 a, h6 a { text-decoration: none;}

.left { float: left; }
.right { float: right; }
.mid { text-align: center; }
	.two.third { width: 63%; }

/* grid */
.gw { clear: both; margin-left: -20px; }
	.gw .g { padding-left: 20px; }

/* other things */	
	
.topmsg {
	font-size: 14px;
	width: 140px;	
	padding: 7px 55px;
	line-height: 1.1;
	color: #2d2d2d;
	font-weight: bold;
	text-transform: uppercase;
	text-align: center;	
	display: block;
	position: absolute;			
	top: 38px;
	right:-57px;	
	z-index: 100;
	text-shadow: 1px 1px 0 rgba(255,255,255,0.7);
	background: #fecd57;	
	background: -moz-linear-gradient(left,  #fecd57 0%, #fcd767 50%, #fecd57 100%);
	background: -webkit-gradient(linear, left top, right top, color-stop(0%,#fecd57), color-stop(50%,#fcd767), color-stop(100%,#fecd57));
	background: -webkit-linear-gradient(left,  #fecd57 0%,#fcd767 50%,#fecd57 100%);
	background: -o-linear-gradient(left,  #fecd57 0%,#fcd767 50%,#fecd57 100%);
	background: -ms-linear-gradient(left,  #fecd57 0%,#fcd767 50%,#fecd57 100%);
	
	background: linear-gradient(to right,  #fecd57 0%,#fcd767 50%,#fecd57 100%);	
	
	-webkit-box-shadow: 0px 2px 3px rgba(0,0,0,0.3);
	-moz-box-shadow:    0px 2px 3px rgba(0,0,0,0.3);
	box-shadow:         0px 2px 3px rgba(0,0,0,0.3);
	
	-ms-transform:rotate(45deg); /* IE9 */
	-moz-transform: rotate(45deg);  /* FF3.5/3.6 */
	-o-transform: rotate(45deg);  /* Opera 10.5 */
	-webkit-transform: rotate(45deg);  /* Saf3.1+ */
	transform: rotate(45deg);  /* Newer browsers */
}							
.topmsg a {
  text-decoration: none;
  color: #2d2d2d;
}
.lt-ie9  .topmsg { 
	top: -44px; 
	right: -73px; 
	border-bottom: 2px solid #BEBEBE;
	-ms-filter: "progid:DXImageTransform.Microsoft.Matrix(SizingMethod='auto expand', M11=0.7071067811865476, M12=-0.7071067811865475, M21=0.7071067811865475, M22=0.7071067811865476)"; /* IE8 */	}
.lt-ie8 .topmsg { display: none; }
	
#lang-select { 
	text-align: left;
	position: absolute; 
	z-index: 100;
	top: 0; 
	left: 20px; 
	height: 1.5em;
	overflow: visible;
	padding: 4px 12px 0; 
	cursor: pointer;
	-webkit-border-radius: 0 0 7px 7px;
        border-radius: 0 0 7px 7px; 
        -moz-background-clip: padding; -webkit-background-clip: padding-box; background-clip: padding-box;		
  -webkit-box-shadow: 0px 2px 3px 0px #a1acba;
          box-shadow: 0px 2px 3px 0px #a1acba;	
}
	#lang-select img { float: left; margin-right: 7px; position: relative; top: 3px; }
	#lang-select span.current { font-weight: bold; font-size: 0.75em; display: block; }
	#lang-select ul { 
		margin: 0;
		position: relative;	
		top: 8px;
		background: #fff;
		-webkit-border-radius: 0 0 7px 7px;
		 border-radius: 0 0 7px 7px; 
		-webkit-box-shadow: 0px 2px 3px 0px #a1acba;
          box-shadow: 0px 2px 3px 0px #a1acba;	
		  
	}
		#lang-select li { 
			list-style: none; 
			background: #fff; 			
			border: 1px sold #C6C6C6; 
			display: block;			
		}
			#lang-select li:last-child, #lang-select li:last-child a { 
				-webkit-border-radius: 0 0 7px 7px;
				border-radius: 0 0 7px 7px; 
			}
			#lang-select li a { 
				font-size: 0.80em;
				font-weight: bold; 
				padding: 3px 10px; 
				display: block; 
				text-shadow: none;
			}
			#lang-select li a:hover, #lang-select li.current a { background: #D33910; color: #fff; }
			#lang-select li a:active { background: #DE3C10; color: #f2f2f2; }
			

.content-wrap {
	width: 100%;
	min-width: 600px;
	max-width: 933px;
	margin: auto;	
	position: relative;
}	
	.site-body h3, .site-body h4, .site-body h5 {
		padding: 0 10px;
	}
	.site-body  ul { width: 50%; min-width: 320px; margin: 0 auto; text-align: left;}
	.content-wrap img { max-width: 100%; }

	.tableframe { width: 90%; min-width: 663px; max-width: 663px; margin: 0 auto; }		
	
	hr, .frame-wrap, .sharebuttons { 
		max-width: 570px;
		width: 90%;
		margin: 0 auto;
	}
	
	hr { height: 0; margin: 20px auto; border: none; border-bottom: 1px dashed #384e66; }
		hr:after { height: 0; width: 100%; margin: 0 auto; display: block; content: " "; border-bottom: 1px dashed #dae0e8; position: relative; top: 1px;}
	
	.frame-wrap { 
		max-width: 570px;
		width: 90%;
		margin: 0 auto 80px;
		display: block;
		position: relative;	
		overflow: hidden;
		padding: 6px;
	}
		.lt-ie9 .frame-wrap {
			width: 570px;
			background-image: url('../images/fig-banner-bg.png');
			background-position: 100% -1px;
			background-repeat: no-repeat;	
		}
		.lt-ie8 .frame-wrap {
			background-image: none;
		}
	
	.frame {		
		clear: both; 
		margin: 0 auto;
		padding: 10px 5%;
		display: block;
		position: relative;			
		border: 1px solid #C9C9C9;
		-webkit-box-shadow: 0px 1px 0px 0px #D5D5D5;
		box-shadow: 0px 1px 0px 0px #D5D5D5;
		-webkit-border-radius: 7px;
        border-radius: 7px; 
		-moz-background-clip: padding; 
		-webkit-background-clip: padding-box; 
		background-clip: padding-box;
		background: #fff;
	}	
		.frame:before,
		.frame:after {
			content:"";
			display:table;
		}
		.frame:after {
			clear:both;
		}
		.lt-ie9 .frame { 
			zoom: 1; 			
			/* using css3pie, so this is not needed:
			filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#feffff', endColorstr='#ebf1f5',GradientType=0 ),progid:DXImageTransform.Microsoft.Shadow(color='#a1acba', Direction=90, Strength=2); */
		}
		.frame h3 { font-size: 22px; }
		.frame h4 { font-size: 16px; }
		.frame p { text-align: center; padding: 7px 0; }
		.frame img { display: block; margin: 20px auto; max-width: 100%; }
		.frame .left { margin: 0 1% 20px 10.4%; }
			.frame .left + .left { margin: 0 1%; }
		.frame .right { margin: 0 10.4% 20px 1%; }
			.frame .right + .right { margin: 0 1%; }
		.frame .box { margin-bottom: 20px; padding-bottom: 5px; }
			.frame .box img { max-width: 97%; margin: 10px auto; }
			.frame .box h5 { font-weight: normal; font-size: 16px; color: #475a6c; margin: 10px 0;}
			
		
		.frame hr { height: 44px; border: none; background: url('../images/arrow-down.png') 50% 0 no-repeat; }
			.frame hr:after { border: none; display: none; visibility: hidden; }
		
		.fig {
			font-size: 15px;
			width: 110px;
			background: #C6C6C6;
			padding: 3px 0;
			color: #686868;
			font-weight: bold;
			text-transform: uppercase;
			text-align: center;					
			display: block;
			position: absolute;			
			top: 9px;
			right:-32px;	
			text-shadow: 0 1px 0 #D6D6D6;			
			-webkit-box-shadow: 0px 0px 3px rgba(0,0,0,0.3);
			-moz-box-shadow:    0px 0px 3px rgba(0,0,0,0.3);
			box-shadow:         0px 0px 3px rgba(0,0,0,0.3);
			
			-ms-transform:rotate(45deg); /* IE9 */
			-moz-transform: rotate(45deg);  /* FF3.5/3.6 */
			-o-transform: rotate(45deg);  /* Opera 10.5 */
			-webkit-transform: rotate(45deg);  /* Saf3.1+ */
			transform: rotate(45deg);  /* Newer browsers */						
		}							
		.lt-ie9  .fig { 
			top: -29px; 
			right: -40px;
			-ms-filter: "progid:DXImageTransform.Microsoft.Matrix(SizingMethod='auto expand', M11=0.7071067811865476, M12=-0.7071067811865475, M21=0.7071067811865475, M22=0.7071067811865476)"; /* IE8 */	}
		.lt-ie8 .fig { display: none; /*filter: progid:DXImageTransform.Microsoft.Matrix(sizingMethod='auto expand', M11=0.7071067811865476, M12=-0.7071067811865475, M21=0.7071067811865475, M22=0.7071067811865476); *//* IE6,IE7, but produces nasty results, so I disabled it */ }
			.fig:before, .fig:after {
				content: " ";
				border-top:   6px solid #606060;   
				border-left:  3px solid transparent;
				border-right: 3px solid transparent;
				position:absolute;
				bottom: -6px;
				display: block;				
			}

			.fig:before {left: 0;}
			.fig:after {right: 0;}

#ddg-home-logo { margin: 20px auto 0; }
#ddg-search-box { margin: 0 auto 20px; }


/* email list signup form */
.clu { display: block; line-height: 32px; }
	.clu i { font-style: italic; }
	.clu input { 
		margin-top: -3px; 		
		-webkit-border-radius: 4px;
		border-radius: 4px; 
	}
	.clu input.email-input { 
		background: #f2f2f2; 
		border: 1px solid #c2c2c2;
		position: relative;		
		font-size: 12px;
		line-height: 1.1em; 
		color: #909092; 		
		padding: 6px 10px;
	}
		.clu ::-webkit-input-placeholder { color:#909092; }
		.clu ::-moz-placeholder { color:#909092; }
		.clu :-ms-input-placeholder { color:#909092; }
		.clu input:-moz-placeholder { color:#909092; }
		.clu input.email-input:focus { 
			color: #000;
			outline: medium none;			
			border: 1px solid #76caef; 
			-moz-box-shadow: 0 0 5px #76caef;
			-webkit-box-shadow: 0 0 5px #76caef;
			box-shadow: 0 0 5px #76caef;
		}
	.clu input[type="submit"].button { 
		padding: 7px 9px; 
		display: inline; 
		font-size: 12px;
		line-height: 1;		
	}

/* site bottom & footer */	
.site-bottom {
	margin-top: 40px;
	padding: 45px 7px;
	background: #dad9db;
	color: #454549;
	font-size: 1.1em;
	text-align: center;
	border-top: 1px solid #c7c7c7;
	text-shadow: 0 1px 0 #fff;
	text-shadow: 0 1px 0 rgba(255,255,255,0.5);
}	
	.site-bottom__heading { 
		font-weight: normal; 
		color: #454549;
		padding: 48px 0 0; 
		margin: 0 0 5px; 
		line-height: 1.05; 
		font-size: 32px;
	}
	.site-bottom a { color: #4d4f55; }
		.site-bottom a:hover { text-decoration: none; }
	
	.site-bottom .share-links { margin: -7px 0 0; padding: 7px 0 33px; }
	.share-links { display: block; }
		.share-links__caption { margin-right: 10px; }
		.share-links a { 
			cursor: pointer; 
			display: inline-block; 
			position: relative;
			line-height: 1; 
			margin: 0 2px;
			text-shadow: 0 1px 0 rgba(255,255,255,0.5), 0 -1px 0 rgba(0,0,0,0.1);
		}
			.share-links--large a{ 
				font-size: 2em;  
				margin-top: -12px;			
				top: 7px;
			}
			.share-links a.email:hover { color: #000;}
			.share-links a.twitter:hover { color: #2fa9ef;}
			.share-links a.facebook:hover { color: #3e5499;}
	
	.micro-link { display: block; position: relative; margin-top: 20px; }
		.micro-link.frame { background: #f6f6f6; border-color: #c5c5c5; padding: 10px 0;}
		.micro-link__img { 
			height: 113px; 
			position: relative;			
			display: block;
			text-align: center;			
			overflow: visible;
		}
			.micro-link__img, .micro-link__img:before, .micro-link__img img { vertical-align: middle; }
			.micro-link__img:before {
				display: inline-block;
				height: 100%;
				width: 1px;
				content: " ";				
			}
			.micro-link__img img {				
				display: inline;
				margin: 0;
				min-width: 20px;
				max-width: 99%;
			}		
		.micro-link__heading, .micro-link__subtitle { 
			line-height: 1; 
			margin: 0; 
			padding: 0 0 7px; 
			font-weight: normal;
		}
		.micro-link__heading { color: #4960da; font-size: 14px; }
		.micro-link__subtitle { color: #67676a; font-size: 12px; }
	
#footer, .site-footer { 
	background: #3a3a41; 
	margin-top: 50px; 
	clear: both; 
	overflow: hidden; 
	text-align: center; 
	padding: 25px 0 23px;	
	color: #84898f;
	border-top: 1px solid #000;
}
	.browser-display + #footer, .site-bottom + #footer { margin-top: 0; }
	#footer .sharebuttons { text-align: center; padding: 31px 0; margin-bottom: 0;}
		#footer .sharebuttons a { 
			display: inline-block; 
			float: none;
			-webkit-border-radius: 5px;
			border-radius: 5px;
			-webkit-box-shadow: 0px 3px 0px -1px rgba(0,0,0,0.1);
			box-shadow: 0px 3px 0px -1px rgba(0,0,0,0.1);
		}
			
	.footmenu { color: #b7b9bc; margin-bottom: 7px; font-size: 95%; }
		.footmenu a, .footmenu a:visited { 
			display: inline-block;
			color: inherit; 
			padding: 0 9px 0 5px; 
			line-height: 1; 
			border-right: 1px solid #b7b9bc; 
		}
              .footmenu a:hover { color: #ff4715; }
			.footmenu a:last-child { border-right: none;}
	.copyright { color: #84898f; margin-bottom: 0; line-height: 1; font-size: 95%; }
		.copyright a, .copyright a:visited { color: inherit; }
				
	.sharebuttons {
		clear: both;
		overflow: hidden;
		margin: 0 auto 25px;
	}

	.sharebuttons a { 
		background-image: url('../images/sharesprite.png'); 			
		width: 181px; 
		height: 39px; 
		display: block; 
		float: left;
		cursor: pointer;
		text-indent: -9999px;
	}
	.sharebuttons a.facebook, .sharebuttons a.twitter { margin-right:13px; }
		.sharebuttons a.facebook { background-position: 0 0; margin-left: 1px;}
			.sharebuttons a.facebook:hover { background-position: 0 79px; }
			.sharebuttons a.facebook:active { background-position: 0 39px; }
		.sharebuttons a.twitter { background-position: 363px 0; }
			.sharebuttons a.twitter:hover { background-position: 363px 79px; }
			.sharebuttons a.twitter:active { background-position: 363px 39px; }
		.sharebuttons a.email { background-position: 181px 0; }
			.sharebuttons a.email:hover { background-position: 181px 79px; }
			.sharebuttons a.email:active { background-position: 181px 39px; }

	.moreinfo { overflow: hidden; margin: 0 auto; }

	
/* share modal */	
	#share-email h4 { margin: 24px 0; }
	#share-email form { width: 90%; margin: 0 auto; }
	#share-email form #fieldnums { display: none; visibility: hidden; }
	#share-email form #friendemails { margin: 24px auto 12px; }
	#share-email form #buttons { margin: 50px auto 0; clear: both; width: 105%; position: relative; left: -2.5%; }	
	#share-email form div { 
		width: 100%; 
		display: block; 
		background: #f1f1f1; 
		padding: 5px 6px 5px 5px; 
		position: relative; 
		left: -5px; 
		margin: 0 auto 8px;
		-moz-border-radius: 8px;
		-webkit-border-radius: 8px;
		border-radius: 8px;
		}	
	#share-email form input[type="email"], #share-email form input[type="text"] { 
		width: 95%; 
		padding: 7px 2.5%; 
		background: #fff; 
		border: 1px solid #cccccc; 
		position: relative; 
		-moz-border-radius: 5px;
		-webkit-border-radius: 5px;
		border-radius: 5px;
		}
		#share-email form input[type="email"]:focus, #share-email form input[type="text"]:focus  {
			background: #fff;
			outline: medium none;
			border: 1px solid #76caef; 
			-moz-box-shadow: 0 0 5px #76caef;
			-webkit-box-shadow: 0 0 5px #76caef;
			box-shadow: 0 0 5px #76caef;
		}
	a.fieldcontrol { color: #2e76da; margin: 0 5px; padding-left: 25px; height: 18px; background: url('../images/addremove.png') left top no-repeat; cursor: pointer; display: block; text-align:left;}
		a.fieldcontrol:hover { color: #559efd; }
		a.fieldcontrol:active { color: #2a6ecb; }
	a#addfriend.fieldcontrol { background-position: 0 0; margin-left: -5px;}			
		a#addfriend.fieldcontrol:active { background-position: 0 -36px; }
	a#remfriend.fieldcontrol { background-position: 0 -18px; float: right; margin-right: -5px; }		
		a#remfriend.fieldcontrol:active { background-position: 0 -54px; }
	a.fieldcontrol.hide { display: none; }
		
	.button, a.button, input.button {
		text-align: center; 
		padding: 0;
		display: block; 
		position: relative;
		border: 1px solid #395c72;
		-moz-border-radius: 5px;
		-webkit-border-radius: 5px;
		border-radius: 5px;
		text-shadow: 0 -1px 1px #3d4751;
		background-color: #6b7b94;
		font-weight: bold;
		color: #fff;
		cursor: pointer;
		box-shadow: inset 0 1px 0 rgba(255,255,255,0.1), 0 1px 0 rgba(0,0,0,0.3);
	}
		.button:hover, .button.blue:hover {
			background-color: #277adb;
		}
		.button:active {
			background-color: #515d70;
		}
		.button.blue {
			background-color: #2b78ae; 
			text-shadow: 0 -1px 1px #225c82;
		}
			.button.blue:hover { background-color: #256695; }
		.button.dark {
			background-color: #47474b;
			border-color: #3a3a41;
			text-shadow: 0 -1px 1px #000;
		}
			.button.dark:hover { background-color: #383841; }
		
	#share-email .button { width: 130px; height: 32px; line-height: 32px; float: left;}
	#share-email .button.submit { float: right; }
	
	/*	--------------------------------------------------
	Reveal Modals
	-------------------------------------------------- */
		
	.reveal-modal-bg { 
		position: fixed; 
		zoom: 1;
		height: 100%;
		width: 100%;
		
		background: rgba(0,0,0,.8);
		-pie-background: rgba(0,0,0,.8);
		z-index: 100;
		display: none;
		top: 0;
		left: 0; 
		}
	
	.reveal-modal {
		visibility: hidden;
		line-height: 1.5;
		top: -100%; 
		left: 50%;
		margin-left: -186px;
		width: 320px;
		background: #fff;
		border: 5px solid #bacfe0;
		position: fixed;
		z-index: 101;
		padding: 0 22px 24px;
		-moz-border-radius: 12px;
		-webkit-border-radius: 12px;
		border-radius: 12px;
		-moz-box-shadow: 0 0 10px rgba(0,0,0,.4);
		-webkit-box-shadow: 0 0 10px rgba(0,0,0,.4);
		box-shadow: 0 0 10px rgba(0,0,0,.4);

		}
		
	.reveal-modal.small 		{ width: 200px; margin-left: -140px;}
	.reveal-modal.medium 		{ width: 400px; margin-left: -240px;}
	.reveal-modal.large 		{ width: 600px; margin-left: -340px;}
	.reveal-modal.xlarge 		{ width: 800px; margin-left: -440px;}
	
	.reveal-modal input[type="text"], .reveal-modal input[type="email"] { color: #bbb; }
		.reveal-modal input[type="text"]:focus, .reveal-modal input[type="email"]:focus { color: #000; }
	
	.reveal-modal .close-reveal-modal {
		font-size: 22px;
		line-height: .5;
		position: absolute;
		top: 8px;
		right: 11px;
		color: #aaa;
		text-shadow: 0 -1px 1px rbga(0,0,0,.6);
		font-weight: bold;
		cursor: pointer;
	} 
	
/* add to browser/modal dialog */
.add_to_browser, .modal {
  min-height: 50px;
  width: 180px;
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
	.add_to_browser:after, .modal:after
	.add_to_browser:before, .modal:before{
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
		.add_to_browser:before, .modal:before {
		  bottom: -10px;
		  border-top: 9px solid #c2c2c2;
		}
		.add_to_browser:after, .modal:after {
		  bottom: -8px;
		  border-top: 9px solid #fff;
		}

	.add_to_browser h4, .modal h4 {
	  color: #444;
	  margin: 0 0 16px;
	  padding: 0;
	  font-size: 15px;
	  font-weight: bold;
	  display: block;
	  text-align: left;	  
	}

	.add_to_browser a.icon, .modal a.icon {
	  color: #1168cc;
	  display: block;
	  position: relative;
	  padding: 0 0 0 18px;
	  font-size: 13px;
	  height: auto;
	  line-height: 1;
	  margin: 14px 0 0;
	  border: none;
	  font-weight: normal;
	}
		.add_to_browser a.icon:hover, .modal a.icon:hover {
		  text-decoration: none;
		  color: #666;
		}

		.add_to_browser a.icon:before, .modal a.icon:before  {
		  position: absolute;
		  left: 0;
		  top: 0;
		  color: #adaaac;
		  font-weight: bold;
		  display: block;
		  float: left;
		}
		.add_to_browser a.icon.add:before, .modal a.icon.add:before {
		  content: "\002B";
		  font-size: 16px;
		  top: -2px;
		}
		.add_to_browser a.icon.more:before, .modal a.icon.more:before {
		  content: "\2026";
		  font-size: 12px;
		  top: -1px;
		}

.trig_add_browser, .modal_trig {
  position: relative;
  display: inline-block;
  width: 1px;
  height: 0px;
}
	
@media only screen and (max-width:633px) {
	.sharebuttons a { float: none; margin: 5px auto !important; }
	.topmsg { display: none;}
}
@media only screen and (max-width: 600px) {
	/* grid */
	.gw { clear: both; margin-left: -10px; }
		.gw .g { padding-left: 10px; }
	.content-wrap, .tableframe {
		min-width: 320px;
	}	
	.topmsg {
		zoom: 0.85;
	}
	.third, .two.third { width: auto; float: none; margin: 0 auto; left: auto; }
}

@font-face {
	font-family: 'microsite-icons';
	src:url('../font/microsite-icons.eot');
	src:url('../font/microsite-icons.eot?#iefix') format('embedded-opentype'),
		url('../font/microsite-icons.woff') format('woff'),
		url('../font/microsite-icons.ttf') format('truetype'),
		url('../font/microsite-icons.svg#microsite-icons') format('svg');
	font-weight: normal;
	font-style: normal;
}

/* Use the following CSS code if you want to use data attributes for inserting your icons */
[data-icon]:before {
	font-family: 'microsite-icons';
	content: attr(data-icon);
	speak: none;
	font-weight: normal;
	font-variant: normal;
	text-transform: none;
	line-height: 1;
	-webkit-font-smoothing: antialiased;
}

/* Use the following CSS code if you want to have a class per icon */
/*
Instead of a list of all class selectors,
you can use the generic selector below, but it's slower:
[class*="icn-"] {
*/
.icn-mail, .icn-twitter, .icn-feed, .icn-vimeo, .icn-facebook, .icn-dribbble, .icn-github, .icn-pinterest, .icn-checkmark-circle, .icn-cancel-circle, .icn-info, .icn-heart, .icn-star, .icn-bullhorn, .icn-play, .icn-bubbles, .icn-reddit {
	font-family: 'microsite-icons';
	speak: none;
	font-style: normal;
	font-weight: normal;
	font-variant: normal;
	text-transform: none;
	line-height: 1;
	-webkit-font-smoothing: antialiased;
}
.icn-mail:before {
	content: "\e000";
}
.icn-twitter:before {
	content: "\e001";
}
.icn-feed:before {
	content: "\e002";
}
.icn-vimeo:before {
	content: "\e003";
}
.icn-facebook:before {
	content: "\e004";
}
.icn-dribbble:before {
	content: "\e005";
}
.icn-github:before {
	content: "\e006";
}
.icn-pinterest:before {
	content: "\e007";
}
.icn-checkmark-circle:before {
	content: "\e008";
}
.icn-cancel-circle:before {
	content: "\e009";
}
.icn-info:before {
	content: "\e00a";
}
.icn-heart:before {
	content: "\e00b";
}
.icn-star:before {
	content: "\e00c";
}
.icn-bullhorn:before {
	content: "\e00d";
}
.icn-play:before {
	content: "\e00e";
}
.icn-bubbles:before {
	content: "\e00f";
}
.icn-reddit:before {
	content: "\e010";
}
