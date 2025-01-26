<?php
// viewed.php
// Shannen - this version works with insertViewed.php to insert and retrieve viewed items
session_start();
include 'mylib.php'; // Include your database connection file
db_connect(); // Establish the database connection
global $db;

// Check if the user is logged in
if (!isset($_SESSION['email'])) {
    header("Location: login.php");
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

// Query the `viewed` table to get the viewed items for this UserID
$sql = "SELECT * FROM favorites WHERE UserID = ?";
$stmt = $db->prepare($sql);
$stmt->bind_param("i", $userID);
$stmt->execute();
$result = $stmt->get_result();

// Display the viewed items
echo "<h2>Your Favorites History</h2>";
if ($result->num_rows > 0) {
    echo "<ul>";
    while ($row = $result->fetch_assoc()) {
        echo "<li>";
        echo "<img src='" . $row['itemSrc'] . "' alt='" . $row['itemTitle'] . "' style='width:50px;height:50px;vertical-align:middle;margin-right:10px;'>";
        echo "<a href='" . $row['itemUrl'] . "'>" . $row['itemTitle'] . "</a>";
        echo "</li>";
    }
    echo "</ul>";
} else {
    echo "No viewed items found.";
}

// Close the connection
$stmt->close();
$db->close();
?>