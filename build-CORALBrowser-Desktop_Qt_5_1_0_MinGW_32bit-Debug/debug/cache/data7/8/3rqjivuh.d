   �      &https://duckduckgo.com/js/r/nryt117.js     %}	hR-     %{��h          
     O K           �      Server   nginx   Date   Tue, 02 Jul 2013 19:52:53 GMT   Content-Type   'application/x-javascript; charset=UTF-8   Last-Modified   Thu, 27 Jun 2013 08:02:08 GMT   Expires   Wed, 02 Jul 2014 19:52:53 GMT   Cache-Control   max-age=31536000   Vary   Accept-Encoding   Content-Encoding   gzip var ddgyt={};ddgyt.MAX_RESULTS_LIST=5;ddgyt.MAX_RESULTS_RELATED=5;ddgyt.MAX_RESULTS_USER=5;ddgyt.THUMBNAIL_WIDTH=80;ddgyt.THUMBNAIL_HEIGHT=72;ddgyt.PREVIOUS_PAGE_BUTTON="previousPageButton";ddgyt.NEXT_PAGE_BUTTON="nextPageButton";ddgyt.VIDEO_LIST_TABLE="searchResultsVideoListTable";ddgyt.VIDEO_LIST_TABLE_CONTAINER_DIV="searchResultsVideoList";ddgyt.VIDEO_PLAYER_DIV="videoPlayer";ddgyt.RELATED_VIDEOS_DIV="relatedVideos";ddgyt.USER_VIDEOS_DIV="userVideos";ddgyt.MAIN_SEARCH_CONTAINER_DIV="mainSearchBox";ddgyt.TOP_SEARCH_CONTAINER_DIV="searchBox";ddgyt.VIDEO_DESCRIPTION_CSS_CLASS="videoDescription";ddgyt.VIDEO_LIST_CSS_CLASS="videoList";ddgyt.RELATED_VIDEOS_REL="http://gdata.youtube.com/schemas/2007#video.related";ddgyt.FLASH_MIME_TYPE="application/x-shockwave-flash";ddgyt.STANDARD_FEED_URL_TOP_RATED="http://gdata.youtube.com/feeds/standardfeeds/top_rated";ddgyt.STANDARD_FEED_URL_MOST_VIEWED="http://gdata.youtube.com/feeds/standardfeeds/most_viewed";ddgyt.STANDARD_FEED_URL_RECENTLY_FEATURED="http://gdata.youtube.com/feeds/standardfeeds/recently_featured";ddgyt.VIDEO_FEED_URL="http://gdata.youtube.com/feeds/videos";ddgyt.QUERY_URL_MAP={top_rated:ddgyt.STANDARD_FEED_URL_TOP_RATED,most_viewed:ddgyt.STANDARD_FEED_URL_MOST_VIEWED,recently_featured:ddgyt.STANDARD_FEED_URL_RECENTLY_FEATURED,all:ddgyt.VIDEO_FEED_URL};ddgyt.USER_VIDEOS_SUFFIX="/uploads";ddgyt.REFERRING_FEED_TYPE_MAIN="main";ddgyt.REFERRING_FEED_TYPE_RELATED="related";ddgyt.REFERRING_FEED_TYPE_USER="user";ddgyt.nextPage=2;ddgyt.previousPage=0;ddgyt.previousSearchTerm="";ddgyt.previousQueryType="all";ddgyt.jsonFeed_=null;ddgyt.jsonFeedRelated_=null;ddgyt.jsonFeedUser_=null;ddgyt.DDG_URL="http://duckduckgo.com/?q=";ddgyt.ITUNES_URL="http://itunes.apple.com/search?";ddgyt.officialTitle="";ddgyt.officialAuthor="";ddgyt.AUTHOR_LOC=0;ddgyt.TITLE_LOC=1;ddgyt.SKIP_ARRAY=new Array();ddgyt.SKIP_ARRAY.video=1;ddgyt.SKIP_ARRAY.youtube=1;ddgyt.SKIP_ARRAY.song=1;ddgyt.SKIP_ARRAY.music=1;ddgyt.SKIP_ARRAY.single=1;ddgyt.appendScriptTag=function(c,f,b){var a=document.getElementById(f);if(a){a.parentNode.removeChild(a)}var e=document.createElement("script");e.setAttribute("src",c+"&alt=json-in-script&callback="+b);e.setAttribute("id",f);e.setAttribute("type","text/javascript");document.getElementsByTagName("head")[0].appendChild(e)};ddgyt.findLinkHref=function(e,a){for(var b=0,c;c=e.link[b];b++){if(c.rel==a){return c.href}}return null};ddgyt.findMediaContentHref=function(e,b){for(var a=0,c;c=e.media$group.media$content[a];a++){if(c.type==b){return c.url}}return null};ddgyt.listVideos=function(e,b,c){ddgyt.previousSearchTerm=b;ddgyt.previousQueryType=e;var a=ddgyt.QUERY_URL_MAP[e];if(a){a+="?max-results="+ddgyt.MAX_RESULTS_LIST+"&start-index="+(((c-1)*ddgyt.MAX_RESULTS_LIST)+1);if(b!=""){a+="&vq="+b}a+="&alt=json-in-script&callback=ddgyt.nryt";nrj(a)}else{alert("Unknown feed type specified")}};ddgyt.bangify=function(a){return ddgyt.DDG_URL+"!"+a+"%20"};ddgyt.itunesify=function(b,e,c,a){return ddgyt.ITUNES_URL+"&term="+encodeURIComponent(b)+"&country="+encodeURIComponent(e)+"&callback="+encodeURIComponent(c)+"&limit="+encodeURIComponent(a)};ddgyt.stripParens=function(b){if((enterParen=b.indexOf("("))!=-1&&(exitParen=b.indexOf(")"))!=-1){var a=b;b=a.substring(0,enterParen-1)+a.substring(exitParen+1,a.length)}if(((enterParen=b.indexOf("["))!=-1&&(exitParen=b.indexOf("]"))!=-1)){var a=b;b=a.substring(0,enterParen-1)+a.substring(exitParen+1,a.length)}return b};ddgyt.trimTitle=function(a){return a.replace(/\s+f(?:ea|)t\..*$/,"")};ddgyt.fixPrivacy=function(a){return a.replace(/(?:youtube\.com|www\.youtube.com)/i,"www.youtube-nocookie.com")};ddgyt.fixEmbed=function(a){return a.replace("/v/","/embed/")};ddgyt.fixSSL=function(a){return a.replace("http","https")};ddgyt.fixRq=function(a){return a.replace(/(?:\%20|\+)(?:listen|single|music|mp3)$/,"")};String.prototype.trim=function(){return this.replace(/^\s*|\s*$/,"")};ddgyt.stripDash=function(a){split=a.split(" - ");if(split[1]){return split}else{return a}};ddgyt.makeAbstract=function(e,g){var i=ddgyt.stripParens(e.media$group.media$title.$t);var a="";var f=d.createElement("div");var b=ddgyt.stripDash(i);if(i){if((g||iqyt==2)&&b instanceof Array){i=b[ddgyt.TITLE_LOC];a=b[ddgyt.AUTHOR_LOC];var c=d.createElement("a");c.href="http://duckduckgo.com/?q="+encodeURIComponent(a);c.innerHTML=a;var h=d.createElement("a");h.href="http://duckduckgo.com/?q="+encodeURIComponent(i);h.innerHTML=i;f.appendChild(h);f.appendChild(d.createTextNode(" - "));f.appendChild(c)}else{f.appendChild(d.createTextNode(i))}}return f};ddgyt.makeLinks=function(l){var k=ddgyt.stripParens(l.media$group.media$title.$t);var c="";var h="";var a=ddgyt.stripDash(k);if(a instanceof Array){ddgyt.officialTitle=k=ddgyt.trimTitle(a[ddgyt.TITLE_LOC]);ddgyt.officialAuthor=c=a[ddgyt.AUTHOR_LOC];h=c+" "+k}else{h=ddgyt.trimTitle(k)}var i=d.createElement("a");i.href="javascript:;";i.innerHTML="iTunes";i.onclick=function(){nrj("/iit/"+h)};var e=d.createElement("a");e.href=ddgyt.bangify("amazon")+encodeURIComponent(h);e.innerHTML="Amazon";var o=d.createElement("a");o.href=ddgyt.bangify("lastfm")+encodeURIComponent(h);o.innerHTML="Last.fm";var m=d.createElement("a");m.href=ddgyt.bangify("pandora")+encodeURIComponent((c?c:h));m.innerHTML="Pandora";var n=d.createElement("a");n.href=ddgyt.bangify("rdio")+encodeURIComponent(h);n.innerHTML="Rdio";var f=d.createElement("a");f.href="http://duckduckgo.com/?q="+encodeURIComponent(h+" lyrics");f.innerHTML="Lyrics";var b=d.createElement("div");var g=d.createElement("div");var j=d.createElement("div");g.appendChild(d.createTextNode("Listen: "));g.appendChild(m);g.appendChild(d.createTextNode(" | "));g.appendChild(o);g.appendChild(d.createTextNode(" | "));g.appendChild(n);j.appendChild(d.createTextNode("More: "));j.appendChild(i);j.appendChild(d.createTextNode(" | "));j.appendChild(e);j.appendChild(d.createTextNode(" | "));j.appendChild(f);b.appendChild(g);b.appendChild(j);YAHOO.util.Dom.setStyle(b,"margin-top","5px");return b};ddgyt.createEmbedHTML=function(a){var e=600;var f=363;if(iph||ia||iam){e=240;f=146}else{if(ipa){e=540;f=327}}var c=[];c.push('<iframe id="player" type="text/html" ');c.push('width="');c.push(e);c.push('" height="');c.push(f);c.push('" src="');a=ddgyt.fixPrivacy(a);c.push(ddgyt.fixEmbed(a));c.push('" frameboarder="0">');if(ih5){nrj("/js/r/nrytp102.js");var b;function h(){b=new YT.Player("player",{events:{onReady:g}})}function g(i){i.target.playVideo()}}return c};ddgyt.hasOfficialVideo=function(h){for(var f=0,l;l=h.entry[f];f++){var k=l.media$group.media$title.$t;var g=l.author[0].name.$t;if(g.indexOf("VEVO")!=-1&&!l.yt$noembed){return f}var b=ddgyt.stripDash(k);if(b instanceof Array){var c=b[ddgyt.AUTHOR_LOC].split(" ",-1);for(var e=0,a;a=c[e];e++){if(g.indexOf(a)!=-1&&!l.yt$noembed){return f}}}}return -1};ddgyt.formatYouTubeURL=function(b){var a=b.indexOf("?");b=b.substring(0,a+1);b+="enablejsapi=1";b+="&autoplay=1";b+="&version=3";b+="&autohide=1";b+="&iv_load_policy=3";b+="&wmode=opaque";return b};ddgyt.juiceApples=function(f){var e=-1;for(var b=0,c;c=f.results[b];b++){if(c.artistName.toLowerCase()==ddgyt.officialAuthor.toLowerCase()){e=b;if(c.trackName.toLowerCase()==ddgyt.officialTitle.trim().toLowerCase()){e=b;break}}}var a="http://duckduckgo.com/?q=!apple+";if(ddgyt.officialAuthor){a+="ddgyt.officialAuthor"}else{a+=rq}if(e!=-1){a=f.results[e].trackViewUrl}nug(a)};ddgyt.nryt=function(q){var a=0,r=false,s=false;if(!q.feed){q.feed={};q.feed.entry=[q.entry]}ddgyt.jsonFeed_=q.feed;for(var j=0,p;p=q.feed.entry[j];j++){if(!p.yt$noembed){r=true;a=j;break}}var h=ddgyt.hasOfficialVideo(q.feed);if(h!=-1){a=h;s=true}var p=q.feed.entry[a];var o=0;var l=p.yt$statistics;if(typeof(l)!="undefined"&&l.viewCount){o=l.viewCount}var f=DDG.isRelevant(p.title.$t,ddgyt.SKIP_ARRAY);if(r&&o>10000&&f){var e=ddgyt.makeAbstract(p,s);var b=d.createElement("div");var g=ddgyt.formatYouTubeURL(p.media$group.media$content[0].url);var k=ddgyt.createEmbedHTML(g);var m=nuov(p.media$group.media$thumbnail[0].url,p.media$group.media$thumbnail[0].height,p.media$group.media$thumbnail[0].width,0,1,100,150,320,480,k.join(""),0);b.appendChild(m);b.appendChild(e);if(iqyt==2||s){var c=ddgyt.makeLinks(p);b.appendChild(c)}var n=new Array();n[0]=new Array();n[0]["a"]=b;n[0]["h"]="";n[0]["s"]="YouTube";n[0]["f"]=1;n[0]["u"]=p.link[0].href;nra(n,1,1)}};ddgyt.listVideosCallback=function(g){ddgyt.jsonFeed_=g.feed;var a=document.getElementById(ddgyt.VIDEO_LIST_TABLE_CONTAINER_DIV);while(a.childNodes.length>=1){a.removeChild(a.firstChild)}var e=document.createElement("table");e.setAttribute("class",ddgyt.VIDEO_LIST_CSS_CLASS);var b=document.createElement("tbody");e.setAttribute("width","100%");a.appendChild(e);for(var c=0,f;f=g.feed.entry[c];c++){if(!f.yt$noembed){ddgyt.appendVideoDataToTable(b,f,c)}}e.appendChild(b)};ddgyt.showRelatedVideos=function(g,a){var f;try{if(a==ddgyt.REFERRING_FEED_TYPE_RELATED){f=ddgyt.jsonFeedRelated_.entry[g]}else{if(a==ddgyt.REFERRING_FEED_TYPE_USER){f=ddgyt.jsonFeedUser_.entry[g]}else{if(a==ddgyt.REFERRING_FEED_TYPE_MAIN){f=ddgyt.jsonFeed_.entry[g]}else{throw"Unknown type of referring feed."}}}var b=ddgyt.findLinkHref(f,ddgyt.RELATED_VIDEOS_REL);var c=document.getElementById(ddgyt.RELATED_VIDEOS_DIV);while(c.childNodes.length>=1){c.removeChild(c.firstChild)}c.innerHTML="<b>Related:</b><br />";if(b){b+="?max-results="+ddgyt.MAX_RESULTS_RELATED;ddgyt.appendScriptTag(b,"showRelatedVideosScript","ddgyt.showRelatedVideosCallback")}}catch(e){alert(e)}};ddgyt.showRelatedVideosCallback=function(f){var c=document.getElementById(ddgyt.RELATED_VIDEOS_DIV);ddgyt.jsonFeedRelated_=f.feed;for(var b=0,e;e=f.feed.entry[b];b++){relatedVideosJson=e;var a=document.createElement("img");a.setAttribute("src",e.media$group.media$thumbnail[0].url);a.onclick=ddgyt.generatePlayVideoLinkOnclick(e.id.$t,b,ddgyt.REFERRING_FEED_TYPE_RELATED);a.setAttribute("width",ddgyt.THUMBNAIL_WIDTH);a.setAttribute("height",ddgyt.THUMBNAIL_HEIGHT);c.appendChild(a)}};ddgyt.showVideosByUser=function(c){var b=document.getElementById(ddgyt.USER_VIDEOS_DIV);while(b.childNodes.length>=1){b.removeChild(b.firstChild)}var a=c+ddgyt.USER_VIDEOS_SUFFIX+"?max-results="+ddgyt.MAX_RESULTS_USER+"&orderby=rating";b.innerHTML="<br /><b>Top rated videos by user:</b><br />";ddgyt.appendScriptTag(a,"showVideosByUserScript","ddgyt.showVideosByUserCallback")};ddgyt.showVideosByUserCallback=function(f){var e=document.getElementById(ddgyt.USER_VIDEOS_DIV);ddgyt.jsonFeedUser_=f.feed;for(var b=0,c;c=f.feed.entry[b];b++){userVideosJson=c;var a=document.createElement("img");a.setAttribute("src",c.media$group.media$thumbnail[0].url);a.onclick=ddgyt.generatePlayVideoLinkOnclick(c.id.$t,b,ddgyt.REFERRING_FEED_TYPE_USER);a.setAttribute("width",ddgyt.THUMBNAIL_WIDTH);a.setAttribute("height",ddgyt.THUMBNAIL_HEIGHT);e.appendChild(a)}};ddgyt.generatePlayVideoLinkOnclick=function(c,b,a){return function(){ddgyt.playVideo(b,a);return false}};ddgyt.appendVideoDataToTable=function(e,i,a){var g=document.createElement("tr");g.onclick=ddgyt.generatePlayVideoLinkOnclick(i.id.$t,a,ddgyt.REFERRING_FEED_TYPE_MAIN);var b=document.createElement("td");b.setAttribute("width","130");var c=document.createElement("img");c.setAttribute("src",i.media$group.media$thumbnail[0].url);b.appendChild(c);var h=document.createElement("td");h.setAttribute("width","100%");var f=document.createElement("a");f.setAttribute("href","#");f.innerHTML=i.media$group.media$title.$t;var j=document.createElement("p");j.innerHTML=i.media$group.media$description.$t;j.setAttribute("class",ddgyt.VIDEO_DESCRIPTION_CSS_CLASS);h.appendChild(f);h.appendChild(j);g.appendChild(b);g.appendChild(h);e.appendChild(g)};ddgyt.playVideo=function(h,a){var g;try{if(a==ddgyt.REFERRING_FEED_TYPE_RELATED){g=ddgyt.jsonFeedRelated_.entry[h]}else{if(a==ddgyt.REFERRING_FEED_TYPE_USER){g=ddgyt.jsonFeedUser_.entry[h]}else{if(a==ddgyt.REFERRING_FEED_TYPE_MAIN){g=ddgyt.jsonFeed_.entry[h]}else{throw"Unknown type of referring feed."}}}var c=ddgyt.findMediaContentHref(g,ddgyt.FLASH_MIME_TYPE);var b=document.getElementById(ddgyt.VIDEO_PLAYER_DIV);var e=[];e.push("<b>");e.push(g.media$group.media$title.$t);e.push("</b><br />");e.push('<object width="425" height="350"><param name="movie" value="');e.push(c);e.push('&autoplay=1"></param><param name="wmode" value="transparent">');e.push('</param><embed src="');e.push(c);e.push('&autoplay=1" type="application/x-shockwave-flash" ');e.push('wmode="transparent" width="425" height="350"></embed></object>');ddgyt.showRelatedVideos(h,a);if(g.author&&g.author.length>0){ddgyt.showVideosByUser(g.author[0].uri.$t)}}catch(f){alert(f)}};ddgyt.updateNavigation=function(a){ddgyt.nextPage=a+1;ddgyt.previousPage=a-1;document.getElementById(ddgyt.NEXT_PAGE_BUTTON).style.display="inline";document.getElementById(ddgyt.PREVIOUS_PAGE_BUTTON).style.display="inline";if(ddgyt.previousPage<1){document.getElementById(ddgyt.PREVIOUS_PAGE_BUTTON).disabled=true}else{document.getElementById(ddgyt.PREVIOUS_PAGE_BUTTON).disabled=false}document.getElementById(ddgyt.NEXT_PAGE_BUTTON).disabled=false};ddgyt.hideMainSearch=function(){document.getElementById(ddgyt.MAIN_SEARCH_CONTAINER_DIV).style.display="none";document.getElementById(ddgyt.TOP_SEARCH_CONTAINER_DIV).style.display="inline"};ddgyt.queryTypeChanged=function(b,a){if(b!="all"){a.value=""}};if(ip||ia||iam||YAHOO.util.FlashDetect.installed){if(iqytid){nrj("/iyt/"+iqytid)}};