$(function() {

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



	/* Formating function for row details 
	function fnFormatDetails ( nTr )
	{
		var content = "sasa";
		$("#buffer").load("organisations/1 #container");
		alert( $("#buffer").html());
	}
	

	$('#gps_moduls tbody td img.info').live( 'click', function () {
			var nTr = this.parentNode.parentNode;
				if ( this.src.match('info_close') )
			{
				 
				this.src = "images/info_show.png";
				oTable.fnClose( nTr );
			}
			else
			{
			
				this.src = "images/info_close.png";
				oTable.fnOpen( nTr, fnFormatDetails(nTr), 'details' );
			}
		} 
	);*/

  $("#globalsearch").append($("#gps_moduls_filter input"));
  $("#gps_moduls_filter").remove();


});



