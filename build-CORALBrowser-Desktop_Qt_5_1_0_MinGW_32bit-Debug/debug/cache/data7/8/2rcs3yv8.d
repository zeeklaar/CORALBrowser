   �      !https://duckduckgo.com/post2.html     %{���\     %{��Ű         
     O K           �   	   Server   nginx   Date   Wed, 10 Jul 2013 21:15:36 GMT   Content-Type   text/html; charset=UTF-8   Last-Modified   Thu, 20 Jun 2013 18:09:50 GMT   Expires   Thu, 11 Jul 2013 21:15:36 GMT   Cache-Control   max-age=86400   Strict-Transport-Security   max-age=31536000   X-DuckDuckGo-Locale   en_US   Content-Encoding   gzip <html>
<head>
<meta name="referrer" content="origin">
</head>
<body>
<script type="text/JavaScript">
function post(e) {
  if(e.source==parent && e.origin == location.protocol+'//'+location.hostname)

  var idx = e.data.indexOf(':');
  var action = e.data.substr(0,idx);
  var link = e.data.substr(idx+1);

  if (action == 'ddg') parent.window.location.href = link;
}

if (window.addEventListener) window.addEventListener('message', post, false);
else if (window.attachEvent) window.attachEvent('onmessage', post);
</script>
</body>
</html>
