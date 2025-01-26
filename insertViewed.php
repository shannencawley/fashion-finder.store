<?php
// insertViewed.php 
// Shannen - this version is working with the changes that we made in the database

session_start();
include 'mylib.php'; // Include your database connection file
db_connect(); // Establish the database connection
global $db; // Use the global $db variable for the connection

// Check if the user is logged in
if (!isset($_SESSION['email'])) {
    echo "User not logged in.";
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
    echo "User not found.";
    exit();
}

// Check if all the necessary fields are present in the POST request
if (isset($_POST['item_url']) && isset($_POST['item_title']) && isset($_POST['item_src'])) {
    // Get the data from the POST request
    $itemUrl = $_POST['item_url'];
    $itemTitle = $_POST['item_title'];
    $itemSrc = $_POST['item_src'];

    // Check if the last viewed item for this user is the same as the new one
    $sql = "SELECT itemUrl, itemTitle, itemSrc FROM viewed WHERE UserID = ? ORDER BY ViewedID DESC LIMIT 1";
    $stmt = $db->prepare($sql);
    $stmt->bind_param('i', $userID);
    $stmt->execute();
    $stmt->bind_result($lastItemUrl, $lastItemTitle, $lastItemSrc);
    $stmt->fetch();
    $stmt->close();

    // If the last viewed item is the same as the current one, skip insertion
    if ($lastItemUrl === $itemUrl && $lastItemTitle === $itemTitle && $lastItemSrc === $itemSrc) {
        echo "This item has already been viewed recently.";
        exit();
    }

    // Prepare the SQL statement to insert the viewed item into the database
    $sql = "INSERT INTO viewed (UserID, itemUrl, itemTitle, itemSrc) VALUES (?, ?, ?, ?)";
    $stmt = $db->prepare($sql);
    $stmt->bind_param('isss', $userID, $itemUrl, $itemTitle, $itemSrc);

    // Execute the query and check if it was successful
    if ($stmt->execute()) {
        echo "Item successfully added to viewed history.";
    } else {
        echo "Error adding item: " . $db->error;
    }

    // Close the statement and the connection
    $stmt->close();
    $db->close();
} else {
    echo "Missing required parameters.";
}
?>
