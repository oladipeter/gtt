$(document).ready(function(){

	$("#pageflip").hover(function() {
		$("#pageflip img , .msg_block").stop()
			.animate({
				width: '307px', 
				height: '319px'
			}, 200); 
		} , function() {
		$("#pageflip img").stop() 
			.animate({
				width: '50px', 
				height: '52px'
			}, 220);
		$(".msg_block").stop() 
			.animate({
				width: '50px', 
				height: '50px'
			}, 200);
	});

	
});