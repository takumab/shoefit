$(document).ready(function() {
	setTimeout(function(){
		$('#alert').fadeOut("slow", function(){
			$(this).remove();
		})
	}, 4500);
});