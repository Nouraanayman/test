<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "cafe";

$con = mysqli_connect ($servername, $username, $password, $dbname);

if (!$con)
{
die ("connection failed:" .mysqli_connect_error());
}
else 
echo "successfully connected";
?>