(function($){

    var autocompleteItems = {};

    var onAutocompleteCallback = function(){

        $('#events-container').html('<div class="preloader-wrapper big active"> <div class="spinner-layer spinner-green-only"> <div class="circle-clipper left"> <div class="circle"></div> </div><div class="gap-patch"> <div class="circle"></div> </div><div class="circle-clipper right"> <div class="circle"></div> </div> </div> </div>');
        $.ajax({
            url: "/events-ajax",
            type: "POST",
            data: {
                //'type': this.id
                'action': 'fetch-events-by-title'
                , 'title': $('input#search').val()
            },
            cache : false
        }).done(function(data) {
            
            //помещаем на веб-страницу
            $('#events-container').html(data);
        });
    }

    //autocomplete
    $('input.autocomplete').autocomplete({
        data: autocompleteItems
        , onAutocomplete: 
    });

    var eventsSearchAutocomplete = M.Autocomplete.getInstance($('input.autocomplete'));

    console.dir(eventsSearchAutocomplete);

    $.ajax({
        url: "/events-ajax",
        type: "POST",
        data: {
            'action': 'fetch-enents-titles'
        },
        cache : false
    }).done(function(newAutocompleteItems) {
        
        
        console.log(newAutocompleteItems);
        eventsSearchAutocomplete.updateData(JSON.parse(newAutocompleteItems));
    });

	//Добавляем к стандартному типу Дата функцию коррекции даты по часовому поясу
    Date.prototype.toDateInputValue = (function() {
        var local = new Date(this);
        local.setMinutes(this.getMinutes() - this.getTimezoneOffset());
        return local.toJSON().slice(0,10);
    });

    //Форматирование даты, в которой год, месяц и день изначально переставлены местами
    function formatDate(date){

        //Разрезаем строку даты на массив из трех елементов
        var pieces = date.split('-');
        //Меняем элементы местами
        pieces.reverse();
        //Склеиваем строку даты из массива
        var reversed = pieces.join('-');
        return reversed;
    }

	//активация панели фильтра
  	$('.sidenav').sidenav();
  	//активация выпадающих списков в панели фильтра
	$('.collapsible').collapsible();
	//активация мобильной версии главного меню
    $('.button-collapse').sidenav();
    //активация выбора даты в фильтре
    $('.datepicker').datepicker({
    	'format':'dd-mm-yyyy'
    	//, 'defaultDate':formatDate(new Date().toDateInputValue())
    	, 'setDefaultDate':true
    	, 'autoClose':true
    });

    $('.datepicker').val(formatDate(new Date().toDateInputValue()));

    var doFilter = function(){

    	$('#events-container').html('<div class="preloader-wrapper big active"> <div class="spinner-layer spinner-green-only"> <div class="circle-clipper left"> <div class="circle"></div> </div><div class="gap-patch"> <div class="circle"></div> </div><div class="circle-clipper right"> <div class="circle"></div> </div> </div> </div>');
    	$.ajax({
            url: "/events-ajax",
            type: "POST",
            data: {
                //'type': this.id
                'action': 'fetch-filtered-events'
                , 'type': $('form#event-types-filter input[type=radio]:checked').attr('id')
                , 'date': $('.datepicker').val()
            },
            cache : false
        }).done(function(data) {
            
            //помещаем на веб-страницу
            $('#events-container').html(data);
        });
    }


	//обработчик выбора одного из чекбоксов фильтра по типу события	
	$('form#event-types-filter input[type=radio]').change(function() {

	    if(this.checked) {

	    	doFilter();
	    }
	});
    
    $('.datepicker').change(function() {

	    doFilter();
	});
})(jQuery);