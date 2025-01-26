<?php
session_start();
include 'mylib.php'; // Include your database connection file
db_connect(); // Establish the database connection
global $db;

// Check if the user is logged in
if (!isset($_SESSION['email'])) {
    header("Location: login.php");
    exit();
}

$userEmail = $_SESSION['email'];

// Fetch the UserID from the session
$sql = "SELECT UserID FROM users WHERE email = ?";
$stmt = $db->prepare($sql);
$stmt->bind_param("s", $userEmail);
$stmt->execute();
$stmt->bind_result($userID);
$stmt->fetch();
$stmt->close();

if (!$userID) {
    echo "User not found.";
    exit();
}

// Initialize the update query
$updateQuery = "UPDATE users SET ";
$updateFields = [];
$updateParams = [];
$paramTypes = '';

// Fetch form inputs
$profilePicture = $_POST['profilePicture'] ?? '';
$bio = trim($_POST['bio'] ?? '');
$igLink = $_POST['igLink'] ?? '';
$tiktokLink = $_POST['tiktokLink'] ?? '';
$tumblrLink = $_POST['tumblrLink'] ?? '';
$twitterLink = $_POST['twitterLink'] ?? '';
$fbLink = $_POST['fbLink'] ?? '';
$personalLink = $_POST['personalLink'] ?? '';

// Update only if the field has been filled out by the user
if (!empty($bio)) {
    $updateFields[] = "bio = ?";
    $updateParams[] = $bio;
    $paramTypes .= 's';
}
if (!empty($igLink)) {
    $updateFields[] = "igLink = ?";
    $updateParams[] = $igLink;
    $paramTypes .= 's';
}
if (!empty($tiktokLink)) {
    $updateFields[] = "tiktokLink = ?";
    $updateParams[] = $tiktokLink;
    $paramTypes .= 's';
}
if (!empty($tumblrLink)) {
    $updateFields[] = "tumblrLink = ?";
    $updateParams[] = $tumblrLink;
    $paramTypes .= 's';
}
if (!empty($twitterLink)) {
    $updateFields[] = "twitterLink = ?";
    $updateParams[] = $twitterLink;
    $paramTypes .= 's';
}
if (!empty($fbLink)) {
    $updateFields[] = "fbLink = ?";
    $updateParams[] = $fbLink;
    $paramTypes .= 's';
}
if (!empty($personalLink)) {
    $updateFields[] = "personalLink = ?";
    $updateParams[] = $personalLink;
    $paramTypes .= 's';
}

//if (!empty($profilePicture)) {
  //  $updateFields[] = "profilePicture = ?";
  //  $updateParams[] = $profilePicture;
  //  $paramTypes .= 's';


//Estella is trying to insert the profile picture here: crossing my fingers this works


// Handle profile picture upload
if (isset($_FILES['profilePicture']) && $_FILES['profilePicture']['error'] === UPLOAD_ERR_OK) {
    $uploadDir = "uploads/$userID/";
    if (!file_exists($uploadDir)) {
        mkdir($uploadDir, 0777, true); // Create the user's directory if it doesn't exist
    }

    $fileTmpPath = $_FILES['profilePicture']['tmp_name'];
    $fileName = basename($_FILES['profilePicture']['name']);
    $destination = $uploadDir . $fileName;

    // Move the uploaded file to the user's directory
    if (move_uploaded_file($fileTmpPath, $destination)) {
        // Update the profile picture path in the database
        $updateFields[] = "profilePicture = ?";
        $updateParams[] = $destination;
        $paramTypes .= 's';
    } else {
        echo "<script>alert('Error uploading the profile picture.'); window.location.href='profile.php';</script>";
        exit();
    }


}
// If no fields were provided, don't perform any updates
if (empty($updateFields)) {
   echo "<script>alert('No updates provided.'); window.location.href='profile.php';</script>";
   exit();
}

// Finalize the query
$updateQuery .= implode(", ", $updateFields) . " WHERE UserID = ?";
$updateParams[] = $userID; // Add the user ID as the final parameter
$paramTypes .= 'i'; // 'i' for integer (UserID)

// Prepare, bind, and execute the query
$stmt = $db->prepare($updateQuery);
$stmt->bind_param($paramTypes, ...$updateParams);
$stmt->execute();

if ($stmt->affected_rows > 0) {
    echo "<script>alert('Profile updated successfully!'); window.location.href='profile.php';</script>";
} else {
    echo "<script>alert('No changes made to the profile.'); window.location.href='profile.php';</script>";
}

$stmt->close();
$db->close();
?>
