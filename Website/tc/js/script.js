$(function() {
	$('.nav-lang').click(function() {
		window.location.href =
			(window.location.href.indexOf('/en/') > -1) ?
			window.location.href.replace('/en/', '/tc/') :
			window.location.href.replace('/tc/', '/en/') ;
	});
		
	$('.nav-text').click(function() {
		var id = $(this).attr('id');
		var percent = 100;
		switch (id.substr(id.length - 1)) {
			case '1': percent = 70; break;
			case '2': percent = 100; break;
			case '3': percent = 130; break;
		}
		$('p').each(function() {
			$(this).css('font-size', percent + '%');
		});
		$('.nav-text').removeClass('active');
		$(this).addClass('active');
	});
});