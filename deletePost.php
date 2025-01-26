<?php
session_start();
include 'mylib.php'; // Include your database connection file
db_connect(); // Establish the database connection
global $db; // Use the global $db variable for the connection

// Check if the user is logged in
if (!isset($_SESSION['email'])) {
    echo "<script>alert('You must be logged in to delete a post.'); window.location.href='feed.php';</script>";
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
    echo "<script>alert('User not found.'); window.location.href='feed.php';</script>";
    exit();
}

// Check if the form is submitted and the post ID is provided
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['postID'])) {
    $postID = intval($_POST['postID']);

    // Verify that the post belongs to the logged-in user
    $sql = "SELECT UserID FROM post WHERE PostID = ?";
    $stmt = $db->prepare($sql);
    $stmt->bind_param("i", $postID);
    $stmt->execute();
    $stmt->bind_result($postOwnerID);
    $stmt->fetch();
    $stmt->close();

    if ($postOwnerID !== $userID) {
        echo "<script>alert('You do not have permission to delete this post.'); window.location.href='feed.php';</script>";
        exit();
    }

    // Proceed to delete the post
    $sql = "DELETE FROM post WHERE PostID = ?";
    $stmt = $db->prepare($sql);
    $stmt->bind_param("i", $postID);
    $stmt->execute();

    if ($stmt->affected_rows > 0) {
        echo "<script>alert('Post deleted successfully.'); window.location.href='feed.php';</script>";
    } else {
        echo "<script>alert('Failed to delete the post.'); window.location.href='feed.php';</script>";
    }

    $stmt->close();
    $db->close();
} else {
    echo "<script>alert('Invalid request.'); window.location.href='feed.php';</script>";
    exit();
}
?>
