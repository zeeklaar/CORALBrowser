   �      (http://dontbubble.us/common/js/script.js     %{���     %z�墈              �      
     O K      Server   nginx   Date   Tue, 02 Jul 2013 17:29:15 GMT   Content-Type   'application/x-javascript; charset=UTF-8   Last-Modified   Wed, 16 Jan 2013 18:09:41 GMT   Expires   Wed, 03 Jul 2013 17:29:15 GMT   Cache-Control   max-age=86400   X-DuckDuckGo-Locale   en_US   Content-Encoding   gzip var fieldnum = 2;
			
$('#addfriend').click(function() {	
	var newfield = ' 		<div id="friend' + fieldnum + '"><input type="email" placeholder="Your Other Friend&apos;s Email" name="FriendEmail' + fieldnum + '" /></div>';
	$('#friendemails').append(newfield);
	$('#fieldnums').val(fieldnum);
	$('.text').addPlaceholder();
	$('#share-email').css({'margin-top' : '-' + fieldnum + 'em', });
	fieldnum++;
	if ($('#remfriend').hasClass('hide') == true) {		
		$('#remfriend').removeClass('hide');
	}	
});
$('#remfriend').click(function() {		
	fieldnum--;
	$('#share-email').css({'margin-top' : '-' + fieldnum + 'em', });
	$('#fieldnums').val(fieldnum - 1);
	$('#friend' + fieldnum).remove();
	if (fieldnum  == 2 ) {
		$('#remfriend').addClass('hide');
		$('#fieldnums').val('1');
		$('#share-email').css({'margin-top' : '0', });
	}		
});

function ddgsearchboxsize() {	
	var width = $('#ddg-home-logo').width() - 62;	
	$('#ddg-search-box').attr('src','http://duckduckgo.com/search.html?width='+width+'&prefill=Search DuckDuckGo');
	$('#ddg-search-box').css('width',width + 62);
}

$(window).resize(function() {
	ddgsearchboxsize();
});

$(window).load(function() {
	ddgsearchboxsize();
});

$(document).ready(function() {	
	$('.text').addPlaceholder(); 
	$('#lang-select').click(function() {
		if ($('#lang-select ul').hasClass('hide') == true) {		
			$('#lang-select ul').removeClass('hide');
		}
		else $('#lang-select ul').addClass('hide');
	});
});
