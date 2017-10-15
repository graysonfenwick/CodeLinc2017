<?php

$servername = "localhost";
$username = "evanpeterjones";
$password = "awesomeman";

$conn = mysql_connect($servername, $username, $password);
// Check connection
if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
} 

mysql_select_db("Codelinc", $conn);

$q1 = "select Name, Email, FacebookUsername, PhoneNum, DateFoodReceived from person where DateFoodReceived < (CURDATE() - INTERVAL 30 DAY);";
$q2 = "select Name, County, Address, ReceiveFoodStamp from person";

$queries = array(
    1 => $q1,$q2
);

foreach($queries as $query) {
    $result = mysql_query($query,$conn);

    while ($row = mysql_fetch_assoc($result)) {
        foreach($row as $key => $value) {
            echo "$key = $value <br />";
        }
        echo "<br/>";
    }
    echo "---------------------<br/>";
}
mysql_close($conn);

?>
