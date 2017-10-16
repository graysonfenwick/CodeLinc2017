<?php

$servername = "localhost";
$username = "root";
$password = "awesomeman";

$conn = mysqli_connect($servername, $username, $password, "Codelinc");
// Check connection
if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
} 

mysqli_select_db($db, $conn);

$q1 = "select Name, Email, FacebookUsername, PhoneNum, DateFoodReceived from person where DateFoodReceived < (CURDATE() - INTERVAL 30 DAY);";
$q2 = "select Name, County, Address, ReceiveFoodStamp from person";

$queries = array(
    1 => $q1,$q2
);

foreach($queries as $query) {
    $result = mysqli_query($query,$conn);

    while ($row = mysqli_fetch_assoc($result)) {
        foreach($row as $key => $value) {
            echo "$key = $value <br />";
        }
        echo "<br/>";
    }
    echo "---------------------<br/>";
}
mysqli_close($conn);

?>
