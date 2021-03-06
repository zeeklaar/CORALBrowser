   �      #http://fixtracking.com/js/addons.js     %{��p�     %{N t9�              �      
     O K      Server   nginx   Date   Tue, 02 Jul 2013 17:31:06 GMT   Content-Type   'application/x-javascript; charset=UTF-8   Last-Modified   Mon, 15 Apr 2013 02:06:57 GMT   Expires   Tue, 02 Jul 2013 17:32:06 GMT   Cache-Control   
max-age=60   Content-Encoding   gzip $(document).ready(function(){
	initTabs();
	iconTabs();
	browserswap();
	browserdetect();
	
	$('#browser_swap_trigger').bind('click',function(e) {
		e.preventDefault();	
		browsermenutoggle()
	});
	
});

function browserdetect() {
	var agent,label;
    agent=navigator.userAgent.toLowerCase();
    
    if(/ipad/.test(agent)) label='iPad';
    else if (/android/.test(agent)) label='Android';
    else if (/chrome/.test(agent)) label='Chrome';
    else if (/fennec/.test(agent)) label='Fennec';
    else if (/seamonkey/.test(agent)) label='SeaMonkey';
    else if (/iceape/.test(agent)) label='Iceape';
    else if (/maxthon/.test(agent)) label='Maxthon';
    else if (/epiphany/.test(agent)) label='Epiphany';
    else if (/firefox/.test(agent)) label='Firefox';
    else if (/uzbl/.test(agent)) label='Uzbl';
    else if (/msie/.test(agent)) label='IE';
    else if (/opera/.test(agent)) label='Opera';
    else if(/iphone/.test(agent)) label='iPhone';
    else if(/arora/.test(agent)) label='Arora';
    else if(/safari/.test(agent)) label='Safari';
    else{label='Browser'};
	
	if (label=='Firefox') {
		$('#pg-addons').removeClass('unknown');
		$('#pg-addons').addClass('firefox');
		$('#browserMenu .firefox').parent().addClass('active');
	} else if (label=='Chrome') {
		$('#pg-addons').removeClass('unknown');
		$('#pg-addons').addClass('chrome');
		$('#browserMenu .chrome').parent().addClass('active');
	} else if (label=='IE') {
		$('#pg-addons').removeClass('unknown');
		$('#pg-addons').addClass('msie');
		$('#browserMenu .ie').parent().addClass('active');
	} else if (label=='Safari') {
		$('#pg-addons').removeClass('unknown');
		$('#pg-addons').addClass('safari');
		$('#browserMenu .safari').parent().addClass('active');
	} else if (label=='Opera') {
		$('#pg-addons').removeClass('unknown');
		$('#pg-addons').addClass('opera');
		$('#browserMenu .opera').parent().addClass('active');
	}
}

function browsernext() {
	$('#browserMenu a').removeClass('active');
	
	if ($('#pg-addons').hasClass("chrome")) {
		$('#pg-addons').removeClass('chrome');
		$('#pg-addons').addClass('firefox');
	}
	else if ($('#pg-addons').hasClass("firefox")) {
		$('#pg-addons').removeClass('firefox');
		$('#pg-addons').addClass('safari');
	}
	else if ($('#pg-addons').hasClass("safari")) {
		$('#pg-addons').removeClass('safari');
		$('#pg-addons').addClass('opera');
	}
	else if ($('#pg-addons').hasClass("opera")) {
		$('#pg-addons').removeClass('opera');
		$('#pg-addons').addClass('msie');
	}
	else if ($('#pg-addons').hasClass("msie")) {
		$('#pg-addons').removeClass('msie');
		$('#pg-addons').addClass('chrome');
	}
	else {
		$('#pg-addons').removeClass('unknown');
		$('#pg-addons').addClass('chrome');
	}
}

function browserprev() {
	$('#browserMenu a').removeClass('active');	
	
	if ($('#pg-addons').hasClass("chrome")) {
		$('#pg-addons').removeClass('chrome');
		$('#pg-addons').addClass('msie');		
	}
	else if ($('#pg-addons').hasClass("firefox")) {
		$('#pg-addons').removeClass('firefox');
		$('#pg-addons').addClass('chrome');
	}
	else if ($('#pg-addons').hasClass("safari")) {
		$('#pg-addons').removeClass('safari');
		$('#pg-addons').addClass('firefox');
	}
	else if ($('#pg-addons').hasClass("opera")) {
		$('#pg-addons').removeClass('opera');
		$('#pg-addons').addClass('safari');
	}
	else if ($('#pg-addons').hasClass("msie")) {
		$('#pg-addons').removeClass('msie');
		$('#pg-addons').addClass('opera');
	}
	else {
		$('#pg-addons').removeClass('unknown');
		$('#pg-addons').addClass('chrome');
	}
}


function browsermenutoggle() {
	if ($('#browserMenu').hasClass("active") == false) {
	  $('#browserMenu').addClass("active");
	} else {
	  $('#browserMenu').removeClass("active");
	}
	
}
function browserswap() {	
	$('.switch_browser a').bind('click',function(e) {
		e.preventDefault();
		var thref = $(this).attr("href").replace(/#/, '');
		$('.modal.switch_browser a').removeClass('active');	
		$('#pg-addons').removeClass('unknown');
		$('#pg-addons').removeClass('firefox');
		$('#pg-addons').removeClass('chrome');
		$('#pg-addons').removeClass('msie');
		$('#pg-addons').removeClass('safari');
		$('#pg-addons').removeClass('opera');
		$('#pg-addons').addClass(thref);		
		if($(this).parent().hasClass('modal') == true){
			$(this).addClass('active');
			browsermenutoggle();
		}		
	});

	$('.swap.left').bind('click',function() {
		browserprev();
	});
	$('.swap.right').bind('click',function() {
		browsernext();
	});
}
function initTabs() {
	$('#tabMenu a').bind('click',function(e) {
		e.preventDefault();
		var thref = $(this).attr("href").replace(/#/, '');
		$('#tabMenu a').removeClass('active');
		$(this).addClass('active');
		$('#tabContent div.content').removeClass('active');
		$('#'+thref).addClass('active');
	});
}
function iconTabs() {
	$('.icon').bind('click',function(e) {
		var thref = $(this).attr("rel").replace(/#/, '');
		$('#tabMenu a').removeClass('active');
		$('#tabMenu a.'+thref).addClass('active');
		$('#tabContent div.content').removeClass('active');
		$('#'+thref).addClass('active');
	});
}