   �      ;https://static.xx.fbcdn.net/rsrc.php/v2/y4/r/VctjjLR0rnO.js     %}�Q�     %{� �@              �      
     O K   	   Access-Control-Allow-Origin   *   Cache-Control   public, max-age=31536000   Content-Type   'application/x-javascript; charset=utf-8   Expires   Tue, 22 Jul 2014 20:27:59 GMT   Last-Modified   Sat, 29 Jun 2013 00:18:16 GMT   X-Content-Type-Options   nosniff   
X-FB-Debug   ,EEH4wMM5Uj8JJCw80TIerlvoOm9iye1adb0Ca4+r5TU=   Date   Mon, 22 Jul 2013 20:27:59 GMT   Content-Length   805 /*1374524879,177682486*/

if (self.CavalryLogger) { CavalryLogger.start_js(["4vv8\/"]); }

__d("TimeSpentBitArrayLogger",["UserActivity","copyProperties","Banzai","BanzaiODS","TimeSpentArray","Arbiter","TimeSpentConfig"],function(a,b,c,d,e,f){var g=b('UserActivity'),h=b('copyProperties'),i=b('Banzai'),j=b('BanzaiODS'),k=b('TimeSpentArray'),l=b('Arbiter'),m=b('TimeSpentConfig'),n={store:true,delay:m.initial_delay,retry:true};function o(p){if(i.isEnabled('time_spent_bit_array')){l.inform('timespent/tosbitdataposted',h({},p));i.post('time_spent_bit_array',h({},p),n);n.delay=m.delay;}}e.exports={init:function(p){if(window.top==window.self){g.subscribe(function(q,r){k.update(r.last_inform);});k.init(o,m.initial_timeout);j.bumpEntityKey('ms.time_spent.qa.www','time_spent.bits.js_initialized');}}};});