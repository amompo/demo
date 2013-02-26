$(function() {
	// Clear textarea default text when it gets focus (fx by click or tab)
	$('textarea#message').focus(function() {
		var item = $(this);
		var text = item.text();
		if (text == 'Write your description here...') {
			item.text('');
		}
	});
});
