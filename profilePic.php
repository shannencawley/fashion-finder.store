<?php
session_start();
include 'mylib.php';
db_connect(); // Establish the database connection
global $db;

// Check if the user is logged in
if (!isset($_SESSION['email'])) {
    header("Location: login.php");
    exit();
}

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
    echo "User not found.";
    exit();
}

// Handle profile picture upload
$profilePicturePath = null;
if (isset($_FILES['profilePicture']) && $_FILES['profilePicture']['error'] === UPLOAD_ERR_OK) {
    $uploadDir = "uploads/$userID/";
    if (!file_exists($uploadDir)) {
        mkdir($uploadDir, 0777, true); // Create the user's directory if it doesn't exist
    }

    $fileTmpPath = $_FILES['profilePicture']['tmp_name'];
    $fileName = basename($_FILES['profilePicture']['name']);
    $destination = $uploadDir . $fileName;

    if (move_uploaded_file($fileTmpPath, $destination)) {
        $profilePicturePath = $destination;
    } else {
        echo "Error uploading the file.";
        exit();
    }
}

// Update user profile information in the database
$sql = "UPDATE users SET profilePicture = ? WHERE UserID = ?";
$stmt = $db->prepare($sql);
$stmt->bind_param("si", $profilePicturePath, $userID);
$stmt->execute();
$stmt->close();

header("Location: profile.php");
exit();
?>
