   �     �http://www.youtube.com/doubleclick/DARTIframe.html?gtVersion=200_23&mediaserver=http%3A%2F%2Fs0.2mdn.net%2F879366&xpc=%7B%22cn%22%3A%22peerIframe1372437506140%22%2C%22tp%22%3Anull%2C%22osh%22%3Anull%2C%22pru%22%3A%22http%3A%2F%2Fwww.youtube.com%2Fdoubleclick%2FDARTIframe.html%3FgtVersion%3Drelay_200_23%26mediaserver%3Dhttp%3A%2F%2Fs0.2mdn.net%2F879366%22%2C%22ppu%22%3A%22http%3A%2F%2Fad.doubleclick.net%2Frobots.txt%22%2C%22lpu%22%3A%22http%3A%2F%2Fwww.youtube.com%2Frobots.txt%22%7D     %{�D)m     %zN�ب         
     O K           �      Vary   Accept-Encoding   Content-Encoding   gzip   Content-Type   	text/html   Last-Modified   Thu, 02 Aug 2012 22:47:21 GMT   Age   0   Date   Mon, 01 Jul 2013 14:37:09 GMT   Expires   Mon, 01 Jul 2013 14:37:09 GMT   Cache-Control   public, max-age=0   X-Content-Type-Options   nosniff   Server   sffe   X-XSS-Protection   1; mode=block <HTML>
<HEAD>
</HEAD>
<BODY>
<SCRIPT language=JavaScript>
<!--
	function loadIFrameScript() {
		try {
			var mediaServer = "";
			var globalTemplateVersion = "";
			var searchString = document.location.search.substr(1);
			var parameters = searchString.split('&');

			for(var i = 0; i < parameters.length; i++) {
				var keyValuePair = parameters[i].split('=');
				var parameterName = keyValuePair[0];
				var parameterValue = keyValuePair[1];

				if(parameterName == "gtVersion")
					globalTemplateVersion = unescape(parameterValue);
				else if(parameterName == "mediaserver")
					mediaServer = unescape(parameterValue);
			}
			
			generateScriptBlock(mediaServer, globalTemplateVersion);
		}
		catch(e) {
		}
	}

	function generateScriptBlock(mediaServerUrl, gtVersion) {

		if(!isValid(gtVersion)) {
			reportError();
			return;
		}

		var mediaServerParts = mediaServerUrl.split("/");
		var host = mediaServerParts[2];
		var hostParts = host.split(".");

		if(hostParts.length > 4 || hostParts.length < 3) {
			reportError();
    		return;
		}

		var subdomainOne = hostParts[0];
		if(!isValid(subdomainOne)) {
			reportError();
			return;
		}

		var subdomainTwo = (hostParts.length == 4) ? hostParts[1] : "";
		if(!isValid(subdomainTwo)) {
			reportError();
			return;
		}
		
		var subdomain = subdomainOne + ((subdomainTwo == "") ? "" : "." + subdomainTwo);
		
		var advertiserId = mediaServerParts[3];
		if(!isValid(advertiserId)) {
			reportError();
			return;
		}

		// Generate call to the script file on DoubleClick server.
		var publisherProtocol = window.location.protocol + "//";
		var domain = (publisherProtocol == 'https://') ? 'doubleclick.net' : '2mdn.net';
		var iframeScriptFile = advertiserId + '/DARTIFrame_' + gtVersion + '.js';
		var urlStart = publisherProtocol + subdomain;
		document.write('<scr' + 'ipt src="' + urlStart + "." + domain + "/" + iframeScriptFile + '">');
		document.write('</scr'+ 'ipt>');
	}

	// Validation routine for parameters passed on the URL.
	// The parameter should contain only word characters including underscore (limited to '\w')
	// and should not exceed 15 characters in length.
	function isValid(stringValue) {
		var isValid = false;
		
		if(stringValue.length <= 15 && stringValue.search(new RegExp("[^A-Za-z0-9_]")) == -1)
			isValid = true;
			
		return isValid;
	}

	//Report error to the DoubleClick ad server.
	function reportError() {
		var publisherProtocol = window.location.protocol + "//";
		document.write(' <img src="' + publisherProtocol + 'ad.doubleclick.net/activity;badserve=1" style="visibility:hidden" width=1 height=1>');
	}


	loadIFrameScript();
	
-->
</SCRIPT>
</BODY>
</HTML>
