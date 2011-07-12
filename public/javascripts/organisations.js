$(function() {
	
	// Init a organisation table
	var oTable = $('.organisations-table').dataTable({
			"bJQueryUI": false,
			"bPaginate": false,
			"bInfo": false,
			"bFilter": false,
			"bSort": false,
			"bLengthChange": false,
			"sScrollY": "440px",
			"sStripOdd": "AA",
			"sStripEven": "BB"
	});		
});



$(function() {
	
	// Select organisation
	$('.organisation').click(function(){
		$('.organisation').removeClass("selected");
		$(this).addClass("selected");
	});
	
	// DoubleClick to organisation
	$('.organisation').dblclick(function(){
		
		//$.post($(this).first().find("a").attr("href"), function(data) {
		  //alert(data)
		//});
		
		window.location = $(this).first().find("a").attr("href")
	});
	
});
