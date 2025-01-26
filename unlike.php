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
$postID = isset($_POST['postID']) ? $_POST['postID'] : null;

//if ($PostID && $currentUserID != $PostID) 
//{
    // Delete the like connection
    $sql = "DELETE FROM likeTable WHERE UserID = ? AND PostID = ?";
    $stmt = $db->prepare($sql);
    $stmt->bind_param("ii", $currentUserID, $postID);
    $stmt->execute();

    if ($stmt->affected_rows > 0) {
        echo "You have unliked this post.";
    } else {
        echo "Failed to unlike this post.";
    }

    $stmt->close();
//}

// Redirect back to the previous page
header("Location: " . $_SERVER['HTTP_REFERER']);
exit();
?>
