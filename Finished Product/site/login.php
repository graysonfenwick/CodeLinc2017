<?php
  
date_default_timezone_set("America/New_York");

try {
$db = new PDO('mysql:host=localhost;dbname=Codelinc;charset=utf8mb4', 'root', 'awesomeman');
if ($db->connect_error) {
        die("Connection failed: " . $db->connect_error);
}
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

//foreach($db->query('select * from person') as $row) {
//      echo $row['Name'];
//}
$stmt=$db->prepare("INSERT INTO  (PersonEmail,EventLocation,EventProvider,EventDate)
values (:email, :eventlocation, :eventprovider, :edate)");

$stmt->bindParam(':email', $email);
$stmt->bindParam(':eventlocation', $ELocation);
$stmt->bindParam(':eventprovider', $EProvider);
$stmt->bindParam(':edate', $EDate);




//$email =$_POST[email];
//$ELocation = $_POST[location];
//$EDate = "2017-10-15";
//$EventProvider = $db->query("SELECT (Provider) FROM (event) WHERE Location= " . $EventLocation); 
//$ELocation = $_POST[location];
//$EProvider = "provider2";
//$stmt ->execute();
echo "Success! <a href=login.html>Return.</a>";
}
catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
}
$db = null;
?>
