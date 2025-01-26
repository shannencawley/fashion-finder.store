<?php
// insertFavorites.php
// Shannen Cawley - Handles insertion of items into the user's favorites list, ensuring no duplicates

session_start();
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

// Check if the necessary POST parameters are set
if (isset($_POST['item_url']) && isset($_POST['item_title']) && isset($_POST['item_src'])) {
    // Retrieve data from the POST request
    $itemUrl = $_POST['item_url'];
    $itemTitle = $_POST['item_title'];
    $itemSrc = $_POST['item_src'];

    // Check if the item is already in the user's favorites list
    $sql = "SELECT * FROM favorites WHERE UserID = ? AND itemUrl = ?";
    $stmt = $db->prepare($sql);
    $stmt->bind_param("is", $userID, $itemUrl);
    $stmt->execute();
    $result = $stmt->get_result();

    // If the item is already in the list, send a duplicate message
    if ($result->num_rows > 0) {
        echo json_encode(["status" => "duplicate", "message" => "This item is already in your favorites list."]);
    } else {
        // Insert the new item into the favorites list
        $sql = "INSERT INTO favorites (UserID, itemUrl, itemTitle, itemSrc) VALUES (?, ?, ?, ?)";
        $stmt = $db->prepare($sql);
        $stmt->bind_param('isss', $userID, $itemUrl, $itemTitle, $itemSrc);

        // Check if the insertion was successful
        if ($stmt->execute()) {
            echo json_encode(["status" => "success", "message" => "Item added to favorites!"]);
        } else {
            // Error in insertion
            echo json_encode(["status" => "error", "message" => "Error adding item to favorites."]);
        }
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
