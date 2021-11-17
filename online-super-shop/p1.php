<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "grocery";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM data";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    $img=$row["image"];
    echo "image: ";?><img src="<?php echo  $img; ?>" alt=""/><?php echo "-brand: " . $row["brand"]. "-product name " . $row["product name"]. "-quantity " . $row["quantity"]. "-price " . $row["price"]. "<br>";
  }
} else {
  echo "0 results";
}
$conn->close();
?>