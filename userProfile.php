<?php
session_start();
include 'mylib.php'; // Include your database connection file
db_connect(); // Establish the database connection
global $db;

// Check if the user is logged in
if (!isset($_SESSION['email'])) {
    header("Location: login.php");
    exit();
}

// Get the display name from the URL (e.g., /displayName/userName)
$profileDisplayName = $_GET['displayName']; // Ensure to sanitize and validate this input

// Fetch the user's profile data based on display name
$sql = "SELECT UserID, profilePicture, bio, igLink, tiktokLink, tumblrLink, twitterLink, fbLink, personalLink 
     FROM users 
     WHERE displayName = ?";
$stmt = $db->prepare($sql);
$stmt->bind_param("s", $profileDisplayName);
$stmt->execute();
$stmt->bind_result($profileUserID, $profilePicture, $bio, $igLink, $tiktokLink, $tumblrLink, $twitterLink, $fbLink, $personalLink);
$stmt->fetch();
$stmt->close();

if (!$profileUserID) {
    echo "User not found.";
    exit();
}

// Check if the logged-in user is viewing their own profile
$isOwnProfile = ($loggedInUserID == $profileUserID);
?>

<!DOCTYPE html>
<html lang="en">
<head> 
    <link rel="icon" href="https://fashion-finder.store/images/favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Chakra+Petch:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>
<body style="">

    <?php include 'elements/header.php'; ?>

    <div class="post-header" style="margin:1rem;">
        <h1>

		<!-- Display the profile picture of the user being viewed next to their display name -->
        <?php if (!empty($profilePicture)): ?>
            <img src="<?php echo htmlspecialchars($profilePicture); ?>" alt="Profile Picture" style="width:50px; height:50px; border-radius:50%; margin-right:10px;">
        <?php endif; ?>
		<?php echo htmlspecialchars($profileDisplayName);?>
		
		<?php if (!$isOwnProfile): ?>
            <?php
                // Check if the logged-in user is already following this profile user
                $isFollowing = false;
                $checkFollowSql = "SELECT * FROM FollowingConnections WHERE UserID = ? AND FollowingID = ?";
                $checkFollowStmt = $db->prepare($checkFollowSql);
                $checkFollowStmt->bind_param("ii", $loggedInUserID, $profileUserID);
                $checkFollowStmt->execute();
                $isFollowing = $checkFollowStmt->get_result()->num_rows > 0;
                $checkFollowStmt->close();
            ?>

            <!-- Follow/Unfollow Button -->
            <button class="follow-button" id="followButton" data-userid="<?php echo $profileUserID; ?>" data-action="<?php echo $isFollowing ? 'unfollow' : 'follow'; ?>">
                <?php echo $isFollowing ? 'Unfollow' : 'Follow'; ?>
            </button>
        <?php endif; ?>

	</h1>
    </div>

    <div class="follow-stats">
        <?php
        // Follower and following count
        $stmt = $db->prepare("SELECT COUNT(*) AS followerCount FROM FollowingConnections WHERE FollowingID = ?");
        $stmt->bind_param("i", $profileUserID);
        $stmt->execute();
        $stmt->bind_result($followerCount);
        $stmt->fetch();
        $stmt->close();

        $stmt = $db->prepare("SELECT COUNT(*) AS followingCount FROM FollowingConnections WHERE UserID = ?");
        $stmt->bind_param("i", $profileUserID);
        $stmt->execute();
        $stmt->bind_result($followingCount);
        $stmt->fetch();
        $stmt->close();

        //echo "Followers: " . $followerCount . " | Following: " . $followingCount;
        ?>
    </div>

    <a href="javascript:void(0);" onclick="showFollowers(<?php echo $profileUserID; ?>)"style="margin:1rem;">
        Followers: <?php echo $followerCount; ?>
    </a> 
    <a href="javascript:void(0);" onclick="showFollowing(<?php echo $profileUserID; ?>)"style="margin:1rem;">
        Following: <?php echo $followingCount; ?>
    </a>



<!-- Modal for displaying followers/following lists -->
<div id="followModal" style="display: none;">
    <div class="modal-content">
        <span class="close" onclick="closeModal()">&times;</span>
        <h2 id="modalTitle"></h2>
        <div id="followList"></div>
    </div>
</div>


<script>
function showFollowers(userID) {
    fetchFollowList(userID, 'followers');
}

function showFollowing(userID) {
    fetchFollowList(userID, 'following');
}

function fetchFollowList(userID, type) {
    fetch(`fetchFollowList.php?userID=${userID}&type=${type}`)
        .then(response => response.text())
        .then(data => {
            document.getElementById('modalTitle').innerText = type === 'followers' ? 'Followers' : 'Following';
            document.getElementById('followList').innerHTML = data;
            document.getElementById('followModal').style.display = 'block';
        });
}

function closeModal() {
    document.getElementById('followModal').style.display = 'none';
}
</script>


    <div class="profile-container">
        <!-- Profile Details Display -->
        <div class="profile-details" style="color:black;">
            <?php
			
            if ($bio) echo "<p>" . htmlspecialchars($bio) . "</p>";
            if ($igLink) echo "<p>Instagram: <a href='" . htmlspecialchars($igLink) . "'>" . htmlspecialchars($igLink) . "</a></p>";
            if ($tiktokLink) echo "<p>TikTok: <a href='" . htmlspecialchars($tiktokLink) . "'>" . htmlspecialchars($tiktokLink) . "</a></p>";
            if ($tumblrLink) echo "<p>Tumblr: <a href='" . htmlspecialchars($tumblrLink) . "'>" . htmlspecialchars($tumblrLink) . "</a></p>";
            if ($twitterLink) echo "<p>Twitter: <a href='" . htmlspecialchars($twitterLink) . "'>" . htmlspecialchars($twitterLink) . "</a></p>";
            if ($fbLink) echo "<p>Facebook: <a href='" . htmlspecialchars($fbLink) . "'>" . htmlspecialchars($fbLink) . "</a></p>";
            if ($personalLink) echo "<p>Personal Website: <a href='" . htmlspecialchars($personalLink) . "'>" . htmlspecialchars($personalLink) . "</a></p>";

			?>
			
			
        </div>

    </div>


     <!-- Display User's Posts in Feed Style -->
    <div class="user-posts">
        <h2><?php echo htmlspecialchars($profileDisplayName); ?>'s Posts</h2>
        <?php
	
        // Query to fetch posts for the user in the same style as feed.php
        $postQuery = "SELECT users.profilePicture, post.PostID, post.Caption, post.UserMedia, post.Timestamp, post.LikeCount 
                      FROM post 
		      JOIN users ON post.UserID = users.UserID
		      WHERE post.UserID = ? 
                      ORDER BY post.Timestamp DESC";
        $postStmt = $db->prepare($postQuery);
        $postStmt->bind_param("i", $profileUserID);
        $postStmt->execute();
        $postResult = $postStmt->get_result();

        if ($postResult->num_rows > 0) {
            echo "<div class='feed'>";
            while ($postRow = $postResult->fetch_assoc()) {
                echo "<div class='posts'>";


		// Display profile picture and name
                echo "<div class='post-left'>";
                if (!empty($profilePicture)) {
                    echo "<img src='" . htmlspecialchars($profilePicture) . "' alt='Profile Picture' id='profilePic'>";
                }
		
                echo "<a href='userProfile.php?displayName=" . urlencode($profileDisplayName) . "'>" . htmlspecialchars($profileDisplayName) . "</a>";
                echo "</div>";

                // Display caption
                echo "<div class='post-content'>";
                echo "<p>" . htmlspecialchars($postRow['Caption']) . "</p>";

                // Media reference link if it exists
                if (!empty($postRow['UserMedia'])) {
                    echo "<img src='" . htmlspecialchars($postRow['UserMedia']) . "' alt='Post Image' style='width:100%; height:auto; margin-top:10px;'>";
                }
                
                echo "</div>";

          
                // Timestamp
                echo "<p class='timestamp'>Posted on: " . htmlspecialchars($postRow['Timestamp']) . "</p>";

                echo "</div>"; // Close posts div
            }
            echo "</div>"; // Close feed div
        } else {
            echo "<p>No posts available.</p>";
        }

        $postStmt->close();
        ?>
    </div>








 

    <?php include 'elements/footer.php'; ?>
    <script>
document.addEventListener("DOMContentLoaded", function() {
    const followButton = document.getElementById("followButton");

    if (followButton) {
        followButton.addEventListener("click", function() {
            const followingID = followButton.getAttribute("data-userid");
            const action = followButton.getAttribute("data-action");

            // Send AJAX request to follow/unfollow the user
            fetch('followUser.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                },
                body: `followingID=${followingID}&action=${action}`
            })
            .then(response => response.json())
            .then(data => {
                if (data.status === 'success') {
                    // Toggle button text and action attribute
                    followButton.innerText = action === 'follow' ? 'Unfollow' : 'Follow';
                    followButton.setAttribute("data-action", action === 'follow' ? 'unfollow' : 'follow');
                } else {
                    alert(data.message);
                }
            })
            .catch(error => {
                console.error("Error:", error);
            });
        });
    }
});
</script>




    <script src="scripts.js"></script>
</body>
</html>
