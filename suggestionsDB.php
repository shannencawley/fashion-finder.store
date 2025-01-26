<?php
error_reporting(E_ALL); ini_set('display_errors', 1);

include 'mylib.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
     // Establish database connection
    $error = db_connect();
    if ($error !== null) {
        die("Connection failed: " . $error);
    }

    $userEmail = $_POST['userEmail'];
    $subjectLine = $_POST['subjectLine'];
    $description = $_POST['description'];

    
    $query = $db->prepare("INSERT INTO suggestions (userEmail, subjectLine, description) VALUES (?, ?, ?)");
    $query->bind_param("sss", $userEmail, $subjectLine, $description);
    $query->execute();

    if ($query->affected_rows > 0) {
	    header("Location: index.php");
		//echo "<script>alert('Suggestion submitted successfully');</script>";
	    exit();
    } else {
	    header("Location: index.php");
	    exit();
		//echo "<script>alert('Error submitting suggestion);</script>";
    }

	


    $db->close();
}











?>

