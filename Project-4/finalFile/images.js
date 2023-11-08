$(document).ready(function() {
	
	$("#image_list a").click(function(evt) {
	
		var imageURL = $(this).attr("href");
		$(this).fadeOut(1000,
			function() {
				$(this).fadeIn(1000)
			});
		evt.preventDefault();
	});

});

