   �      ?https://fbstatic-a.akamaihd.net/rsrc.php/v2/y4/r/2wsDOXB39nz.js     %|��(�     %{��L�         
     O K           �   
   Access-Control-Allow-Origin   *   Content-Type   'application/x-javascript; charset=utf-8   Last-Modified   Tue, 04 Jun 2013 22:56:35 GMT   X-Content-Type-Options   nosniff   
X-FB-Debug   ,7zqNh7WwP/Yq4DOQD6F6zX/grdi+PSBOh6D3yF7gtAg=   Vary   Accept-Encoding   Content-Encoding   gzip   Cache-Control   public, max-age=29168431   Expires   Thu, 05 Jun 2014 03:05:03 GMT   Date   Tue, 02 Jul 2013 12:44:32 GMT /*1370401558,178129761*/

if (self.CavalryLogger) { CavalryLogger.start_js(["4vv8\/"]); }

__d("TimeSpentBitArrayLogger",["UserActivity","copyProperties","Banzai","BanzaiODS","TimeSpentArray","Arbiter","TimeSpentConfig"],function(a,b,c,d,e,f){var g=b('UserActivity'),h=b('copyProperties'),i=b('Banzai'),j=b('BanzaiODS'),k=b('TimeSpentArray'),l=b('Arbiter'),m=b('TimeSpentConfig'),n={store:true,delay:m.delay,retry:true};function o(p){if(i.isEnabled('time_spent_bit_array')){l.inform('timespent/tosbitdataposted',h({},p));i.post('time_spent_bit_array',h({},p),n);}}e.exports={init:function(p){if(window.top==window.self){g.subscribe(function(q,r){k.update(r.last_inform);});k.init(o);j.bumpEntityKey('ms.time_spent.qa.www','time_spent.bits.js_initialized');}}};});