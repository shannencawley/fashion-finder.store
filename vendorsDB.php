<?php
error_reporting(E_ALL); ini_set('display_errors', 1);

include 'mylib.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
     // Establish database connection
    $error = db_connect();
    if ($error !== null) {
        die("Connection failed: " . $error);
    }

    $vendorEmail = $_POST['vendorEmail'];
    $vendorStore = $_POST['vendorStore'];
    $vendorComment = $_POST['vendorComment'];

    
    $query = $db->prepare("INSERT INTO vendors (vendorEmail, vendorStore, vendorComment) VALUES (?, ?, ?)");
    $query->bind_param("sss", $vendorEmail, $vendorStore, $vendorComment);
    $query->execute();

    if ($query->affected_rows > 0) {
	    echo "<script>alert('Brand information submitted successfully');window.location.href = 'https://www.fashion-finder.store/';</script>";
		//echo "<script>alert('Brand information submitted successfully');</script>";
	    exit();
    } else {
		echo "<script>alert('Error submitting brand information');window.location.href = 'https://www.fashion-finder.store/';</script>";
	    exit();
		//echo "<script>alert('Error submitting brand information);</script>";
    }

	


    $db->close();
}


?>

