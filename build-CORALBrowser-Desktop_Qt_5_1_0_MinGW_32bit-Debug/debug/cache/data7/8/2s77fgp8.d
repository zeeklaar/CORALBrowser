   �      �http://cdn.doubleverify.com/dvtp_src.js?ctx=589953&cmp=7536368&sid=678650&plc=97387643&num=&adid=&advid=3931252&adsrv=1&region=30&btreg=271863959&btadsrv=doubleclick&crt=&crtname=&chnl=&unit=&pid=&uid=&dvtagver=6.1.src�       �����     %{�A�(         
     O K           �   	   Content-Type   application/x-javascript   Content-Encoding   gzip   Last-Modified   Mon, 24 Jun 2013 15:10:33 GMT   Accept-Ranges   bytes   ETag   "83ac5ff9ec70ce1:0"   Vary   Accept-Encoding   Server   Microsoft-IIS/7.0   X-Powered-By   ASP.NET   Date   Tue, 02 Jul 2013 12:45:08 GMT function dv_rolloutManager(handlersDefsArray, baseHandler) {
    this.handle = function () {
        var errorsArr = [];

        var handler = chooseEvaluationHandler(handlersDefsArray);
        if (handler) {
            var errorObj = handleSpecificHandler(handler);
            if (errorObj == null)
                return errorsArr;
            else {
                handler.onFailure();
                errorsArr.push(errorObj);
            }
        }

        var errorObjHandler = handleSpecificHandler(baseHandler);
        if (errorObjHandler) {
            errorObjHandler['dvp_isLostImp'] = 1;
            errorsArr.push(errorObjHandler);
        }
        return errorsArr;
    }

    function handleSpecificHandler(handler) {
        var url;
        var errorObj = null;

        try {
            url = handler.createRequest();
            if (url) {
                url += '&' + handler.getVersionParamName() + '=' + handler.getVersion();
                if (!handler.sendRequest(url))
                    errorObj = createAndGetError('sendRequest failed.', url, handler.getVersion(), handler.getVersionParamName(), handler.dv_script);
            }
            else
                errorObj = createAndGetError('createRequest failed.', url, handler.getVersion(), handler.getVersionParamName(), handler.dv_script);
        }
        catch (e) {
            errorObj = createAndGetError(e.name + ': ' + e.message, url, handler.getVersion(), handler.getVersionParamName(), (handler ? handler.dv_script : null));
        }

        return errorObj;
    }

    function createAndGetError(error, url, ver, versionParamName, dv_script) {
        var errorObj = {};
        errorObj[versionParamName] = ver;
        errorObj['dvp_jsErrMsg'] = encodeURIComponent(error);
        if (dv_script && dv_script.parentElement && dv_script.parentElement.tagName && dv_script.parentElement.tagName == 'HEAD')
            errorObj['dvp_isOnHead'] = '1';
        if (url)
            errorObj['dvp_jsErrUrl'] = url;
        return errorObj;
    }

    function chooseEvaluationHandler(handlersArray) {
        var rand = Math.random() * 100;
        for (var i = 0; i < handlersArray.length; i++) {
            if (rand >= handlersArray[i].minRate && rand < handlersArray[i].maxRate) {
                if (handlersArray[i].handler.isApplicable())
                    return handlersArray[i].handler;
                else
                    break;
            }
        }
        return null;
    }    
}

function dv_GetParam(url, name) {
    name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
    var regexS = "[\\?&]" + name + "=([^&#]*)";
    var regex = new RegExp(regexS);
    var results = regex.exec(url);
    if (results == null)
        return null;
    else
        return results[1];
}

function dv_Contains(array, obj) {
    var i = array.length;
    while (i--) {
        if (array[i] === obj) {
            return true;
        }
    }
    return false;
}

function dv_GetDynamicParams(url) {
    try {
        var regex = new RegExp("[\\?&](dvp_[^&]*=[^&#]*)", "gi");
        var dvParams = regex.exec(url);

        var results = new Array();
        while (dvParams != null) {
            results.push(dvParams[1]);
            dvParams = regex.exec(url);
        }
        return results;
    }
    catch (e) {
        return [];
    }
}

function dv_createIframe() {
    var iframe;
    if (document.createElement && (iframe = document.createElement('iframe'))) {
        iframe.name = iframe.id = 'iframe_' + Math.floor((Math.random() + "") * 1000000000000);
        iframe.width = 0;
        iframe.height = 0;
        iframe.style.display = 'none';
        iframe.src = 'about:blank';
    }

    return iframe;
}

function dv_GetRnd() {
    return ((new Date()).getTime() + "" + Math.floor(Math.random() * 1000000)).substr(0, 16);
}

function dv_SendErrorImp(serverUrl, errorsArr) {

    for (var j = 0; j < errorsArr.length; j++) {
        var errorObj = errorsArr[j];
        var errorImp = dv_CreateAndGetErrorImp(serverUrl, errorObj);
        dv_sendImgImp(errorImp);
    }
}

function dv_CreateAndGetErrorImp(serverUrl, errorObj) {
    var errorQueryString = '';
    for (key in errorObj) {
        if (errorObj.hasOwnProperty(key)) {
            if (key.indexOf('dvp_jsErrUrl') == -1) {
                errorQueryString += '&' + key + '=' + errorObj[key];
            }
            else {
                var params = ['ctx', 'cmp', 'plc', 'sid'];
                for (var i = 0; i < params.length; i++) {
                    var pvalue = dv_GetParam(errorObj[key], params[i]);
                    if (pvalue) {
                        errorQueryString += '&dvp_js' + params[i] + '=' + pvalue;
                    }
                }
            }
        }
    }

    var errorImp = window._dv_win.location.protocol + '//' + serverUrl + errorQueryString;
    return errorImp;
}

function dv_sendImgImp(url) {
    (new Image()).src = url;
}

function dv_getPropSafe(obj, propName) {
    try {
        if (obj)
            return obj[propName];
    } catch (e) { }
}

function dvType() {
    var that = this;
    this.pubSub = new function () {

        var subscribers = [];

        this.subscribe = function (eventName, uid, actionName, func) {
            if (!subscribers[eventName + uid])
                subscribers[eventName + uid] = [];
            subscribers[eventName + uid].push({ Func: func, ActionName: actionName });
        }

        this.publish = function (eventName, uid) {
            var actionsResults = [];
            if (eventName && uid && subscribers[eventName + uid] instanceof Array)
                for (var i = 0; i < subscribers[eventName + uid].length; i++) {
                    var funcObject = subscribers[eventName + uid][i];
                    if (funcObject && funcObject.Func && typeof funcObject.Func == "function" && funcObject.ActionName) {
                        var isSucceeded = runSafely(function () { return funcObject.Func(uid); });
                        actionsResults.push(encodeURIComponent(funcObject.ActionName) + '=' + (isSucceeded ? '1' : '0'));
                    }
                }
            return actionsResults.join('&');
        }
    }

    this.domUtilities = new function () {

        this.addImage = function (url, parentElement) {
            var image = parentElement.ownerDocument.createElement("img");
            image.width = 0;
            image.height = 0;
            image.style.display = 'none';            
            image.src = appendCacheBuster(url);
            parentElement.insertBefore(image, parentElement.firstChild);
        }
        
        this.addScriptResource = function (url, parentElement) {
            var scriptElem = parentElement.ownerDocument.createElement("script");
            scriptElem.type = 'text/javascript';
            scriptElem.src = appendCacheBuster(url);
            parentElement.insertBefore(scriptElem, parentElement.firstChild);   
        }

        this.addScriptCode = function (srcCode, parentElement) {
            var scriptElem = parentElement.ownerDocument.createElement("script");
            scriptElem.type = 'text/javascript';
            scriptElem.innerHTML = srcCode;
            parentElement.insertBefore(scriptElem, parentElement.firstChild);
        }

        this.addHtml = function (srcHtml, parentElement) {
            var divElem = parentElement.ownerDocument.createElement("div");
            divElem.style = "display: inline";
            divElem.innerHTML = srcHtml;
            parentElement.insertBefore(divElem, parentElement.firstChild);
        }
    }

    this.resolveMacros = function (str, tag) {
        var upperCaseObj = objectsToUpperCase(tag, tag.getViewabilityData(), tag.getViewabilityData().buckets);
        var newStr = str.replace('[DV_PROTOCOL]', upperCaseObj.DV_PROTOCOL);
        newStr = newStr.replace('[PROTOCOL]', upperCaseObj.PROTOCOL);
        newStr = newStr.replace(/\[(.*?)\]/g, function (match, p1) {
            var value = upperCaseObj[p1];
            if (value === undefined || value === null)
                value = '[' + p1 + ']';            
            return encodeURIComponent(value);
        });
        return newStr;
    }

    this.settings = new function () {
    }

    this.tagsType = function () { };

    this.tagsPrototype = function () {
        this.add = function (tagKey, obj) {
            if (!that.tags[tagKey])
                that.tags[tagKey] = new that.tag();
            for (var key in obj)
                that.tags[tagKey][key] = obj[key];
        }
    }

    this.tagsType.prototype = new this.tagsPrototype();
    this.tagsType.prototype.constructor = this.tags;
    this.tags = new this.tagsType();

    this.tag = function () { }
    this.tagPrototype = function () {
        this.set = function (obj) {
            for (var key in obj)
                this[key] = obj[key];
        }

        this.getViewabilityData = function () {
        }
    }

    this.tag.prototype = new this.tagPrototype();
    this.tag.prototype.constructor = this.tag;

    var runSafely = function (action) {
        try {
            var ret = action();
            return ret !== undefined ? ret : true;
        } catch (e) { return false; }
    }

    var objectsToUpperCase = function () {
        var upperCaseObj = {};
        for (var i = 0; i < arguments.length; i++) {
            var obj = arguments[i];
            for (key in obj) {
                if (obj.hasOwnProperty(key)) {
                    upperCaseObj[key.toUpperCase()] = obj[key];
                }
            }
        }
        return upperCaseObj;
    }

    var appendCacheBuster = function (url) {
        if (url !== undefined && url !== null && url.match("^http") == "http") {
            if (url.indexOf('?') !== -1) {
                if (url.slice(-1) == '&')
                    url += 'cbust=' + dv_GetRnd();
                else
                    url += '&cbust=' + dv_GetRnd();
            }
            else
                url += '?cbust=' + dv_GetRnd();
        }
        return url;
    }
}

function dv_baseHandler(){function m(a){var b;if(document.createElement&&(b=document.createElement("iframe")))b.name=b.id=window._dv_win.$dv.settings.emptyIframeID||"iframe_"+Math.floor(1E12*(Math.random()+"")),b.width=0,b.height=0,b.style.display="none",b.src=a;return b}function l(a,b,d){var c;var e={};try{for(var i=RegExp("[\\?&]([^&]*)=([^&#]*)","gi"),h=i.exec(a);null!=h;)"eparams"!==h[1]&&(e[h[1]]=h[2]),h=i.exec(a);c=e}catch(j){c=e}window._dv_win.$dv.tags.add(d,c);window._dv_win.$dv.tags[d].set({tagElement:b})}
function x(a){try{if(1>=a.depth)return{url:"",depth:""};var b,d=[];d.push({win:window._dv_win.top,depth:0});for(var c,e=1,i=0;0<e&&100>i;){try{if(i++,c=d.shift(),e--,0<c.win.location.toString().length&&c.win!=a)return 0==c.win.document.referrer.length||0==c.depth?{url:c.win.location,depth:c.depth}:{url:c.win.document.referrer,depth:c.depth-1}}catch(h){}b=c.win.frames.length;for(var j=0;j<b;j++)d.push({win:c.win.frames[j],depth:c.depth+1}),e++}return{url:"",depth:""}}catch(g){return{url:"",depth:""}}}
function r(a){new String;var b=new String,d,c,e;for(d=0;d<a.length;d++)e=a.charAt(d),c="!\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~".indexOf(e),0<=c&&(e="!\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~".charAt((c+47)%94)),b+=e;return b}function n(a,b){if(null!=a&&void 0!=a&&b){var d=a.indexOf(b);-1!=d&&a.splice(d,1)}}function j(){return Math.floor(65536*(1+Math.random())).toString(16).substring(1)}
function y(){return"xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".replace(/[xy]/g,function(a){var b=16*Math.random()|0;return("x"==a?b:b&3|8).toString(16)})}this.createRequest=function(){var a=!1,b=window._dv_win,d=0,c=!1;try{for(dv_i=0;10>=dv_i;dv_i++)if(null!=b.parent&&b.parent!=b)if(0<b.parent.location.toString().length)b=b.parent,d++,a=!0;else{a=!1;break}else{0==dv_i&&(a=!0);break}}catch(e){a=!1}var i;0==b.document.referrer.length?i=b.location:a?i=b.location:(i=b.document.referrer,c=!0);var h=null,q=
null;null!=window._dv_win.external&&(h=void 0!=window._dv_win.external.QueuePageID?window._dv_win.external.QueuePageID:null,q=void 0!=window._dv_win.external.CrawlerUrl?window._dv_win.external.CrawlerUrl:null);window._dv_win._dvScripts||(window._dv_win._dvScripts=[]);window._dv_win._dvScriptsObsolete||(window._dv_win._dvScriptsObsolete=[]);var g=document.getElementsByTagName("script");for(dv_i in g)if((a=g[dv_i].src)&&a.match(/^[ \t]*(http(s)?:\/\/)?[a-z\-]*cdn(s)?\.doubleverify\.com:?[0-9]*\/dvtp_src.js/)&&
!dv_Contains(window._dv_win._dvScripts,g[dv_i])){this.dv_script=g[dv_i];window._dv_win._dvScripts.push(g[dv_i]);if(window._dv_win._dvScriptsObsolete[g.length])var m=1;window._dv_win._dvScriptsObsolete[g.length]=g[dv_i];var p=dv_GetParam(a,"region")||"",g="http:",l="0";"https"==a.match("^https")&&"https"==window._dv_win.location.toString().match("^https")&&(g="https:",l="1");var k="https"==window._dv_win.location.toString().match("^https")?"https:":"http:";try{for(var n=b,s=b,t=0;10>t&&s!=window._dv_win.top;)t++,
s=s.parent;n.depth=t;var w=x(b),u="&aUrl="+encodeURIComponent(w.url),v="&aUrlD="+w.depth,f=b.depth+d;c&&b.depth--}catch(z){v=u=f=b.depth=""}d=dv_GetDynamicParams(a);"41"==p&&(p=50>100*Math.random()?"41":"8",d.push("dvp_region="+p));d=d.join("&");a=g+"//tps"+p+".doubleverify.com/visit.js?ctx="+(dv_GetParam(a,"ctx")||"")+"&cmp="+(dv_GetParam(a,"cmp")||"")+"&ipos="+(dv_GetParam(a,"ipos")||"")+"&sid="+(dv_GetParam(a,"sid")||"")+"&plc="+(dv_GetParam(a,"plc")||"")+"&adid="+(dv_GetParam(a,"adid")||"")+"&crt="+
(dv_GetParam(a,"crt")||"")+"&dvtagver=6.1.src&srcurlD="+b.depth+"&curl="+(null==q?"":encodeURIComponent(q))+"&qpgid="+(null==h?"":h)+"&btreg="+(dv_GetParam(a,"btreg")||"")+"&btadsrv="+(dv_GetParam(a,"btadsrv")||"")+"&adsrv="+(dv_GetParam(a,"adsrv")||"")+"&advid="+(dv_GetParam(a,"advid")||"")+"&num="+(dv_GetParam(a,"num")||"")+"&pid="+(dv_GetParam(a,"pid")||"")+"&crtname="+(dv_GetParam(a,"crtname")||"")+"&unit="+(dv_GetParam(a,"unit")||"")+"&chnl="+(dv_GetParam(a,"chnl")||"")+"&ssl="+l+"&uid="+(dv_GetParam(a,
"uid")||"")+"&scusrid="+(dv_GetParam(a,"scusrid")||"")+"&refD="+f;"http:"==a.match("^http:")&&"https"==window._dv_win.location.toString().match("^https")&&(a+="&dvp_diffSSL=1");d&&(a+="&"+d);b="srcurl="+encodeURIComponent(i);if((f=window._dv_win[r("=@42E:@?")][r("2?46DE@C~C:8:?D")])&&0<f.length){i=[];i[0]=window._dv_win.location.protocol+"//"+window._dv_win.location.hostname;for(h=0;h<f.length;h++)i[h+1]=f[h];f=i.reverse().join(",")}else f=null;f&&(b+="&ancChain="+encodeURIComponent(f));f=dv_GetParam(a,
"uid");null==f?(f=dv_GetRnd(),a+="&uid="+f):(f=dv_GetRnd(),a=a.replace(/([?&]uid=)(?:[^&])*/i,"$1"+f));window._dv_win.$dv.tags.add(f,{dv_protocol:g});window._dv_win.$dv.tags.add(f,{protocol:k});10>100*Math.random()&&(g=j()+j()+"-"+j()+"-"+j()+"-"+j()+"-"+j()+j()+j(),k=y(),f=Math.floor(4503599627370496*(1+Math.random())),a+="&dvp_uuid1="+g+"&dvp_uuid2="+k+"&dvp_uuid3="+f);g=4E3;/MSIE (\d+\.\d+);/.test(navigator.userAgent)&&7>=new Number(RegExp.$1)&&(g=2E3);k=navigator.userAgent.toLowerCase();if(-1<
k.indexOf("webkit")||-1<k.indexOf("chrome"))k="&referrer="+encodeURIComponent(window._dv_win.location),a.length+k.length<=g&&(a+=k);u.length+v.length+a.length<=g&&(a+=v,b+=u);m&&(a+="&dvp_srcErr=1");return a+"&eparams="+encodeURIComponent(r(b))}};this.sendRequest=function(a){var b;b=this.getVersionParamName();var d=this.getVersion(),c={};c[b]=d;c.dvp_jsErrUrl=a;c.dvp_jsErrMsg=encodeURIComponent("Error loading visit.js");b='try{ script.onerror = function(){ try{(new Image()).src = "'+dv_CreateAndGetErrorImp("tps30.doubleverify.com/visit.jpg?ctx=818052&cmp=1619415&dvtagver=6.1.src&dvp_isLostImp=1",
c)+'";}catch(e){}}}catch(e){}';b='<html><head></head><body><script type="text/javascript" src="'+a+'"><\/script><script type="text/javascript">var script = document.getElementsByTagName("script")[0]; if (script.readyState) { script.onreadystatechange = function() { if (script.readyState == "complete") document.close(); } } else document.close(); '+b+"<\/script></body></html>";var e=m("about:blank");this.dv_script.id=e.id.replace("iframe","script");d=dv_GetParam(a,"uid");document.body.insertBefore(e,
document.body.firstChild);if(c=dv_getPropSafe(e,"contentDocument")||dv_getPropSafe(dv_getPropSafe(e,"contentWindow"),"document")||dv_getPropSafe(window._dv_win.frames[e.name],"document")){c.open();l(a,this.dv_script,d);if(a=e.contentWindow||window._dv_win.frames[e.name])a.$uid=d,a.$dv=window._dv_win.$dv;c.write(b)}else l(a,this.dv_script,d),a='javascript: (function(){document.open(); document.domain="'+window.document.domain+'"; window.$uid = "'+d+"\"; window.$dv = window.parent.$dv; document.write('"+
encodeURIComponent(b)+"');})()",e=m(a),this.dv_script.id=e.id.replace("iframe","script"),document.body.insertBefore(e,document.body.firstChild);return!0};this.isApplicable=function(){return!0};this.onFailure=function(){n(window._dv_win._dvScripts,this.dv_script);n(window._dv_win._dvScriptsObsolete,this.dv_script)};this.getVersionParamName=function(){return"jsver"};this.getVersion=function(){return"11"}};


function dv_src_main(dv_baseHandlerIns, dv_handlersDefs) {

    this.baseHandlerIns = dv_baseHandlerIns;
    this.handlersDefs = dv_handlersDefs;

    this.exec = function() {
        try{
            window._dv_win = (window._dv_win || window);
            window._dv_win.$dv = (window._dv_win.$dv || new dvType());
            var errorsArr = (new dv_rolloutManager(this.handlersDefs, this.baseHandlerIns)).handle();
            if (errorsArr && errorsArr.length > 0)
                dv_SendErrorImp('tps30.doubleverify.com/visit.jpg?ctx=818052&cmp=1619415&dvtagver=6.1.src', errorsArr);
        }
        catch(e){
           try{
                dv_SendErrorImp('tps30.doubleverify.com/visit.jpg?ctx=818052&cmp=1619415&dvtagver=6.1.src&jsver=0&dvp_isLostImp=1', { dvp_jsErrMsg: encodeURIComponent(e) });   
           }catch(e){}
        }
    }
}

try {
    window._dv_win = window;
    var dv_baseHandlerIns = new dv_baseHandler();
	

    var dv_handlersDefs = [];
    (new dv_src_main(dv_baseHandlerIns, dv_handlersDefs)).exec();
} catch (e) { }
