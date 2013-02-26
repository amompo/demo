$(function() {
    // find all flip elements
	var flippers = $('.turnable .overlay.flip');

	// add click handler to each flip element
	flippers.click(function(event) {
		// go 2 steps up to find box element
	   var box = $(this).parent().parent();
	   var side = box.find('.side');
	   var status_indicator = box.find('.status.indicator');
	     				
	   side.toggleClass('hide');
	   status_indicator.toggleClass('hide');
       event.stopPropagation();
	});

    $('.property.manage').click(function(event) {
        var box = $(this);
        var id = box.data('property-id');
        console.log('property id', id);
        window.location = '/properties/' + id;
        // $.load('properties/' + id);
    });
});			
