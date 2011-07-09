$(function() {
	
	// Init a Doing table
	var oTable = $('.doings-table').dataTable({
			"bJQueryUI": false,
			"bPaginate": false,
			"bInfo": false,
			"bFilter": false,
			"bSort": false,
			"bLengthChange": false,
			"sScrollY": "200px",
			"sStripOdd": "AA",
			"sStripEven": "BB"
	});
	
	
	// Select Doing
	$('.doing').click(function(){
		$('.doing').removeClass("selected");
		$(this).addClass("selected");
	})
	
});
	

