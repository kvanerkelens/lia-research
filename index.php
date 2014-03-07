<!DOCTYPE html>
<html>
<head>
<style>
.stolen {background-color:red;}
</style>
</head> 
<body>
<?php 
// Create connection
$con=mysqli_connect("localhost","website","4F7wmGs8M6Mraw7w","usbinv");

// Check connection
if (mysqli_connect_errno())
  {
  	echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

$result = mysqli_query($con,"SELECT * FROM usbinv ORDER BY timestamp DESC");
$lostdevices = mysqli_query($con,"SELECT * FROM usbinv WHERE stolen IS TRUE");
$latestusers = mysqli_query($con,"SELECT * FROM (SELECT * FROM usbinv ORDER BY timestamp DESC) AS last GROUP BY serialnumber ORDER BY timestamp DESC");

echo"<h1>USB devices</h1>
<h2>Lost devices</h2>
<table border='1'>
<tr>
<th>Time</th>
<th>Type</th>
<th>Vendor</th>
<th>Serial number</th>
<th>User</th>
</tr>";

while($row = mysqli_fetch_array($lostdevices))
  {       
        echo "<tr>";
        echo "<td>" . $row['timestamp'] . "</td>";
        echo "<td>" . $row['type'] . "</td>";
        echo "<td>" . $row['vendorname'] . "</td>";
        echo "<td>" . $row['serialnumber'] . "</td>";
        echo "<td>" . $row['user'] . "</td>";
        echo "</tr>";
  }
echo "</table>";

echo "<h2>Last users</h2>
<table border='1'>
<tr>
<th>Time</th>
<th>Type</th>
<th>Vendor</th>
<th>Serial number</th>
<th>User</th>
</tr>";

while($row = mysqli_fetch_array($latestusers))
  {
	if($row[stolen]==FALSE)
        {
                echo "<tr>";
        }
        else {
                echo '<tr class="stolen">';
        }
        echo "<td>" . $row['timestamp'] . "</td>";
        echo "<td>" . $row['type'] . "</td>";
        echo "<td>" . $row['vendorname'] . "</td>";
        echo "<td>" . $row['serialnumber'] . "</td>";
        echo "<td>" . $row['user'] . "</td>";
        echo "</tr>";
  }
echo "</table>";

echo "<h2>Backlog</h2>
<table border='1'>
<tr>
<th>Time</th>
<th>Type</th>
<th>Vendor</th>
<th>Serial number</th>
<th>User</th>
</tr>";

while($row = mysqli_fetch_array($result))
  {
	//var_dump($row);
	//foreach ($row as $entry) {
		// echo $entry . " ";
	// }
	if($row[stolen]==FALSE)
	{
		echo "<tr>";
	}
	else {
		echo '<tr class="stolen">';
  	}
	echo "<td>" . $row['timestamp'] . "</td>";
	echo "<td>" . $row['type'] . "</td>";
  	echo "<td>" . $row['vendorname'] . "</td>";
	echo "<td>" . $row['serialnumber'] . "</td>";
	echo "<td>" . $row['user'] . "</td>";
	echo "</tr>";
  }
echo "</table>";

mysqli_close($con);
?>
</body>
</html>
