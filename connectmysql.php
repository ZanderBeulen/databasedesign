<?php
$servername = "104.198.255.44";
$username = "root";
$password = "jensen27";

$conn = new mysqli($servername, $username, $password);

if ($conn->connect_error) {
    die("Connection Failed: " . $conn->connect_error);
}
echo "Connected successfully";

$conn->close();
?>
