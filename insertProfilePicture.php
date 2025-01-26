<?php

include 'mylib.php'; // Include your database connection file
db_connect(); // Establish the database connection
global $db; // Use the global $db variable for the connection


// Check if the user is logged in
if (!isset($_SESSION['email'])) {
    echo json_encode(["status" => "error", "message" => "User not logged in."]);
    exit();
}

// Get the logged-in user's email from the session
$userEmail = $_SESSION['email'];

// Fetch the UserID from the `users` table based on the email
$sql = "SELECT UserID FROM users WHERE email = ?";
$stmt = $db->prepare($sql);
$stmt->bind_param("s", $userEmail);
$stmt->execute();
$stmt->bind_result($userID);
$stmt->fetch();
$stmt->close();

if (!$userID) {
    echo json_encode(["status" => "error", "message" => "User not found."]);
    exit();
}


   // check if an image file was uploaded
   if(isset($_FILES['users']) && $_FILES['users']['error'] == 0) {
      $pictureName = $_FILES['users']['pictureName'];
      //$type = $_FILES['users']['type'];
      $profilePicture = file_get_contents($_FILES['users']['tmp_name']);
      
      // connect to the database
      //$pdo = new PDO($db);
      

      // insert the image data into the database
      $sql = "INSERT INTO users (pictureName, profilePicture) VALUES (?, ?)";
      $stmt = $db->prepare($sql);
      $stmt->bind_param('isss', $pictureName, $profilePicture);

      // Check if the insertion was successful
        if ($stmt->execute()) {
            echo json_encode(["status" => "success", "message" => "pretty picture"]);
        } else {
      		// Error in insertion
      		echo json_encode(["status" => "error", "message" => "no ugly people allowed"]);
        	}

    // Close the statement and the connection
    $stmt->close();
} else {
    // Missing required POST parameters
    echo json_encode(["status" => "error", "message" => "Missing required parameters."]);
}

// Close the database connection
$db->close();
?>
