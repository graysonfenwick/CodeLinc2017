<?php



try {
$db = new PDO('mysql:host=localhost;dbname=Codelinc;charset=utf8mb4', 'root', 'awesomeman');
if ($db->connect_error) {
        die("Connection failed: " . $db->connect_error);
}

$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

//foreach($db->query('select * from person') as $row) { 
//	echo $row['Name'];
//}
$stmt=$db->prepare("INSERT INTO event (Location, Date, Provider)
values (:location, :date, :provider)");


$stmt->bindParam(':location', $location);
$stmt->bindParam(':date', $date);
$stmt->bindParam(':provider', $provider);

$location =$_POST[Location];
$date = $_POST[Date];
$provider = $_POST[Provider];
$stmt->execute();
}
catch (PDOException $e) {
	echo "Error: " . $e->getMessage();
die();
}
echo "Success!";
echo "<a href=signupEvent.html>Return</a>";
$db = null;
//mysql_close($con);

?>
