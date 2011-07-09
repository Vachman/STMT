$(function() {
	
	// Init a partner table
	var oTable = $('.partners-table').dataTable({
			"bJQueryUI": false,
			"bPaginate": false,
			"bInfo": false,
			"bFilter": false,
			"bSort": false,
			"bLengthChange": false,
			"sScrollY": "375px",
			"sStripOdd": "AA",
			"sStripEven": "BB"
	});
	
	
	// Select partner
	$('.partner').click(function(){
		$('.partner').removeClass("selected");
		$(this).addClass("selected");
	})
	
});