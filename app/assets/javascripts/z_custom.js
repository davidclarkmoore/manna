

$( document ).ready(function() {

	var editor = new MediumEditor('.editable');

	$( "li.current-user-link" ).click(function() {
	  $( "div.drop" ).toggleClass( "show" );
	});

});

