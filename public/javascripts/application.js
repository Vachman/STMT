// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults


jQuery(document).ready(function($) {

$(".edit_textfield").each( function(i) {
  $(this).editable("update", {
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
});

