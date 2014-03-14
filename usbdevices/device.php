<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		
		<title>USB Management System</title>

		<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="dataTables.bootstrap.css">

		<script type="text/javascript" language="javascript" src="//code.jquery.com/jquery-1.10.2.min.js"></script>
		<script type="text/javascript" language="javascript" src="//cdn.datatables.net/1.10-dev/js/jquery.dataTables.min.js"></script>
		<script type="text/javascript" language="javascript" src="dataTables.bootstrap.js"></script>
		<script type="text/javascript" charset="utf-8">
			$(document).ready(function() {
				$('#example').dataTable({
					"bProcessing": true,
                			"bServerSide": true,
                			"sAjaxSource": "tables.php?sn=<?php echo $_GET['sn'] ?>"
				});
			} );
		</script>
	</head>
	<body>
		<div class="container">
<h2><?php echo $_GET['sn'] ?></h2>			
<table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
	<thead>
		<tr>
			<th>Time</th>
                	<th>Vendor</th>
                	<th>Product</th>
                	<th>Serial number</th>
                	<th>User</th>
                	<th>Computer</th>
                	<th>OS</th>
		</tr>
	</thead>
	<tbody>
	</tbody>
</table>
			
		</div>
	</body>
</html>
