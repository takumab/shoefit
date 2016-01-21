$(document).ready(function() {
	setTimeout(function(){
		$('#alert, #notice_wrapper').fadeOut("slow", function(){
			$(this).remove();
		})
	}, 4500);
});