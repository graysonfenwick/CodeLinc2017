<?php



try {
$db = new PDO('mysql:host=localhost;dbname=Codelinc;charset=utf8mb4', 'root', 'RECANTED');
if ($db->connect_error) {
	die("Connection failed: " . $db->connect_error);
}
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

//foreach($db->query('select * from person') as $row) { 
//	echo $row['Name'];
//}
$stmt=$db->prepare("INSERT INTO person (Name, Address, County, FacebookUsername,Email,PhoneNum,MonthlyGrossIncome, NumInHousehold,ReceiveFoodStamp)
values (:name, :address, :county, :fbusername, :email, :phonenumber, :income, :numpeople, :yesfood)");


$stmt->bindParam(':name', $name);
$stmt->bindParam(':address', $address);
$stmt->bindParam(':county', $county);
$stmt->bindParam(':fbusername', $fbusername);
$stmt->bindParam(':email', $email);
$stmt->bindParam(':phonenumber', $phonenumber);
$stmt->bindParam(':numpeople', $numpeople);
$stmt->bindParam(':income', $income);
$stmt->bindParam(':yesfood', $yesfood);
//$stmt->bindParam(':date', $date);

$name =$_POST[Name];
$address = $_POST[Address];
$county = $_POST[County];
$email = $_POST[Email];
$fbusername = "";
$phonenumber = $_POST[PhoneNumber];
$income = $_POST[Income];
$numpeople = $_POST[NumPeople];
//$date = NULL;
$yesfood = 1;
$stmt->execute();
}
catch (PDOException $e) {
	echo "Error: " . $e->getMessage();
}
echo "<h3 style='color:#169ac3'>Success!</h3><br> <a href=signup.html>Return</a>";
$db = null;
//mysql_close($con);

?>
