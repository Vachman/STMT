// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function update_url(field){
	if ($(field).attr('update_url') !== undefined) {
		return $(field).attr('update_url')+'/'
	} 
	else {
		return ''
	}	
}
function editable(){
	$(".edit_textfield").each( function(i) {
	  $(this).editable(  update_url(this)+"update", {
	         type      : 'text',
	         rows      : 8,
	         name : $(this).attr('name'),
			 width:($(this).width() + 200) + "px",
	         cancel    : '',
	         submit    : '',
	         indicator : "<img src='../images/loading.gif' />",
	         tooltip   : 'Click to edit...'
	     })
	 });
}

jQuery(document).ready(function($) {
	editable();
});

