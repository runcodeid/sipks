$('div.notifikasi').show(function(){
    notifMessage = $(this).data('notifikasi');
    $.notify({
        icon: "ni ni-bell-55",
        title: notifMessage,
        message: "",
        url: ""
    }, {
        element: "body",
        type: "success",
        allow_dismiss: true,
        placement: {
            from: "top",
            align: "center"
        },
        offset: {
            x: 15,
            y: 15
        },
        spacing: 10,
        z_index: 1080,
        delay: 3000,
        timer: 1000,
        url_target: "_blank",
        mouse_over: !1,
        animate: {
            enter: "animated fadeInDown",
            exit: "animated fadeOutUp"
        },
        template: '<div data-notify="container" class="alert alert-dismissible alert-{0} alert-notify" role="alert"><span class="alert-icon" data-notify="icon"></span> <div class="alert-text"</div> <span class="alert-title" data-notify="title">{1}</span> <span data-notify="message">{2}</span></div><button type="button" class="close" data-notify="dismiss" aria-label="Close"><span aria-hidden="true">&times;</span></button></div>'
    });
    $(this).hide();
});

//Custom Input File
var inputs = document.querySelectorAll( '.custom-file-input' );
Array.prototype.forEach.call( inputs, function( input )
{
	var label	 = input.nextElementSibling,
		labelVal = label.innerHTML;

	input.addEventListener( 'change', function( e )
	{
		var fileName = '';
		if( this.files && this.files.length > 1 )
			fileName = ( this.getAttribute( 'data-multiple-caption' ) || '' ).replace( '{count}', this.files.length );
		else
			fileName = e.target.value.split('\\').pop();

		if( fileName )
			label.innerHTML = fileName;
		else
			label.innerHTML = labelVal;
	});
});
