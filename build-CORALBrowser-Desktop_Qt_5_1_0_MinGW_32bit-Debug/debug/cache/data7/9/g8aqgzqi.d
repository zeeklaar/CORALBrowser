   �      %http://rt.liftdna.com/rtbcomponent.js�       �����     %y_.�         
     O K           �      Server   Apache   ETag   -"29b130524462a7106f4768cef5337e79:1323284929"   Last-Modified   Wed, 07 Dec 2011 18:57:15 GMT   Accept-Ranges   bytes   Content-Type   application/x-javascript   Vary   Accept-Encoding   Content-Encoding   gzip   Date   Mon, 01 Jul 2013 13:26:46 GMT var isIE  = (navigator.appVersion.indexOf("MSIE") != -1) ? true : false;
var isWin = (navigator.appVersion.toLowerCase().indexOf("win") != -1) ? true : false;
var isOpera = (navigator.userAgent.indexOf("Opera") != -1) ? true : false;

function ControlVersion()
{
	var version;
	var axo;
	var e;

	// NOTE : new ActiveXObject(strFoo) throws an exception if strFoo isn't in the registry

	try {
		// version will be set for 7.X or greater players
		axo = new ActiveXObject("ShockwaveFlash.ShockwaveFlash.7");
		version = axo.GetVariable("$version");
	} catch (e) {
	}

	if (!version)
	{
		try {
			// version will be set for 6.X players only
			axo = new ActiveXObject("ShockwaveFlash.ShockwaveFlash.6");
			
			// installed player is some revision of 6.0
			// GetVariable("$version") crashes for versions 6.0.22 through 6.0.29,
			// so we have to be careful. 
			
			// default to the first public version
			version = "WIN 6,0,21,0";

			// throws if AllowScripAccess does not exist (introduced in 6.0r47)		
			axo.AllowScriptAccess = "always";

			// safe to call for 6.0r47 or greater
			version = axo.GetVariable("$version");

		} catch (e) {
		}
	}

	if (!version)
	{
		try {
			// version will be set for 4.X or 5.X player
			axo = new ActiveXObject("ShockwaveFlash.ShockwaveFlash.3");
			version = axo.GetVariable("$version");
		} catch (e) {
		}
	}

	if (!version)
	{
		try {
			// version will be set for 3.X player
			axo = new ActiveXObject("ShockwaveFlash.ShockwaveFlash.3");
			version = "WIN 3,0,18,0";
		} catch (e) {
		}
	}

	if (!version)
	{
		try {
			// version will be set for 2.X player
			axo = new ActiveXObject("ShockwaveFlash.ShockwaveFlash");
			version = "WIN 2,0,0,11";
		} catch (e) {
			version = -1;
		}
	}
	
	return version;
}

// JavaScript helper required to detect Flash Player PlugIn version information
function GetSwfVer(){
	// NS/Opera version >= 3 check for Flash plugin in plugin array
	var flashVer = -1;
	
	if (navigator.plugins != null && navigator.plugins.length > 0) {
		if (navigator.plugins["Shockwave Flash 2.0"] || navigator.plugins["Shockwave Flash"]) {
			var swVer2 = navigator.plugins["Shockwave Flash 2.0"] ? " 2.0" : "";
			var flashDescription = navigator.plugins["Shockwave Flash" + swVer2].description;
			var descArray = flashDescription.split(" ");
			var tempArrayMajor = descArray[2].split(".");			
			var versionMajor = tempArrayMajor[0];
			var versionMinor = tempArrayMajor[1];
			var versionRevision = descArray[3];
			if (versionRevision == "") {
				versionRevision = descArray[4];
			}
			if (versionRevision[0] == "d") {
				versionRevision = versionRevision.substring(1);
			} else if (versionRevision[0] == "r") {
				versionRevision = versionRevision.substring(1);
				if (versionRevision.indexOf("d") > 0) {
					versionRevision = versionRevision.substring(0, versionRevision.indexOf("d"));
				}
			}
			var flashVer = versionMajor + "." + versionMinor + "." + versionRevision;
		}
	}
	// MSN/WebTV 2.6 supports Flash 4
	else if (navigator.userAgent.toLowerCase().indexOf("webtv/2.6") != -1) flashVer = 4;
	// WebTV 2.5 supports Flash 3
	else if (navigator.userAgent.toLowerCase().indexOf("webtv/2.5") != -1) flashVer = 3;
	// older WebTV supports Flash 2
	else if (navigator.userAgent.toLowerCase().indexOf("webtv") != -1) flashVer = 2;
	else if ( isIE && isWin && !isOpera ) {
		flashVer = ControlVersion();
	}	
	return flashVer;
}
var LD_MemberID = 0;
var LD_AdSlots = [];
var LD_age = 0;
var LD_gender;
function LD_SetMember(member_id) {
LD_MemberID = member_id;
}
function LD_AddTinyTag(code) {
LD_AdSlots.push(code);
}
function LD_SetAge(age) {
LD_age = age;
}
function LD_SetAgeByBirthYear(age) {
LD_age = age;
}
function LD_SetAgeRange(age_range) {
LD_age = age_range;
}
function LD_SetGender(gender) {
LD_gender = gender;
}
function LD_AddCustomAttr(name, value) {
}
function LD_RunAuction() {
LD_flash_version = GetSwfVer();
if (LD_flash_version == -1) {
LD_flash = 0;
} else {
LD_flash = 1;
}
document.write("<script type='text/javascript' src='");
document.write("http://gam.adnxs.com/gtj?member="+LD_MemberID+"&inv_codes="+LD_AdSlots);
if (top==self) {
document.write("&within_iframe=0");
} else {
document.write("&within_iframe=1");
}
if (LD_flash_version == -1) {
document.write("&flash=0");
} else {
document.write("&flash=1");
}
if ((LD_age != undefined) && (LD_age != 0)) {
document.write("&age="+LD_age);
}
if ((LD_gender != undefined) && (LD_gender != "")) {
document.write("&gender="+LD_gender);
}
document.write ("&referrer=" + escape(window.location));
document.write("'></sc");
document.write("ript>");
}
