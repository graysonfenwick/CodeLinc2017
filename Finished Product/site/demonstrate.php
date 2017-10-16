<?php

try {
$db = new PDO('mysql:host=localhost;dbname=Codelinc;charset=utf8mb4', 'root', 'RECANTED');
if ($db->connect_error) {
        die("Connection failed: " . $db->connect_error);
}
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

foreach($db->query('select *
    from person, provider, event, attendance where EventDate >= (CurDate() - INTERVAL 30 DAY) and Email = PersonEmail and EventLocation = Location and EventProvider = Provider and EventDate = Date and EventProvider = ProviderName
') as $row) {

	echo $row['email'];
}

$db = null;

