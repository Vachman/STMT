$(function() {

	/* Formating function for row details */
	function fnFormatDetails ( nTr )
	{
		var content = "sasa";
		$("#buffer").load("organisations/1 #container");
		alert( $("#buffer").html());
	}

	// if the function argument is given to overlay,
	// it is assumed to be the onBeforeLoad event listener
	var oTable = $('#gps_moduls').dataTable({
			"bJQueryUI": false,
			"bInfo": false,
			"bPaginate": false,
			"aoColumns": [
						{ "sClass": "center", "bSortable": false },
						{  "bSortable": false },
						{  "bSortable": false },
						{  "bSortable": false },
						null,
						{  "bSortable": false }
					],
				"sScrollY": "440px"			
	});



	oTable.fnAdjustColumnSizing();

	$('#gps_moduls tbody td img.info').live( 'click', function () {
			var nTr = this.parentNode.parentNode;
				if ( this.src.match('info_close') )
			{
				/* This row is already open - close it */
				this.src = "images/info_show.png";
				oTable.fnClose( nTr );
			}
			else
			{
				/* Open this row */
				this.src = "images/info_close.png";
				oTable.fnOpen( nTr, fnFormatDetails(nTr), 'details' );
			}
		} 
	);

  $("#globalsearch").append($("#gps_moduls_filter input"));
  $("#gps_moduls_filter").remove();


});



$(function() {
  
  	// Select Staff
  	$('.staff').click(function(){
		$('.staff').removeClass("selected");
		$(this).addClass("selected");
  	});

	// DoubleClick to Staff
	$('.staff').dblclick(function(){
		window.location = $(this).first().find("a").attr("href");
	});

});