   �      3http://static.adzerk.net/reddit/ads.html?sr=android�       �����     %{Dq��              �      
     O K      Content-Encoding   gzip   Content-Type   	text/html   Accept-Ranges   bytes   Date   Wed, 10 Jul 2013 14:12:52 GMT   ETag   ""73d56091b1566598cefc7aae31b13cef"   Last-Modified   Fri, 05 Apr 2013 16:02:55 GMT   Server   ECS (jfk/25FE)   Vary   Accept-Encoding   
x-amz-id-2   @J4wl92fNBKr7sVRPcFLRGI5sSoe4gXwVqjXixWbfNYDSAYK/kdWsxJE/VMsL4aZb   x-amz-request-id   112CB2EEC23E3A18   X-Cache   HIT <!DOCTYPE html>
<html>
<head>
<style>
  body { margin:0; }
</style>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="//secure.adzerk.net/ados.js"></script>
<script type="text/javascript">
function getParameterByName(name)
{
  name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
  var regexS = "[\\?&]" + name + "=([^&#]*)";
  var regex = new RegExp(regexS);
  var results = regex.exec(window.location.search);
  if(results == null)
    return "";
  else
    return decodeURIComponent(results[1].replace(/\+/g, " "));
}

ados_results = null;
ados.isAsync = true;
ados_add_placement(5146, 24950, "main", 5);
ados_add_placement(5146, 24950, "sponsorship", 8);
ados_setWriteResults(true);
var keywords = getParameterByName("sr");
if(keywords != "")
  ados_setKeywords(keywords);
ados_load();
</script>
<script type="text/javascript">
  target = location.hash.substr(1);
  window.name = 'ad_main';
  var timeout = 0;
  var loadSponsorship = function() {
    timeout++;
    if(ados_results) {
      if(ados_results["sponsorship"]) {
        if (window.postMessage) {
          window.parent.postMessage('ados.createAdFrame:sponsorship', target);
        } else {
          iframe = document.createElement('iframe');
          iframe.src = 'http://www.reddit.com/static/createadframe.html';
          iframe.style.display = 'none';
          document.documentElement.appendChild(iframe);
        }
      }
    }
    else {
      if(timeout < 200) {
        setTimeout(loadSponsorship, 10);
      }
    }
  }
  $(window).load(loadSponsorship);
</script>
</head>
<body>
<div id="main">
</div>
<div id="redditthis" style="width:300px;text-align:center;"></div>
<script type="text/javascript">
  var timeout = 0;
  var addFooter = function() {
    var image;
    if($('iframe').length > 0) {
      image = $('iframe').contents().find("img").first()[0];
    }
    else {
      image = $('#main img').first()[0];
    }
    
    if (image == undefined) {
      timeout++;
      if(timeout < 200) {
        setTimeout(addFooter, 10);
      }
    }
    else {
      var url = image.src;
      if (url) {
        $('#redditthis').append("<a style=\"font: small verdana,arial,sans-serif;color: #369;text-decoration: none;\" target=\"top\" href=\"http://ads.reddit.com/submit?url=" + encodeURIComponent(url) + "\">discuss this ad on reddit</a>");
      }
    }
  };
  $(window).load(addFooter);
</script>
</body>
</html>