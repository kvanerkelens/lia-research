<?php 
// Create connection
$con=mysqli_connect("localhost","website","4F7wmGs8M6Mraw7w","usbinv");

// Check connection
if (mysqli_connect_errno())
  {
  	echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

$result = mysqli_query($con,"SELECT * FROM usbinv");

echo "<h1>USB devices</h1>

<table border='1'>
<tr>
<th>Type</th>
<th>Vendor</th>
</tr>";

while($row = mysqli_fetch_array($result))
  {
	//var_dump($row);
	//foreach ($row as $entry) {
		// echo $entry . " ";
	// }
	echo "<tr>";
  	echo "<td>" . $row['type'] . "</td>";
  	echo "<td>" . $row['vendorname'] . "</td>";
	echo "</tr>";
  }
echo "</table>";

mysqli_close($con);
?>
