   �      +http://s0.2mdn.net/879366/flashwrite_1_2.js     %{��[     %y�R��         
     O K           �      Vary   Accept-Encoding   Content-Type   text/javascript   Last-Modified   Tue, 08 May 2012 20:09:07 GMT   Date   Mon, 01 Jul 2013 17:32:29 GMT   Expires   Tue, 02 Jul 2013 17:32:29 GMT   X-Content-Type-Options   nosniff   Content-Encoding   gzip   Server   sffe   X-XSS-Protection   1; mode=block   Age   69159   Cache-Control   public, max-age=86400 function dclkToObject(id) {
		if(document.layers){
			return (document.layers[id])?eval(document.layers[id]):null;
		}
		else if(document.all && !document.getElementById){
			return (eval("window."+id))?eval("window."+id):null;
		}
		else if(document.getElementById && document.body.style) {
			return (document.getElementById(id))?eval(document.getElementById(id)):null;
		}
	}
  
function dclkFlashWrite(string){
  document.write(string);
  }

function dclkFlashInnerHTML(htmlElementId,code){
  var x=dclkToObject(htmlElementId);
  if(x){
    if(document.getElementById||document.all){
      x.innerHTML='';
      x.innerHTML=code;
      }
    else if(document.layers){
      x.document.open();
      x.document.write(code);
      x.document.close();
      }
    }
  }
