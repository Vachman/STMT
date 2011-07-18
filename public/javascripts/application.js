// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function update_url(field){
	if ($(field).attr('update_url') !== undefined) {
		return $(field).attr('update_url')+'/update'
	} 
	else {
		return "update"
	}	
}

function editable_field(field){
	$(field).editable( update_url(field),{
	         type      : 'text',
	         rows      : 8,
	         name : $(field).attr('name'),
			 width: ($(field).width() + 100) + "px",
	         cancel    : '',
	         submit    : '',
	         indicator : "<img src='../images/loading.gif' />",
	         tooltip   : 'Click to edit...'
	 });
}

