   �      -https://duckduckgo.com/mediaelementplayer.css     %}�b     %zZ��              �      
     O K      Server   nginx   Date   Mon, 01 Jul 2013 13:27:25 GMT   Content-Type   text/css   Last-Modified   Tue, 14 Aug 2012 14:19:05 GMT   Expires   Tue, 01 Jul 2014 13:27:25 GMT   Cache-Control   max-age=31536000   Vary   Accept-Encoding   Content-Encoding   gzip .mejs-container {
	position: relative;
	background: #000;
	font-family: Helvetica, Arial;
	text-align: left;
	vertical-align: top;
}

.me-plugin {
	position: absolute;
}

.mejs-embed, .mejs-embed body {
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
	background: #000;
	overflow: hidden;
}

.mejs-container-fullscreen {
	position: fixed;
	left: 0;
	top: 0;
	right: 0;
	bottom: 0;
	overflow: hidden;
	z-index: 1000;
}
.mejs-container-fullscreen .mejs-mediaelement,
.mejs-container-fullscreen video {
	width: 100%;
	height: 100%;
}

/* Start: LAYERS */
.mejs-background {
	position: absolute;
	top: 0;
	left: 0;
}
.mejs-mediaelement {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}
.mejs-poster {
	position: absolute;
	top: 0;
	left: 0;
}
.mejs-poster img {
	border: 0;
	padding: 0;
	border: 0;
	display: block;
}
.mejs-overlay {
	position: absolute;
	top: 0;
	left: 0;
}
.mejs-overlay-play {
	cursor: pointer;
}
.mejs-overlay-button {
	position: absolute;
	top: 50%;
	left: 50%;
	width: 100px;
	height: 100px;
	margin: -50px 0 0 -50px;
	background: url(assets/mejs/bigplay.png) no-repeat;
}
.mejs-overlay:hover .mejs-overlay-button{
	background-position: 0 -100px ;
}
.mejs-overlay-loading {
	position: absolute;
	top: 50%;
	left: 50%;
	width: 80px;
	height: 80px;
	margin: -40px 0 0 -40px;
	background: #333;
	background: url(assets/mejs/background.png);
	background: rgba(0, 0, 0, 0.9);
	background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(rgba(50,50,50,0.9)), to(rgba(0,0,0,0.9)));
	background: -webkit-linear-gradient(top, rgba(50,50,50,0.9), rgba(0,0,0,0.9));
	background: -moz-linear-gradient(top, rgba(50,50,50,0.9), rgba(0,0,0,0.9));
	background: -o-linear-gradient(top, rgba(50,50,50,0.9), rgba(0,0,0,0.9));
	background: -ms-linear-gradient(top, rgba(50,50,50,0.9), rgba(0,0,0,0.9));
	background: linear-gradient(rgba(50,50,50,0.9), rgba(0,0,0,0.9));
}
.mejs-overlay-loading span {
	display:block;
	width: 80px;
	height: 80px;
	background: transparent url(assets/mejs/loading.gif) 50% 50% no-repeat;
}

/* End: LAYERS */

/* Start: CONTROL BAR */
.mejs-container .mejs-controls {
	position: absolute;
	background: none;
	list-style-type: none;
	margin: 0;
	padding: 0;
	bottom: 0;
	left: 0;
	background: url(assets/mejs/background.png);
	background: rgba(0, 0, 0, 0.7);
	background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(rgba(50,50,50,0.7)), to(rgba(0,0,0,0.7)));
	background: -webkit-linear-gradient(top, rgba(50,50,50,0.7), rgba(0,0,0,0.7)); 
	background: -moz-linear-gradient(top, rgba(50,50,50,0.7), rgba(0,0,0,0.7));
	background: -o-linear-gradient(top, rgba(50,50,50,0.7), rgba(0,0,0,0.7)); 
	background: -ms-linear-gradient(top, rgba(50,50,50,0.7), rgba(0,0,0,0.7)); 	
	background: linear-gradient(rgba(50,50,50,0.7), rgba(0,0,0,0.7)); 	
	height: 30px;
	width: 100%;
}
.mejs-container .mejs-controls  div {
	list-style-type: none;
	background-image: none;
	display: block;
	float: left;
	margin: 0;
	padding: 0;
	width: 26px;
	height: 26px;
	font-size: 11px;
	line-height: 11px;
	background: 0;
	font-family: Helvetica, Arial;
	border: 0;
}

.mejs-controls .mejs-button button {
	cursor: pointer;
	display: block;
	font-size: 0;
	line-height: 0;
	text-decoration: none;
	margin: 7px 5px;
	padding: 0;
	position: absolute;
	height: 16px;
	width: 16px;
	border: 0;
	background: transparent url(assets/mejs/controls.png) no-repeat;
}

/* :focus for accessibility */
.mejs-controls .mejs-button button:focus {
	outline: solid 1px yellow;
}

/* End: CONTROL BAR */

/* Start: Time (current / duration) */
.mejs-container .mejs-controls .mejs-time {
	color: #fff;
	display: block;
	height: 17px;
	width: auto;
	padding: 8px 3px 0 3px ;
	overflow: hidden;
	text-align: center;
	padding: auto 4px;
	box-sizing: content-box;
	-moz-box-sizing: content-box;
	-webkit-box-sizing: content-box;
}
.mejs-container .mejs-controls .mejs-time span {
	font-size: 11px;
	color: #fff;
	line-height: 12px;
	display: block;
	float: left;
	margin: 1px 2px 0 0;
	width: auto;
}
/* End: Time (current / duration) */


/* Start: Play/pause */
.mejs-controls .mejs-play button {
	background-position:0 0;
}
.mejs-controls .mejs-pause button {
	background-position:0 -16px;
}
/* End: Play/pause */


/* Stop */
.mejs-controls .mejs-stop button {
	background-position: -112px 0;
}
/* End: Play/pause */

/* Start: Progress bar */
.mejs-controls div.mejs-time-rail {
	width: 200px;
	padding-top: 5px;
}
.mejs-controls .mejs-time-rail span {
	display: block;
	position: absolute;
	width: 180px;
	height: 10px;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border-radius: 2px;
	cursor: pointer;
}
.mejs-controls .mejs-time-rail .mejs-time-total {
	margin: 5px;
	background: #333;
	background: rgba(50,50,50,0.8);
	background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(rgba(30,30,30,0.8)), to(rgba(60,60,60,0.8)));
	background: -webkit-linear-gradient(top, rgba(30,30,30,0.8), rgba(60,60,60,0.8)); 
	background: -moz-linear-gradient(top, rgba(30,30,30,0.8), rgba(60,60,60,0.8));
	background: -o-linear-gradient(top, rgba(30,30,30,0.8), rgba(60,60,60,0.8));
	background: -ms-linear-gradient(top, rgba(30,30,30,0.8), rgba(60,60,60,0.8));
	background: linear-gradient(rgba(30,30,30,0.8), rgba(60,60,60,0.8));
}
.mejs-controls .mejs-time-rail .mejs-time-buffering {
	width:100%;
	background-image: -o-linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	background-image: -webkit-gradient(linear, 0 100%, 100% 0, color-stop(0.25, rgba(255, 255, 255, 0.15)), color-stop(0.25, transparent), color-stop(0.5, transparent), color-stop(0.5, rgba(255, 255, 255, 0.15)), color-stop(0.75, rgba(255, 255, 255, 0.15)), color-stop(0.75, transparent), to(transparent));
	background-image: -webkit-linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	background-image: -moz-linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	background-image: -ms-linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	background-image: linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
	-webkit-background-size: 15px 15px;
	-moz-background-size: 15px 15px;
	-o-background-size: 15px 15px;
	background-size: 15px 15px;
	-webkit-animation: buffering-stripes 2s linear infinite;
	-moz-animation: buffering-stripes 2s linear infinite;
	-ms-animation: buffering-stripes 2s linear infinite;
	-o-animation: buffering-stripes 2s linear infinite;
	animation: buffering-stripes 2s linear infinite;
}

@-webkit-keyframes buffering-stripes { from {background-position: 0 0;} to {background-position: 30px 0;} }
@-moz-keyframes buffering-stripes { from {background-position: 0 0;} to {background-position: 30px 0;} }
@-ms-keyframes buffering-stripes { from {background-position: 0 0;} to {background-position: 30px 0;} }
@-o-keyframes buffering-stripes { from {background-position: 0 0;} to {background-position: 30px 0;} }
@keyframes buffering-stripes { from {background-position: 0 0;} to {background-position: 30px 0;} }

.mejs-controls .mejs-time-rail .mejs-time-loaded {
	background: #3caac8;
	background: rgba(60,170,200,0.8);
	background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(rgba(44,124,145,0.8)), to(rgba(78,183,212,0.8))); 
	background: -webkit-linear-gradient(top, rgba(44,124,145,0.8), rgba(78,183,212,0.8));
	background: -moz-linear-gradient(top, rgba(44,124,145,0.8), rgba(78,183,212,0.8));
	background: -o-linear-gradient(top, rgba(44,124,145,0.8), rgba(78,183,212,0.8));
	background: -ms-linear-gradient(top, rgba(44,124,145,0.8), rgba(78,183,212,0.8));
	background: linear-gradient(rgba(44,124,145,0.8), rgba(78,183,212,0.8));
	width: 0;
}
.mejs-controls .mejs-time-rail .mejs-time-current {
	width: 0;
	background: #fff;
	background: rgba(255,255,255,0.8);
	background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(rgba(255,255,255,0.9)), to(rgba(200,200,200,0.8)));
	background: -webkit-linear-gradient(top, rgba(255,255,255,0.9), rgba(200,200,200,0.8));
	background: -moz-linear-gradient(top, rgba(255,255,255,0.9), rgba(200,200,200,0.8)); 
	background: -o-linear-gradient(top, rgba(255,255,255,0.9), rgba(200,200,200,0.8));
	background: -ms-linear-gradient(top, rgba(255,255,255,0.9), rgba(200,200,200,0.8));
	background: linear-gradient(rgba(255,255,255,0.9), rgba(200,200,200,0.8));
}

.mejs-controls .mejs-time-rail .mejs-time-handle {
	display: none;
	position: absolute;
	margin: 0;
	width: 10px;
	background: #fff;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	cursor: pointer;
	border: solid 2px #333;
	top: -2px;
	text-align: center;
}

.mejs-controls .mejs-time-rail .mejs-time-float {
	position: absolute;
	display: none;
	background: #eee;
	width: 36px;
	height: 17px;
	border: solid 1px #333;
	top: -26px;
	margin-left: -18px;
	text-align: center;
	color: #111;
}

.mejs-controls .mejs-time-rail .mejs-time-float-current {
	margin: 2px;
	width: 30px;
	display: block;
	text-align: center;
	left: 0;
}
.mejs-controls .mejs-time-rail .mejs-time-float-corner {
	position: absolute;
	display: block;
	width: 0;
	height: 0;
	line-height: 0;
	border: solid 5px #eee;
	border-color: #eee transparent transparent transparent;
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0;
	top: 15px;
	left: 13px;

}




/*
.mejs-controls .mejs-time-rail:hover .mejs-time-handle {
	visibility:visible;
}
*/
/* End: Progress bar */

/* Start: Fullscreen */
.mejs-controls .mejs-fullscreen-button button {
	background-position:-32px 0;
}
.mejs-controls .mejs-unfullscreen button {
	background-position:-32px -16px;
}
/* End: Fullscreen */


/* Start: Mute/Volume */
.mejs-controls .mejs-volume-button {
}

.mejs-controls .mejs-mute button {
	background-position:-16px -16px;
}

.mejs-controls .mejs-unmute button {
	background-position:-16px 0;
}

.mejs-controls .mejs-volume-button {
	position: relative;
}

.mejs-controls .mejs-volume-button .mejs-volume-slider {
	display: none;
	height: 115px;
	width: 25px;
	background: url(assets/mejs/background.png);
	background: rgba(50, 50, 50, 0.7);
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0;
	top: -115px;
	left: 0;
	z-index: 1;
	position: absolute;
	margin: 0;
}
.mejs-controls .mejs-volume-button:hover {
	-webkit-border-radius: 0 0 4px 4px;
	-moz-border-radius: 0 0 4px 4px;
	border-radius: 0 0 4px 4px;
}
/*
.mejs-controls .mejs-volume-button:hover .mejs-volume-slider {
	display: block;
}
*/

.mejs-controls .mejs-volume-button .mejs-volume-slider .mejs-volume-total {
	position: absolute;
	left: 11px;
	top: 8px;
	width: 2px;
	height: 100px;
	background: #ddd;
	background: rgba(255, 255, 255, 0.5);
	margin: 0;
}

.mejs-controls .mejs-volume-button .mejs-volume-slider .mejs-volume-current {
	position: absolute;
	left: 11px;
	top: 8px;
	width: 2px;
	height: 100px;
	background: #ddd;
	background: rgba(255, 255, 255, 0.9);
	margin: 0;
}

.mejs-controls .mejs-volume-button .mejs-volume-slider .mejs-volume-handle {
	position: absolute;
	left: 4px;
	top: -3px;
	width: 16px;
	height: 6px;
	background: #ddd;
	background: rgba(255, 255, 255, 0.9);
	cursor: N-resize;
	-webkit-border-radius: 1px;
	-moz-border-radius: 1px;
	border-radius: 1px;
	margin: 0;
}


/* horizontal version */

.mejs-controls div.mejs-horizontal-volume-slider {
	height: 26px;
	width: 60px;
	position: relative;
}

.mejs-controls .mejs-horizontal-volume-slider .mejs-horizontal-volume-total {
	position: absolute;
	left: 0;
	top: 11px;
	width: 50px;
	height: 8px;
	margin: 0;
	padding: 0;
	font-size: 1px;
	
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border-radius: 2px;	

	background: #333;
	background: rgba(50,50,50,0.8);
	background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(rgba(30,30,30,0.8)), to(rgba(60,60,60,0.8)));
	background: -webkit-linear-gradient(top, rgba(30,30,30,0.8), rgba(60,60,60,0.8)); 
	background: -moz-linear-gradient(top, rgba(30,30,30,0.8), rgba(60,60,60,0.8));
	background: -o-linear-gradient(top, rgba(30,30,30,0.8), rgba(60,60,60,0.8));
	background: -ms-linear-gradient(top, rgba(30,30,30,0.8), rgba(60,60,60,0.8));
	background: linear-gradient(rgba(30,30,30,0.8), rgba(60,60,60,0.8));

}

.mejs-controls .mejs-horizontal-volume-slider .mejs-horizontal-volume-current {
	position: absolute;
	left: 0;
	top: 11px;
	width: 50px;
	height: 8px;
	margin: 0;
	padding: 0;
	font-size: 1px;

	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border-radius: 2px;

	background: #fff;
	background: rgba(255,255,255,0.8);
	background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(rgba(255,255,255,0.9)), to(rgba(200,200,200,0.8)));
	background: -webkit-linear-gradient(top, rgba(255,255,255,0.9), rgba(200,200,200,0.8));
	background: -moz-linear-gradient(top, rgba(255,255,255,0.9), rgba(200,200,200,0.8)); 
	background: -o-linear-gradient(top, rgba(255,255,255,0.9), rgba(200,200,200,0.8));
	background: -ms-linear-gradient(top, rgba(255,255,255,0.9), rgba(200,200,200,0.8));
	background: linear-gradient(rgba(255,255,255,0.9), rgba(200,200,200,0.8));

}


.mejs-controls .mejs-horizontal-volume-slider .mejs-horizontal-volume-handle {
	display: none;
}

/* End: Mute/Volume */




/* Start: TRACK (Captions and Chapters) */
.mejs-controls .mejs-captions-button {
	position: relative;
}

.mejs-controls .mejs-captions-button button {
	background-position:-48px 0;
}
.mejs-controls .mejs-captions-button .mejs-captions-selector {
	visibility: hidden;
	position: absolute;
	bottom: 26px;
	right: -10px;
	width: 130px;
	height: 100px;
	background: url(assets/mejs/background.png);
	background: rgba(50,50,50,0.7);
	border: solid 1px transparent;
	padding: 10px;
	overflow: hidden;
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0;
}
/*
.mejs-controls .mejs-captions-button:hover  .mejs-captions-selector {
	visibility: visible;
}
*/

.mejs-controls .mejs-captions-button .mejs-captions-selector ul {
	margin: 0;
	padding: 0;
	display: block;
	list-style-type: none !important;
	overflow: hidden;
}
.mejs-controls .mejs-captions-button .mejs-captions-selector ul li{
	margin: 0 0 6px 0;
	padding: 0;
	list-style-type: none !important;
	display:block;
	color: #fff;
	overflow: hidden;
}
.mejs-controls .mejs-captions-button .mejs-captions-selector ul li input{
	clear: both;
	float: left;
	margin: 3px 3px 0 5px;
}
.mejs-controls .mejs-captions-button .mejs-captions-selector ul li label{
	width: 100px;
	float: left;
	padding: 4px 0 0 0;
	line-height: 15px;
	font-family: helvetica, arial;
	font-size: 10px;
}

.mejs-controls .mejs-captions-button .mejs-captions-translations {
	font-size: 10px;
	margin: 0 0 5px 0;
}


.mejs-chapters {
	position: absolute;
	top: 0;
	left: 0;
	-xborder-right: solid 1px #fff;
	width: 10000px;
	z-index: 1;
}
.mejs-chapters .mejs-chapter {
	position: absolute;
	float: left;
	background: #222;
	background: rgba(0, 0, 0, 0.7);
	background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(rgba(50,50,50,0.7)), to(rgba(0,0,0,0.7)));
	background: -webkit-linear-gradient(top, rgba(50,50,50,0.7), rgba(0,0,0,0.7));
	background: -moz-linear-gradient(top, rgba(50,50,50,0.7), rgba(0,0,0,0.7));
	background: -o-linear-gradient(top, rgba(50,50,50,0.7), rgba(0,0,0,0.7));
	background: -ms-linear-gradient(top, rgba(50,50,50,0.7), rgba(0,0,0,0.7));
	background: linear-gradient(rgba(50,50,50,0.7), rgba(0,0,0,0.7)); 
	filter: progid:DXImageTransform.Microsoft.Gradient(GradientType=0, startColorstr=#323232,endColorstr=#000000);		
	overflow: hidden;
	border: 0;
}
.mejs-chapters .mejs-chapter .mejs-chapter-block {
	font-size: 11px;
	color: #fff;
	padding: 5px;
	display: block;
	border-right: solid 1px #333;
	border-bottom: solid 1px #333;
	cursor: pointer;
}
.mejs-chapters .mejs-chapter .mejs-chapter-block-last {
	border-right: none;
}

.mejs-chapters .mejs-chapter .mejs-chapter-block:hover {
	/*background: #333;*/
	background: #666;
	background: rgba(102,102,102, 0.7);
	background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(rgba(102,102,102,0.7)), to(rgba(50,50,50,0.6)));
	background: -webkit-linear-gradient(top, rgba(102,102,102,0.7), rgba(50,50,50,0.6));
	background: -moz-linear-gradient(top, rgba(102,102,102,0.7), rgba(50,50,50,0.6));
	background: -o-linear-gradient(top, rgba(102,102,102,0.7), rgba(50,50,50,0.6));
	background: -ms-linear-gradient(top, rgba(102,102,102,0.7), rgba(50,50,50,0.6));
	background: linear-gradient(rgba(102,102,102,0.7), rgba(50,50,50,0.6));
	filter: progid:DXImageTransform.Microsoft.Gradient(GradientType=0, startColorstr=#666666,endColorstr=#323232);		
}
.mejs-chapters .mejs-chapter .mejs-chapter-block .ch-title{
	font-size: 12px;
	font-weight: bold;
	display: block;
	white-space:nowrap;
	text-overflow: ellipsis;
	margin: 0 0 3px 0;
	line-height: 12px;
}
.mejs-chapters .mejs-chapter .mejs-chapter-block .ch-timespan{
	font-size: 12px;
	line-height: 12px;
	margin: 3px 0 4px 0;
	display: block;
	white-space:nowrap;
	text-overflow: ellipsis;
}


.mejs-captions-layer {
	position: absolute;
	bottom: 0;
	left: 0;
	text-align:center;
	/*font-weight: bold;*/
	line-height: 22px;
	font-size: 12px;
	color: #fff;
}
.mejs-captions-layer  a {
	color: #fff;
	text-decoration: underline;
}
.mejs-captions-layer[lang=ar] {
	font-size: 20px;
	font-weight: normal;
}

.mejs-captions-position {
	position: absolute;
	width: 100%;
	bottom: 15px;
	left: 0;
}

.mejs-captions-position-hover {
	bottom: 45px;
}

.mejs-captions-text {
	padding: 3px 5px;
	background: url(assets/mejs/background.png);
	background: rgba(20, 20, 20, 0.8);

}
/* End: TRACK (Captions and Chapters) */



.mejs-clear {
	clear: both;
}

/* Start: ERROR */
.me-cannotplay {
}
.me-cannotplay a {
	color: #fff;
	font-weight: bold;
}
.me-cannotplay span {
	padding: 15px;
	display: block;
}
/* End: ERROR */


/* Start: Loop */
.mejs-controls .mejs-loop-off button{
	background-position: -64px -16px;
}
.mejs-controls .mejs-loop-on button {
	background-position: -64px 0;
}
/* End: Loop */

/* Start: backlight */
.mejs-controls .mejs-backlight-off button{
	background-position: -80px -16px;
}
.mejs-controls .mejs-backlight-on button {
	background-position: -80px 0;
}
/* End: backlight */


/* Start: picture controls */
.mejs-controls .mejs-picturecontrols-button{
	background-position: -96px 0;
}
/* End: picture controls */


/* context menu */
.mejs-contextmenu {
	position: absolute;
	width: 150px;
	padding: 10px;
	border-radius: 4px;
	top: 0;
	left: 0;
	background: #fff;
	border: solid 1px #999;
	z-index: 1001; /* make sure it shows on fullscreen */
}
.mejs-contextmenu .mejs-contextmenu-separator {
	height: 1px;
	font-size: 0;
	margin: 5px 6px;
	background: #333;	
}

.mejs-contextmenu .mejs-contextmenu-item {
	font-family: Helvetica, Arial;
	font-size: 12px;
	padding: 4px 6px;
	cursor: pointer;
	color: #333;	
}
.mejs-contextmenu .mejs-contextmenu-item:hover {
	background: #2C7C91;
	color: #fff;
}


/* Start: SourceChooser */
.mejs-controls .mejs-sourcechooser-button {
	position: relative;
}

.mejs-controls .mejs-sourcechooser-button button {
	background-position: -128px 0;
}
.mejs-controls .mejs-sourcechooser-button .mejs-sourcechooser-selector {
	visibility: hidden;
	position: absolute;
	bottom: 26px;
	right: -10px;
	width: 130px;
	height: 100px;
	background: url(assets/mejs/background.png);
	background: rgba(50,50,50,0.7);
	border: solid 1px transparent;
	padding: 10px;
	overflow: hidden;
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0;
}

.mejs-controls .mejs-sourcechooser-button .mejs-sourcechooser-selector ul {
	margin: 0;
	padding: 0;
	display: block;
	list-style-type: none !important;
	overflow: hidden;
}
.mejs-controls .mejs-sourcechooser-button .mejs-sourcechooser-selector ul li{
	margin: 0 0 6px 0;
	padding: 0;
	list-style-type: none !important;
	display:block;
	color: #fff;
	overflow: hidden;
}
.mejs-controls .mejs-sourcechooser-button .mejs-sourcechooser-selector ul li input{
	clear: both;
	float: left;
	margin: 3px 3px 0 5px;
}
.mejs-controls .mejs-sourcechooser-button .mejs-sourcechooser-selector ul li label{
	width: 100px;
	float: left;
	padding: 4px 0 0 0;
	line-height: 15px;
	font-family: helvetica, arial;
	font-size: 10px;
}
/* End: SourceChooser */
