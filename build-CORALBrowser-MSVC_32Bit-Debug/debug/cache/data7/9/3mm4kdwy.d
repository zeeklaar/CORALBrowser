   �      ?https://fbstatic-a.akamaihd.net/rsrc.php/v2/y4/r/VctjjLR0rnO.js     %}�     %{� �@              �      
     O K   
   Access-Control-Allow-Origin   *   Content-Type   'application/x-javascript; charset=utf-8   X-Content-Type-Options   nosniff   
X-FB-Debug   ,e6MtMXucSvDSG57ygoyqRWWKaQCc1sf0/QiisOFZp5s=   Content-Encoding   gzip   Last-Modified   Sat, 29 Jun 2013 00:18:16 GMT   Cache-Control   public, max-age=29542048   Expires   Sun, 29 Jun 2014 18:23:09 GMT   Date   Mon, 22 Jul 2013 20:15:41 GMT   Vary   Accept-Encoding /*1372530196,173220647*/

if (self.CavalryLogger) { CavalryLogger.start_js(["4vv8\/"]); }

__d("TimeSpentBitArrayLogger",["UserActivity","copyProperties","Banzai","BanzaiODS","TimeSpentArray","Arbiter","TimeSpentConfig"],function(a,b,c,d,e,f){var g=b('UserActivity'),h=b('copyProperties'),i=b('Banzai'),j=b('BanzaiODS'),k=b('TimeSpentArray'),l=b('Arbiter'),m=b('TimeSpentConfig'),n={store:true,delay:m.initial_delay,retry:true};function o(p){if(i.isEnabled('time_spent_bit_array')){l.inform('timespent/tosbitdataposted',h({},p));i.post('time_spent_bit_array',h({},p),n);n.delay=m.delay;}}e.exports={init:function(p){if(window.top==window.self){g.subscribe(function(q,r){k.update(r.last_inform);});k.init(o,m.initial_timeout);j.bumpEntityKey('ms.time_spent.qa.www','time_spent.bits.js_initialized');}}};});