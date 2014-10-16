$(function(){
	var query = window.location.search.substring(1);
	var vars = query.split("&");
	for(var i = 0; i < vars.length; i++){
	   var pair = vars[i].split("=");
	   
	   if(pair[0] == 'form'){
	   	$('.alert').css({'display' : 'block'});
	   }
	}

	$('#btn-sendmessage').click(function(e){
		console.log('boom');
		e.preventDefault();
		var email_regex = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
		var name = $('#name').val();
		var email = $('#email').val();
		var message = $('#msg').val();
		if(email_regex.test(email) && name && message){
		  $('#contact-form').submit();
		}
	});
});