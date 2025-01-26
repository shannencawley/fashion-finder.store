<?php
session_start();
include 'mylib.php';
db_connect();
global $db;

// Check if the user is logged in
if (!isset($_SESSION['UserID'])) {
    header("Location: login.php");
    exit();
}

$currentUserID = $_SESSION['UserID'];
$followingID = isset($_POST['followingID']) ? $_POST['followingID'] : null;

if ($followingID && $currentUserID != $followingID) {
    // Delete the following connection
    $sql = "DELETE FROM FollowingConnections WHERE UserID = ? AND FollowingID = ?";
    $stmt = $db->prepare($sql);
    $stmt->bind_param("ii", $currentUserID, $followingID);
    $stmt->execute();

    if ($stmt->affected_rows > 0) {
        echo "You have unfollowed this user.";
    } else {
        echo "Failed to unfollow the user.";
    }

    $stmt->close();
}

// Redirect back to the previous page
header("Location: " . $_SERVER['HTTP_REFERER']);
exit();
?>
