   �      https://www.assistments.org/�       �����     %z�pRp         
     O K           �      Server   nginx/1.4.1   Date   Mon, 08 Jul 2013 15:31:18 GMT   Content-Type   	text/html   Last-Modified   Thu, 20 Dec 2012 20:41:10 GMT   Content-Encoding   gzip <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta http-equiv="Content-Language" content="en-us" />
	<meta name="robots" content="all" />
	<meta name="description" content="The ASSISTments Platform ASSISTS students in learning while it gives teachers assessMENT of their students' progress. The ASSISTments platform is a generic system for any subject from math to English to science. Different researcher teams have funding to build libraries of content in ASSISTments. Currently ASSISTments is best known for the mathematic content inside of ASSISTments, but increasingly individual teachers are using ASSISTments to write their own content which they can share with the other teachers. More than half of the questions in ASSISTments have been built by teachers, and that number is growing fast." />
	<meta name="keywords" content="formative assessments,assistments,data driven,student data,online math technology,math education,K-12,race to the top,math assessments,WPI,heffernan,professional learning community,PLC,mathtutorial,online tutorial,non profit,online homework" />

	<title>Assistments</title>

	<script type="text/JavaScript" src="javascripts/home/curvycorners.js"></script>

	<link rel="stylesheet" type="text/css" href="stylesheets/home/custom-hp.css" media="screen" />

	<!--[if lt IE 9]>
    <style type="text/css" media="screen">
        @import url(css/home/ie7.css);
    </style>
    <![endif]-->

	<script type="text/JavaScript">
		curvyCorners.addEvent(window, 'load', initCorners);

		function initCorners() {
    	var settings = {
      	tl: { radius: 10 },
      	tr: { radius: 10 },
      	bl: { radius: 10 },
      	br: { radius: 10 },
      	antiAlias: true
    	}

    	curvyCorners(settings, "#content");
  		}
		
		// Initialize youtube video widget to behave consistently
        // across browsers and prevents autoplay from navigating
        // to the page using the back button
        // This is called on readystatechange for all browsers but
        // MSIE. For MSIE, it's called from the body tag's onLoad
        function initVideo() {
          if (document.readyState == "complete") {
              flash=document.getElementById('flashElem');
              flash.src='';
              thevid=document.getElementById('thevideo');
              thevid.style.display='none';
              theimg=document.getElementById('theimage');
              theimg.style.display='block';
          }
        };

        // Initialize youtube video for non-MSIE browsers
        document.onreadystatechange = function() {
          if (/MSIE (\d+\.\d+);/.test(navigator.userAgent)){} //test for MSIE x.x;
          else {
             initVideo();
          }
        }

	</script>

</head>

<body onLoad="if (/MSIE (\d+\.\d+);/.test(navigator.userAgent)){ initVideo(); }">

	<div id="layout">
        <div id="header">
            <h1>Assistments</h1>
			<div id="login">
				<p>Already registered? <span class="login-button"><a href="/account/login">Log In</a></span></p>
			</div>
			<div id="search">
			
			</div>
        </div>
		
		<div id="column-left">
		
			<div id="youtube-player">
				<div id="theimage" style="display: block" onclick="this.style.display='none'; thevid.style.display='block'; flash.src='http://www.youtube.com/embed/hd9oXZoMiN4?autoplay=1';">
				
			
					<img src="images/home/video-screen.gif" alt="ASSISTments - Reville" style="cursor: pointer" />
				</div>
				<div id="thevideo" style="display: none">
					<iframe id="flashElem" width="488" height="300" src="" frameborder="0"></iframe>
				</div>
			</div>
			
			<script type="text/javascript">
				<!--
				var randomNumber = Math.floor(Math.random() * 5);

				var quote = new Array();
				quote[0] = "Using ASSISTments has made class run much more efficiently. It highlights areas of comprehension and misconceptions that need to be readdressed.";
				quote[1] = "I used ASSISTments today for an open-response question about electricity and circuits. WOW! How powerful.";
				quote[2] = "My students are doing homework on ASSISTments every night now, beginning each class viewing reports with students. I wonder 'HOW did I do this before?'";
				quote[3] = "We did the COOLEST thing today with ASSISTments. We had a school-wide math challenge and I put questions into ASSISTments.";
				quote[4] = "I LOVE it! The feedback is so valuable, and the students are completely engaged.";

				var cite = new Array();
				cite[0] = "Courtney Mulcahy";
				cite[1] = "Wendy Bell";
				cite[2] = "Barbara Delaney";
				cite[3] = "Laura Reynolds";
				cite[4] = "Mette Schwartz";

				var title = new Array();
				title[0] = "8th Grade Teacher";
				title[1] = "4th Grade Teacher";
				title[2] = "6th Grade Teacher";
				title[3] = "MSAD 49 Maine";
				title[4] = "Middle School Math Coach";

				document.write('<blockquote><p>' + quote[randomNumber] + '</p>');
				document.write('<cite>' + cite[randomNumber]);
				document.write('<br />' + title[randomNumber] + '</cite></blockquote>');
				//-->
			</script>
			
		</div>
		
		<div id="column-right">
			<h2>Formative Assessments<br />
			That Assist.</h2>
			<a class="button blue" href="staticpages/Home.htm">Get Started!</a>
			<!--<a class="button green" href="http://www.assistments.org/account/signup_prompt">Register Now!</a>-->
			<div id="content">
				<h3>Teachers Face A Dilemma</h3>
				<p>They are being asked to assess students more, but every minute of class time spent in testing is a minute of instructional time that is lost. ASSISTments solves this dilemma, by letting students get individual feedback while their learning progress is assessed.  ASSISTments is a free online platform that allows teachers to write and select questions, students get immediate and useful tutoring, and teachers receive instant reports to help inform their classroom instruction.</p>
			</div>
		</div>
		
	</div>
	
	<div id="footer1">
		<p><span>Developed At:</span><span class="WPI"><a href="http://www.wpi.edu/">Worcester Polytechnic Institute</a></span><span class="pipe">|</span><span class="CMUcollaboration">Created in Collaboration with:</span><span class="CarnegieMellon"><a href="http://www.cmu.edu/">Carnegie Mellon</a></span></p>
	</div>
	
	<div id="footer2">
		<p><span class="left">&copy; 2012 Worcester Polytechnic Institute</span></p>
	</div>

</body>
</html>
