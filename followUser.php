<?php
// followUser.php
// Handles adding or removing a follow connection for the current logged-in user

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
if (isset($_POST['followingID']) && isset($_POST['action'])) {
    $followingID = $_POST['followingID'];
    $action = $_POST['action'];

    // Prevent users from following or unfollowing themselves
    if ($userID == $followingID) {
        echo json_encode(["status" => "error", "message" => "You cannot follow yourself."]);
        exit();
    }

    if ($action === 'follow') {
        // Check if the user is already following
        $sql = "SELECT * FROM FollowingConnections WHERE UserID = ? AND FollowingID = ?";
        $stmt = $db->prepare($sql);
        $stmt->bind_param("ii", $userID, $followingID);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows == 0) {
            // If not already following, insert the new follow connection
            $sql = "INSERT INTO FollowingConnections (UserID, FollowingID, Timestamp) VALUES (?, ?, NOW())";
            $stmt = $db->prepare($sql);
            $stmt->bind_param('ii', $userID, $followingID);

            if ($stmt->execute()) {
                echo json_encode(["status" => "success", "message" => "User followed successfully."]);
            } else {
                echo json_encode(["status" => "error", "message" => "Failed to follow user."]);
            }
        } else {
            echo json_encode(["status" => "duplicate", "message" => "You are already following this user."]);
        }
    } elseif ($action === 'unfollow') {
        // Unfollow the user if they are currently being followed
        $sql = "DELETE FROM FollowingConnections WHERE UserID = ? AND FollowingID = ?";
        $stmt = $db->prepare($sql);
        $stmt->bind_param("ii", $userID, $followingID);

        if ($stmt->execute()) {
            echo json_encode(["status" => "success", "message" => "User unfollowed successfully."]);
        } else {
            echo json_encode(["status" => "error", "message" => "Failed to unfollow user."]);
        }
    }

    // Close the statement
    $stmt->close();
    exit();
} else {
    echo json_encode(["status" => "error", "message" => "Missing required parameters."]);
    exit();
}

// Close the database connection
$db->close();
?>
