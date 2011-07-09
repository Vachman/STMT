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
	
	
	// Select organisation
	$('.organisation').click(function(){
		$('.organisation').removeClass("selected");
		$(this).addClass("selected");
	})
	
});