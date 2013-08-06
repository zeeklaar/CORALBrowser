   �      Hhttp://tap-cdn.rubiconproject.com/partner/scripts/rubicon/page_parser.js     %{�5�r     %{� �3p         
     O K           �   	   Server   TRP Apache-Coyote/1.1   Last-Modified   Thu, 25 Jul 2013 02:57:10 GMT   p3p   8CP="NOI CURa ADMa DEVa TAIa OUR BUS IND UNI COM NAV INT"   Content-Type   text/javascript;charset=UTF-8   Content-Encoding   gzip   Cache-Control   max-age=3600   Expires   Thu, 25 Jul 2013 14:17:36 GMT   Date   Thu, 25 Jul 2013 13:17:36 GMT   Vary   Accept-Encoding 


/*! Copyright 2009,2010 the Rubicon Project.  All Rights Reserved.  No permission is granted to use, copy or extend this code */





function oz_trim(A){return A.replace(/^\s+|\s+$/g,"");}function PageParser(){this.timeout=2000;this.doc=document;this.stopwords=null;this.init=function(){try{if(typeof oz_domain_ignore_map!="undefined"){this.domain_ignore_map=this.mergeProperties(this.domain_ignore_map,oz_domain_ignore_map);}if(typeof oz_domain_element_map!="undefined"){this.domain_element_map=this.mergeProperties(this.domain_element_map,oz_domain_element_map);
}if(typeof oz_domain_profile_paths!="undefined"){this.domain_profile_paths=this.mergeProperties(this.domain_profile_paths,oz_domain_profile_paths);}if(typeof oz_domain_profile_pages!="undefined"){this.domain_profile_pages=this.mergeProperties(this.domain_profile_pages,oz_domain_profile_pages);}if(this.domain_ignore_map[this.doc.location.host]){this.stopwords=this.domain_ignore_map[this.doc.location.host].stopwords;
}}catch(A){}};this.trim=function(A){return A.replace(/^\s+|\s+$/g,"");};this.mergeProperties=function(B,A){if(typeof (B)=="undefined"||!B){return A;}if(typeof (A)=="undefined"||!A){return new Object();}for(var C in A){if(typeof B[C]=="undefined"){B[C]=A[C];}}return B;};this.getTextFromNode=function(A){if(!A){return null;
}if(A.textContent){return A.textContent;}if(A.innerText){return A.innerText;}return A.nodeValue;};this.highValueTags={"A":1,"B":1,"H1":1,"H2":1,"STRONG":1};this.isHighValueTag=function(A){if(A&&this.highValueTags[A.tagName]){return true;}return false;};this.ignoreTags={"SCRIPT":1,"NOSCRIPT":1,"STYLE":1,"IFRAME":1,"OPTION":1};
this.commonTags={"DIV":1,"P":1,"SPAN":1,"A":1,"LI":1,"A":1,"B":1};this.isQualityNode=function(A){if(A==null){return false;}if(this.commonTags[A.nodeName]){return true;}if(this.ignoreTags[A.nodeName]){return false;}var B=A.parentNode;if(B&&this.ignoreTags[B.nodeName]){return false;}return true;};this.selectURLParam=function(C,A){C=C.replace(/[\[]/,"\\[").replace(/[\]]/,"\\]");
var B="[\\?&]"+C+"=([^&#]*)";var E=new RegExp(B);var D=E.exec(A);if(D==null){return"";}else{return D[1].replace("+"," ");}};this.selectAdCount=function(A,B){var D=new RegExp("/aclk?","g");var C=B.match(D);if(C==null){return 0;}else{return C.length;}};this.selectSERPQuery=function(B){var A=new Object();
if((B.indexOf("google.com")>-1)||(B.indexOf("search.yahoo.com")>-1)||(B.indexOf("search.live.com")>-1)||(B.indexOf("ask.com")>-1)||(B.indexOf("search.aol.com")>-1)||(B.indexOf("sads.myspace.com")>-1)||(B.indexOf("vids.myspace.com")>-1)||(B.indexOf("facebook.com")>-1)){A=this.selectURLParam("q",B);if(A.length<1){A=this.selectURLParam("p",B);
if(A.length<1){A=this.selectURLParam("query",B);}}}else{if((B.indexOf("searchresults.myspace.com")>-1)||(B.indexOf("searchservice.myspace.com")>-1)){A=this.selectURLParam("keywords",B);if(A.length<1){A=this.selectURLParam("f_search_criteria",B);}}else{if((B.indexOf("youtube.com")>-1)){A=this.selectURLParam("search_query",B);
}else{if((B.indexOf("ebay.com")>-1)){A=this.selectURLParam("satitle",B);}else{if((B.indexOf("craigslist.org")>-1)){A=this.selectURLParam("query",B);}else{if((B.indexOf("localsearch.com")>-1)){A=this.selectURLParam("what",B);}else{if((B.indexOf("excite.com")>-1)){var C=B.split("/");if(C.length>7){A=C[7];
}}}}}}}}return A;};this.selectSERPStats=function(B){var C=new Object();var A=new Object();A=this.selectSERPQuery(B);if(A.length>0){C.queryTerms=A;C.adCount=0;C.titleCount=1;}return C;};this.getIFrameDocumentRoot=function(A){try{var C;C=A.contentWindow||A.contentDocument;if(C.document){return C.document.documentElement;
}}catch(B){}return A;};this.selectAllMetaTextNodes=function(D){var E=[];if(D.getElementsByName){var C=D.getElementsByTagName("meta");for(var B=0;B<C.length;B++){if(C[B].name!=null){var A=C[B].name;A=A.toLowerCase();if((A=="keywords")||(A=="description")){E[E.length]=C[B].content;}}}}return E;};this.selectTitleNodes=function(E){var F=[];
try{if(E.getElementsByName){var D;var B=E.getElementsByTagName("title");for(var A=0;A<B.length;A++){if(B[A].text){D=B[A].text;}else{if(B[A].textContent){D=B[A].textContent;}else{if(B[A].nodeValue){D=B[A].nodeValue;}}}F[F.length]=D;}}}catch(C){}return F;};this.computeTextGroupsForDocument=function(A,B){A.querywords=this.selectSERPQuery(B.location.href);
A.metawords=this.selectAllMetaTextNodes(B);A.titlewords=this.selectTitleNodes(B);return A;};this.computeTextGroupsForChild=function(A,C){var E;if(C&&C.nodeName=="IFRAME"){C=this.getIFrameDocumentRoot(C);}if(C&&C.firstChild&&this.isQualityNode(C)){var B=false;var D;if(C.nodeName=="A"){D=this.getTextFromNode(C);
if(D&&D.length>2){A.bodywords[A.bodywords.length]=D;}}else{B=this.isHighValueTag(C);for(E=C.firstChild;E!=null;E=E.nextSibling){if(E.nodeType==3){D=this.getTextFromNode(E);D=oz_trim(D.replace(/\s+/g," "));if(D.length>2){if(B){A.keywords[A.keywords.length]=D;}else{A.bodywords[A.bodywords.length]=D;}}}}}}return A;
};this.computeTextGroupsForNodes=function(A,B){var E;var D=new Date();if(B==null){return A;}for(var C=0;C<B.length;C++){E=B[C];this.computeTextGroupsForChild(A,E);if(((C%10)==0)&&(new Date().getTime()-D.getTime()>this.timeout)){break;}}return A;};this.computeTextGroupsForNodeAndDescendents=function(B,D){var E;
var F=new Date();if(D==null){return B;}this.computeTextGroupsForChild(B,D);E=D.getElementsByTagName("*");for(var C=0,A=E.length;C<A;C++){this.computeTextGroupsForChild(B,E.item(C));if(((C%10)==0)&&(new Date().getTime()-F.getTime()>this.timeout)){break;}}return B;};this.getPhrase=function(F,H,C){var E;
var A="";var D=0;var G=H;var B=H+C;if(B>F.length){B=F.length;}while(D<C&&H<B){E=F[H];if(this.ignore_map[E]||E.length==0){return null;}A+=E;D++;if(this.stopwords&&this.stopwords[A]){return null;}if(D<C){A+=" ";}H++;}if(D<C||A.length<1){return null;}else{if((C==1)&&(this.skip_map[A])||(A.length<4)){return"";
}}return A;};this.addPhrase=function(A,D,B){if(!D[A]){D[A]=B*2;}else{D[A]+=B*2;}if(A[A.length-1]=="s"){var C=A.replace(/[']?s$/,"");if(!D[C]){D[C]=B;}else{D[C]+=B;}}};this.buildIndexStructures=function(H,Y,L){var W;var V;var D;var T;var M;var C=2;var X=4;var G=20;var N=new Array();var E=new Object();
var U=new Array();var B=new Array();var I=new Array();var F=new Array();for(var R=0;R<C;R++){U[R]=new Object();B[R]=new Array();}for(var R=0,S=H.length;R<S;R++){if(((R%10)==0)&&(new Date().getTime()-Y.getTime()>this.timeout)){break;}W=H[R];if(!W){continue;}if(W.length<X){continue;}W=W.toLowerCase();V=W.split(/[\.\|\?,";!()\[\]{}]/);
for(var P=0;P<V.length;P++){var A=V[P];D=A.split(/[^\w']+/);for(var J=0;J<D.length;J++){for(var Q=0;(Q<D.length)&&(Q<C);Q++){M=this.getPhrase(D,J,Q+1);if(M&&M.length>0){this.addPhrase(M,U[Q],Q+1);}if(M==null){break;}}}}}for(var R=0;R<C;R++){var K=B[R];E=U[R];for(var O in E){if(!E.hasOwnProperty(O)||(E[O]<(L||4))){continue;
}K[K.length]=O;}K.sort(function(d,c){var e=E[c];var Z=E[d];return((e!=Z)?(e-Z):(c.length-d.length));});for(var Q=0;Q<K.length&&Q<G;Q++){var O;O=K[Q];I[I.length]={word:O,count:E[O]*(R+1)};}}for(var R=0;(R<(G*C))&&(R<I.length);R++){F[F.length]=I[R];}return F;};this.extractKeywordsFromDocument=function(G,C,A){var D=new Date();
var J=new Object();try{var I={bodywords:[],keywords:[],titlewords:[],metawords:[],querywords:[]};try{if(G){I=this.computeTextGroupsForDocument(I,G);}if(C){I=this.computeTextGroupsForNodeAndDescendents(I,C);}if(A){I=this.computeTextGroupsForNodes(I,A);}}catch(H){}var D=new Date();J.metawords=this.buildIndexStructures(I.metawords,D,1);
J.keywords=this.buildIndexStructures(I.keywords,D,1);J.titlewords=this.buildIndexStructures(I.titlewords,D,1);J.bodywords=this.buildIndexStructures(I.bodywords,D,4);var F=new Object();if(I.querywords.length>0){qwords=new Object();qwords.word=I.querywords;qwords.count=100;J.querywords=new Array();J.querywords[0]=qwords;
this.summarize(F,J.querywords,20);}this.summarize(F,J.bodywords,1);this.summarize(F,J.keywords,8);this.summarize(F,J.titlewords,10);this.summarize(F,J.metawords,5);J.summary=new Array();for(var B in F){if(!F.hasOwnProperty(B)){continue;}if(B){J.summary[J.summary.length]={word:B,count:F[B]};}}}catch(E){}J.summary.sort(function(L,K){return(K.count-L.count);
});return J;};this.summarize=function(C,B,A){for(var D=0;D<B.length;D++){if(C[B[D].word]){C[B[D].word]+=B[D].count*A;}else{C[B[D].word]=B[D].count*A;}}};this.xpath_childNodes=function(E,D,B,C){var G;if(!C){C=new Array();}var A=0;if(E.nodeName=="IFRAME"){E=this.getIFrameDocumentRoot(E);}D=D.toUpperCase();
for(G=E.firstChild;G!=null;G=G.nextSibling){var F;if((G.nodeType==1)&&(G.nodeName==D||D=="*")){A++;if(!B){C[C.length]=G;}else{if(B.index&&B.index==A){C[C.length]=G;}else{if(B.query){F=G.getAttribute(B.query.name);if(!F&&B.query.name=="class"){F=G.getAttribute("className");}if(F){F=oz_trim(F);}if(B.query.value==F){C[C.length]=G;
}}}}}}return C;};this.xpath_descendentNodes=function(E,D,I,H){var C;if(!H){H=new Array();}var F=0;D=D.toUpperCase();var A;var B;if(E.nodeName=="IFRAME"){E=this.getIFrameDocumentRoot(E);}A=E.getElementsByTagName(D);B=new Array();for(var G=0;G<A.length;G++){B[B.length]=A.item(G);}for(var G=0;G<B.length;
G++){var J;C=B[G];if((C.nodeType==1)&&(C.nodeName==D||D=="*")){F++;if(!I){H[H.length]=C;}else{if(I.index&&I.index==F){H[H.length]=C;}else{if(I.query){J=C.getAttribute(I.query.name);if(!J&&I.query.name=="class"){J=C.getAttribute("className");}if(J){J=oz_trim(J);}if(I.query.value==J){H[H.length]=C;}}}}}}return H;
};this.parseWhere=function(C){var A=null;try{if(C){A=new Object();if(C.indexOf("=")>0){A.query=new Object();A.query.name=C.split("@")[1].split("=")[0];A.query.value=C.split("@")[1].split("=")[1].split("'")[1];}else{A.index=new Number(C);}}}catch(B){}return A;};this.simpleXpath=function(H,J){var L;var M;
var N;var E;var I;var A;var B;var G=new Date();if(H==null){return null;}try{A=new Array();A[A.length]=H;var C=false;if(J.indexOf("//")==0){C=true;}L=J.split("/");var F=0;for(F=0;F<L.length;F++){M=L[F];if(M.length<1){continue;}E=M.split("[");N=E[0];I=null;if(E.length>1){I=this.parseWhere(E[1].split("]")[0]);
}B=new Array();if(C){B=this.xpath_descendentNodes(H,N,I,B);}else{for(var D=0;D<A.length;D++){B=this.xpath_childNodes(A[D],N,I,B);if(((D%40)==0)&&(new Date().getTime()-G.getTime()>this.timeout)){break;}}}C=false;A=B;}}catch(K){}return A;};this.addDescendents=function(B){var G;var E;var F;for(var D=0,A=B.length;
D<A;D++){F=B[D];G=F.getElementsByTagName("*");for(var C=0;C<G.length;C++){B[B.length]=G.item(C);}}return B;};this.getTopPhrasesFromDocument=function(K){var L=null;var E=new Date();if(this.domain_element_map){var H=this.domain_element_map;try{var F;var C;var B;var G;var J;if(J==null&&H.ids){for(var D=0;
D<H.ids.length;D++){J=K.getElementById(H.ids[D]);if(J!=null){break;}}}if(J==null&&H.id){J=K.getElementById(H.id);}if(J==null){J=K.documentElement;}B=H.xpaths;for(var D=0;D<B.length;D++){G=B[D];F=this.simpleXpath(J,G);if(F&&F.length==0){continue;}F=this.addDescendents(F);L=this.extractKeywordsFromDocument(K,null,F);
break;}}catch(I){}}if(!L){L=this.extractKeywordsFromDocument(K,K.documentElement);}var A=new Date();L.duration=(A.getTime()-E.getTime());return L;};this.getProfileFromDocument=function(P){var F=new Object();try{var C=false;if(this.domain_profile_pages&&this.domain_profile_pages.urls){for(var B in this.domain_profile_pages.urls){var L;
if(!this.domain_profile_pages.urls.hasOwnProperty(B)){continue;}L=this.domain_profile_pages.urls[B];if(L.test(P.location.href)){C=true;break;}}}if(C){F.oz_source="profile_page";if(typeof (oz_domain_profile_hook)=="function"){oz_domain_profile_hook(this,P,F);}for(var B in this.domain_profile_paths){var D;
var I;var K=null;var N=P.documentElement;if(!this.domain_profile_paths.hasOwnProperty(B)){continue;}D=this.domain_profile_paths[B];if(D.id){N=P.getElementById(D.id);}if(D.ignore){K=new RegExp(D.ignore);}for(var H=0;H<D.xpaths.length;H++){var Q;var O;try{I=this.simpleXpath(N,D.xpaths[H]);if(I&&I.length>0){if(D.name){var M;
var A;for(var G=0;G<I.length;G++){var B;M=this.simpleXpath(I[G],D.name);Q=this.simpleXpath(I[G],D.value);if(M.length>0){B=this.getTextFromNode(M[0]);if(B){A=B.replace(/^\W+|\W+$/,"").replace(/\W+/g,"_").toLowerCase();F[A]=this.getTextFromNode(Q[0]);}}}}else{Q=new Array();for(var G=0;G<I.length;G++){O=this.getTextFromNode(I[G]);
if((O&&O.length>0)&&(!K||!O.match(K))){Q[Q.length]=O;}}if(Q.length>0){F[B]=Q;}}}}catch(J){}}}}else{if(typeof (oz_domain_profile_hook)=="function"){F.oz_source="pageview";oz_domain_profile_hook(this,P,F);}}}catch(J){}var E=false;for(var B in F){if(!F.hasOwnProperty(B)){continue;}if(B.indexOf("oz_")<0){E=true;
break;}}if(!E){F=null;}return F;};this.arrayMerge=function(F,E){var A=new Array();var B=new Array();for(var C=0;C<F.length;C++){B[F[C]]=F[C];}for(var C=0;C<E.length;C++){B[E[C]]=E[C];}for(var D in B){if(!B.hasOwnProperty(D)){continue;}A[A.length]=D;}return A;};this.addScript=function(B,C){var A;A=this.doc.createElement("script");
if(C){A.setAttribute("id",C);}A.setAttribute("type","text/javascript");B=B.replace(/\s/g,"+");A.setAttribute("src",B);this.doc.getElementsByTagName("head").item(0).appendChild(A);};this.ignore_map=new Object();this.domain_ignore_map=new Object();this.skip_map=new Object();this.ignore_map={"a":1,"about":1,"above":1,"advanced":1,"advertise":1,"after":1,"again":1,"against":1,"all":1,"am":1,"an":1,"and":1,"any":1,"are":1,"aren't":1,"as":1,"at":1,"automatically":1,"automatically deleted":1,"based":1,"be":1,"because":1,"been":1,"before":1,"being":1,"below":1,"between":1,"blog entries":1,"both":1,"but":1,"by":1,"cannot":1,"can't":1,"change":1,"change skin":1,"contact":1,"contact admin":1,"conversation":1,"could":1,"couldn't":1,"dark":1,"dark blue":1,"delete":1,"did":1,"didn't":1,"do":1,"does":1,"doesn't":1,"doing":1,"don't":1,"down":1,"during":1,"each":1,"edit":1,"edit profile":1,"entries":1,"entry":1,"entry posted":1,"female":1,"few":1,"folders":1,"for":1,"forum":1,"forum guide":1,"forum rules":1,"forums":1,"friend":1,"from":1,"further":1,"gallery":1,"general":1,"girl":1,"guy":1,"had":1,"hadn't":1,"has":1,"hasn't":1,"have":1,"haven't":1,"having":1,"he":1,"he'd":1,"he'll":1,"her":1,"here":1,"here's":1,"hers":1,"herself":1,"he's":1,"him":1,"himself":1,"his":1,"home":1,"how":1,"how's":1,"i":1,"i'd":1,"if":1,"ignore":1,"ignore list":1,"ignore user":1,"i'll":1,"i'm":1,"in":1,"into":1,"is":1,"isn't":1,"it":1,"it's":1,"its":1,"itself":1,"i've":1,"let's":1,"like":1,"ll":1,"male":1,"manage folders":1,"me":1,"message":1,"message list":1,"messages":1,"more":1,"most":1,"mustn't":1,"my":1,"myself":1,"no":1,"nor":1,"not":1,"of":1,"off":1,"on":1,"once":1,"online":1,"only":1,"or":1,"oral":1,"originally posted":1,"other":1,"ought":1,"our":1,"ours":1,"ourselves":1,"out":1,"over":1,"own":1,"page":1,"personalize category":1,"pictures":1,"pictures nexopia":1,"plus":1,"policy":1,"posts":1,"previous":1,"privacy":1,"privacy policy":1,"profile":1,"profile pictures":1,"public":1,"quote":1,"rather":1,"re":1,"recent visitors":1,"replied":1,"replies":1,"reply":1,"report":1,"report abuse":1,"reserved":1,"rights reserved":1,"same":1,"send":1,"send message":1,"sent items":1,"sex":1,"shan't":1,"she":1,"she'd":1,"she'll":1,"she's":1,"should":1,"shouldn't":1,"show":1,"show list":1,"single user":1,"single users":1,"so":1,"some":1,"sponsor":1,"subject":1,"subscribe":1,"subscriptions":1,"such":1,"than":1,"that":1,"that's":1,"the":1,"their":1,"theirs":1,"them":1,"themselves":1,"then":1,"there":1,"there's":1,"these":1,"they":1,"they'd":1,"they'll":1,"they're":1,"they've":1,"this":1,"those":1,"thread":1,"through":1,"to":1,"too":1,"topic":1,"under":1,"unread":1,"unread post":1,"unread posts":1,"until":1,"up":1,"username":1,"user search":1,"ve":1,"very":1,"view":1,"view blog":1,"vs":1,"was":1,"wasn't":1,"we":1,"we'd":1,"we'll":1,"well":1,"we're":1,"were":1,"weren't":1,"we've":1,"what":1,"what's":1,"when":1,"when's":1,"where":1,"where's":1,"which":1,"while":1,"who":1,"whom":1,"who's":1,"why":1,"why's":1,"with":1,"won't":1,"would":1,"wouldn't":1,"write message":1,"you":1,"you'd":1,"you'll":1,"your":1,"you're":1,"yours":1,"yourself":1,"yourselves":1,"you've":1,"http":1,"www":1,"com":1,"org":1,"nbsp":1,"net":1,"peek":1,"foreach":1,"monday":1,"tuesday":1,"wednesday":1,"thursday":1,"friday":1,"saturday":1,"sunday":1,"january":1,"february":1,"march":1,"april":1,"may":1,"june":1,"july":1,"august":1,"september":1,"october":1,"november":1,"december":1,"mon":1,"tues":1,"tue":1,"wed":1,"thurs":1,"thu":1,"fri":1,"sat":1,"sun":1,"jan":1,"feb":1,"mar":1,"apr":1,"may":1,"jun":1,"jul":1,"aug":1,"sept":1,"oct":1,"nov":1,"dec":1,"1999":1,"2000":1,"2001":1,"2002":1,"2003":1,"2004":1,"2005":1,"2006":1,"2007":1,"2008":1,"2009":1,"2010":1};
this.skip_map={"good":1,"study":1,"about":1,"search":1,"will":1,"user":1,"users":1,"engine":1,"engines":1,"comment":1,"comments":1,"link":1,"links":1,"post":1,"systems":1,"system":1,"results":1,"just":1,"etc":1,"found":1,"also":1,"many":1,"every":1,"tell":1,"never":1,"even":1,"bet":1,"buy":1,"city":1,"etc":1,"friends":1,"kid":1,"knowledge":1,"lan":1,"list":1,"live":1,"local":1,"looking":1,"make":1,"maybe":1,"media":1,"more":1,"mouse":1,"moves":1,"none":1,"one":1,"option":1,"oral":1,"own":1,"past":1,"read":1,"really":1,"seeking":1,"girlfriend":1,"study":1,"top":1,"touch":1,"truth":1,"understanding":1,"walks":1,"posted":1,"rules":1,"idea":1,"history":1};
}

