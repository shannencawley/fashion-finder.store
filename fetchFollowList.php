<?php
session_start();
include 'mylib.php'; // Include your database connection file
db_connect(); // Establish the database connection
global $db;

$userID = intval($_GET['userID']); // The ID of the profile being viewed
$type = $_GET['type']; // "followers" or "following"

if ($type === 'followers') {
    // Query to get followers of the user
    $sql = "SELECT users.UserID, users.displayName, users.profilePicture 
            FROM FollowingConnections 
            JOIN users ON FollowingConnections.UserID = users.UserID 
            WHERE FollowingConnections.FollowingID = ?";
} else {
    // Query to get users that the user is following
    $sql = "SELECT users.UserID, users.displayName, users.profilePicture 
            FROM FollowingConnections 
            JOIN users ON FollowingConnections.FollowingID = users.UserID 
            WHERE FollowingConnections.UserID = ?";
}

$stmt = $db->prepare($sql);
$stmt->bind_param("i", $userID);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    echo "<ul>";
    while ($row = $result->fetch_assoc()) {
        $profileLink = "userProfile.php?displayName=" . urlencode($row['displayName']);
	$profilePicture = !empty($row['profilePicture']) ? htmlspecialchars($row['profilePicture']) : ''; // Use empty string if no picture
	
	// Display each user as a clickable link
        echo "<li>";
        echo "<a href='" . $profileLink . "' style='color:#FF6663 !important;'>";

	// Display profile picture only if it exists
        if ($profilePicture) {
            echo "<img src='" . $profilePicture . "' alt='Profile Picture' style='width:30px; height:30px; border-radius:50%; margin-right:10px;'>";
        }

        echo htmlspecialchars($row['displayName']);
        echo "</a>";
        echo "</li>";
    }
    echo "</ul>";
} else {
    echo "<p>No users found.</p>";
}

$stmt->close();
?>