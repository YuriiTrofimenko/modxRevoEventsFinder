(function($){

  	$('.sidenav').sidenav();
	$('.collapsible').collapsible();

    $('.button-collapse').sidenav();
    
    $('form#event-types-filter input').change(function() {

	    if(this.checked) {
	        
	    	$.ajax({
	            url: "/events-ajax",
	            type: "POST",
	            data: { 
	                'type': this.id
	                , 'date': ''
	            },
	            cache : false
	        }).done(function(data) {
	            
	            //помещаем на веб-страницу
	            $('#events-container').html(data);
	        });
	    }
	});
})(jQuery);