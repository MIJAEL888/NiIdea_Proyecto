//------------- forms-validation.js -------------//
$(document).ready(function() {

	
	//------------- Select 2 -------------//
	$('.select2').select2({placeholder: 'Select state'});

	//------------- File input styling -------------//
    $(":file").not('.unstyled').filestyle();

    //------------- Form validation -------------//
	$("#validate").validate({
		ignore: null,
		ignore: 'input[type="hidden"]',
		errorPlacement: function( error, element ) {
			var place = element.closest('.input-group');
			if (!place.get(0)) {
				place = element;
			}
			if (place.get(0).type === 'checkbox') {
				place = element.parent();
			}
			if (error.text() !== '') {
				place.after(error);
			}
		},
		errorClass: 'help-block',
		rules: {
			email: {
				required: true,
				email: true
			},
			select2: "required",
			password: {
				required: true,
				minlength: 5
			},
			textarea: {
				required: true,
				minlength: 10
			},
			maxLenght: {
				required: true,
	  			maxlength: 10
			},
			rangelenght: {
		      required: true,
		      rangelength: [10, 20]
		    },
		    url: {
		      required: true,
		      url: true
		    },
		    range: {
		      required: true,
		      range: [5, 10]
		    },
		    minval: {
		      required: true,
		      min: 13
		    },
		    maxval: {
		      required: true,
		      max: 13
		    },
		    date: {
		      required: true,
		      date: true
		    },
		    number: {
		      required: true,
		      number: true
		    },
		    digits: {
		      required: true,
		      digits: true
		    },
		    ccard: {
		      required: true,
		      creditcard: true
		    },
			agree: "required"
		},
		messages: {
			password: {
				required: "Please provide a password",
				minlength: "Your password must be at least 5 characters long"
			},
			agree: "Please accept our policy",
			textarea: "Write some info for you",
			select2: "Please select something"
		},
		highlight: function( label ) {
			$(label).closest('.form-group').removeClass('has-success').addClass('has-error');
		},
		success: function( label ) {
			$(label).closest('.form-group').removeClass('has-error');
			label.remove();
		}
	});
	
        
        //------------- Ajax table deferred load -------------//
	
		//responsive datatables
	$('#responsive-datatables').dataTable({
		"oLanguage": {
		    "sSearch": "",
		    "sLengthMenu": "<span>_MENU_</span>"
		},
		"sDom": "<'row'<'col-md-6 col-xs-12 'l><'col-md-6 col-xs-12'f>r>t<'row'<'col-md-4 col-xs-12'i><'col-md-8 col-xs-12'p>>"
	});
        
});

function actualizaProyecto(ui){
    $.ajax({
        url: "getMonitoring",
        global: false,
        type: "GET",
        data: ({idProyecto:$(ui).val()}),
        dataType: "html",
        success: function(data){
           $('#contenido1').html(data);
        }
    });
}

function agregarMonitoreo(id){
    $.ajax({
        url: "getFormMonitoring",
        global: false,
        type: "GET",
        data: ({idProyecto:id}),
        dataType: "html",
        success: function(data){
            $('#contentMonit').html(data);
            $('#myModal2').modal('show')
            
        }
    });
}
