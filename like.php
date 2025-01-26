<?php
// like.php
session_start();
include 'mylib.php';
db_connect(); 
global $db; 

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
if (isset($_POST['postID']) && isset($_POST['action'])) {
    $postID = (int) $_POST['postID']; // Ensure it's treated as an integer
    $action = $_POST['action'];

    if ($action === 'like') {
        // Check if the user has already liked the post
        $sql = "SELECT * FROM likeTable WHERE UserID = ? AND PostID = ?";
        $stmt = $db->prepare($sql);
        $stmt->bind_param("ii", $userID, $postID);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows == 0) {
            // If not already liked, insert the new like
            $sql = "INSERT INTO likeTable (PostID, UserID, Timestamp) VALUES (?, ?, NOW())";
            $stmt = $db->prepare($sql);
            $stmt->bind_param('ii', $postID, $userID);
            if ($stmt->execute()) {
                // After liking the post, update the LikeCount in the post table
                $updateLikeCountSql = "UPDATE post SET LikeCount = LikeCount + 1 WHERE PostID = ?";
                $updateStmt = $db->prepare($updateLikeCountSql);
                $updateStmt->bind_param('i', $postID);
                $updateStmt->execute();
                $updateStmt->close();

                echo json_encode(["status" => "success", "message" => "Post liked."]);
            } else {
                echo json_encode(["status" => "error", "message" => "Failed to like post."]);
            }
        } else {
            echo json_encode(["status" => "duplicate", "message" => "You already liked this post."]);
        }
    } elseif ($action === 'unlike') {
        // Unlike the post if it is currently liked
        $sql = "DELETE FROM likeTable WHERE UserID = ? AND PostID = ?";
        $stmt = $db->prepare($sql);
        $stmt->bind_param("ii", $userID, $postID);

        if ($stmt->execute()) {
            // After unliking the post, update the LikeCount in the post table
            $updateLikeCountSql = "UPDATE post SET LikeCount = LikeCount - 1 WHERE PostID = ?";
            $updateStmt = $db->prepare($updateLikeCountSql);
            $updateStmt->bind_param('i', $postID);
            $updateStmt->execute();
            $updateStmt->close();

            echo json_encode(["status" => "success", "message" => "Post unliked."]);
        } else {
            echo json_encode(["status" => "error", "message" => "Failed to unlike post."]);
        }
    } else {
        echo json_encode(["status" => "error", "message" => "Invalid action."]);
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
