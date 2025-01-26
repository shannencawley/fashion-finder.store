<?php
// profile.php
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

$query = $db->query("SELECT displayName from users");

if (!$userID) {
    echo "User not found.";
    exit();
}
// eve trying to get follow button to appear on all profiles except user's WOWOWOWOWOW
if ($query->num_rows > 0) {
    //while ($row = $query->fetch_assoc()) {
    echo htmlspecialchars($row['displayName']);
}	// end of eve attempt. we want to add a follow button to profiles EXCEPT the one of the current user 

?>
<!--Filename: profile.php
	Purpose: profile page for FashionFinder prototype -->
<!DOCTYPE html>
<html lang="en">
<head> 
    <link rel="icon" href="https://fashion-finder.store/images/favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Chakra+Petch:wght@300;400;500;600;700&display=swap" rel="stylesheet">

</head>
<body>

    <?php include 'elements/header.php'; ?>



    <div class="post-header">
    <h1><?php echo htmlspecialchars($row['displayName']); ?></h1>
    
    </div>
</div>


<!-- DISPLAY THE URLS and PICTURE -->
<?php
$sql = "SELECT bio, igLink, tiktokLink, tumblrLink, twitterLink, fbLink, personalLink, profilePicture FROM users WHERE UserID = ?";
$stmt = $db->prepare($sql);
$stmt->bind_param("i", $userID);
$stmt->execute();
$stmt->bind_result($bio, $igLink, $tiktokLink, $tumblrLink, $twitterLink, $fbLink, $personalLink, $profilePicture);
$stmt->fetch();
$stmt->close();
?>

<div class="profile-details">
    <h1>Welcome, <?php echo htmlspecialchars($_SESSION['displayName']); ?></h1>

    <?php
    // Profile picture
    if (empty($profilePicture)) {
    } else {
      echo "<img src='" . htmlspecialchars($profilePicture) . "' alt='Profile Picture' style='width: 80px; height: 80px; border-radius: 50%;'>";
      }
      
    // Display bio only if it exists
    if (!empty($bio)) {
        echo "<p>Bio: " . htmlspecialchars($bio) . "</p>";
    }

    // Display Instagram link only if it exists
    if (!empty($igLink)) {
        echo "<p>Instagram: <a href='" . htmlspecialchars($igLink) . "'>" . htmlspecialchars($igLink) . "</a></p>";
    }

    // Display TikTok link only if it exists
    if (!empty($tiktokLink)) {
        echo "<p>TikTok: <a href='" . htmlspecialchars($tiktokLink) . "'>" . htmlspecialchars($tiktokLink) . "</a></p>";
    }

    // Display Tumblr link only if it exists
    if (!empty($tumblrLink)) {
        echo "<p>Tumblr: <a href='" . htmlspecialchars($tumblrLink) . "'>" . htmlspecialchars($tumblrLink) . "</a></p>";
    }

    // Display Twitter link only if it exists
    if (!empty($twitterLink)) {
        echo "<p>Twitter: <a href='" . htmlspecialchars($twitterLink) . "'>" . htmlspecialchars($twitterLink) . "</a></p>";
    }

    // Display Facebook link only if it exists
    if (!empty($fbLink)) {
        echo "<p>Facebook: <a href='" . htmlspecialchars($fbLink) . "'>" . htmlspecialchars($fbLink) . "</a></p>";
    }

    // Display personal website link only if it exists
    if (!empty($personalLink)) {
        echo "<p>Personal Website: <a href='" . htmlspecialchars($personalLink) . "'>" . htmlspecialchars($personalLink) . "</a></p>";
    }
?>


    <button id="editProfileBtn" onclick="showEditProfileModal()" >Edit Profile</button>
    
</div>
	<!-- Edit Profile Modal -->
<div id="editProfileModal" style="display: none;">
    <div class="modal-content">
        <span class="close" onclick="closeEditProfileModal()">&times;</span>
        <h2>Edit Profile</h2>
        <form id="editProfileForm" action="insertBio.php" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="profilePicture">Profile Picture</label>
                <input type="file" id="profilePicture" name="profilePicture" accept="image/*">
            </div>
            <div class="form-group">
                <label for="bio">Bio</label>
                <textarea id="bio" name="bio" rows="4" placeholder="Tell us about yourself"><?php echo htmlspecialchars($bio); ?></textarea>
            </div>
            <div class="form-group">
                <label for="igLink">Instagram Link</label>
                <input type="url" id="igLink" name="igLink" value="<?php echo htmlspecialchars($igLink); ?>">
            </div>
            <div class="form-group">
                <label for="tiktokLink">TikTok Link</label>
                <input type="url" id="tiktokLink" name="tiktokLink" value="<?php echo htmlspecialchars($tiktokLink); ?>">
            </div>
            <div class="form-group">
                <label for="tumblrLink">Tumblr Link</label>
                <input type="url" id="tumblrLink" name="tumblrLink" value="<?php echo htmlspecialchars($tumblrLink); ?>">
            </div>
            <div class="form-group">
                <label for="twitterLink">Twitter Link</label>
                <input type="url" id="twitterLink" name="twitterLink" value="<?php echo htmlspecialchars($twitterLink); ?>">
            </div>
            <div class="form-group">
                <label for="fbLink">Facebook Link</label>
                <input type="url" id="fbLink" name="fbLink" value="<?php echo htmlspecialchars($fbLink); ?>">
            </div>
            <div class="form-group">
                <label for="personalLink">Personal Website Link</label>
                <input type="url" id="personalLink" name="personalLink" value="<?php echo htmlspecialchars($personalLink); ?>">
            </div>
            <button type="submit">Update Profile</button>
        </form>
    </div>
</div>

<script>

// Get the modal and button elements
var editProfileModal = document.getElementById("editProfileModal");

// Function to open the Edit Profile modal
function showEditProfileModal() {
    editProfileModal.style.display = "block";
}

// Function to close the Edit Profile modal
function closeEditProfileModal() {
    editProfileModal.style.display = "none";
}

// Close the modal if the user clicks outside of it
window.onclick = function(event) {
    if (event.target == editProfileModal) {
        editProfileModal.style.display = "none";
    }
}
</script>














	<div cless="lists">
    <!-- VIEWED List Container -->
    <div id="history-container" class="container">
        <h2><a href='viewed.php'>View History</a></h2>
        <div class="carousel-container">
            <div class="carousel">
                <?php
                // Fetch viewed items
                $sql = "SELECT * FROM viewed WHERE UserID = ? ORDER BY ViewedID DESC";
                $stmt = $db->prepare($sql);
                $stmt->bind_param("i", $userID);
                $stmt->execute();
                $result = $stmt->get_result();

                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        echo "<div class='carousel-item'>";
                        echo "<a href='" . $row['itemUrl'] . "'><img src='" . $row['itemSrc'] . "' alt='" . $row['itemTitle'] . "' /></a>";
                        echo "</div>";
                    }
                } else {
                    echo "<p>No items in your viewed history.</p>";
                }

                $stmt->close();
                ?>
            </div>
        </div>
    </div>

    <!-- FAVORITES Items List Container -->
    <div id="saved-container" class="container">
        <h2><a href='favorites.php'>Favorites</a></h2>
        <div class="carousel-container">
            <div class="carousel">
                <?php
                // Fetch favorited items
                $sql = "SELECT * FROM favorites WHERE UserID = ? ORDER BY FavoritesID DESC";
                $stmt = $db->prepare($sql);
                $stmt->bind_param("i", $userID);
                $stmt->execute();
                $result = $stmt->get_result();

                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        echo "<div class='carousel-item'>";
                        echo "<a href='" . $row['itemUrl'] . "'><img src='" . $row['itemSrc'] . "' alt='" . $row['itemTitle'] . "' /></a>";
                        echo "</div>";
                    }
                } else {
                    echo "<p>No items in your favorites list.</p>";
                }

                $stmt->close();
                ?>
            </div>
        </div>
    </div>

    <!-- BOUGHT Items List Container -->
    <div id="bought-container" class="container">
        <h2><a href='bought.php'>Bought Items</a></h2>
        <div class="carousel-container">
            <div class="carousel">
                <?php
                // Fetch bought items
                $sql = "SELECT * FROM bought WHERE UserID = ? ORDER BY BoughtID DESC";
                $stmt = $db->prepare($sql);
                $stmt->bind_param("i", $userID);
                $stmt->execute();
                $result = $stmt->get_result();

                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        echo "<div class='carousel-item'>";
                        echo "<a href='" . $row['itemUrl'] . "'><img src='" . $row['itemSrc'] . "' alt='" . $row['itemTitle'] . "' /></a>";
                        echo "</div>";
                    }
                } else {
                    echo "<p>No items in your bought list.</p>";
                }

                $stmt->close();
                ?>
            </div>
        </div>
    </div>
</div>


	<!-- User's Posts Section -->
    <div class="user-posts">
        <h2>Your Posts</h2>
        <?php
        // Query to fetch the user's posts from the `post` table
        $postQuery = "SELECT post.Caption, post.UserMedia, post.MediaReference, post.Timestamp, post.PostID, post.LikeCount, users.profilePicture, users.displayName 
                      FROM post 
                      JOIN users ON post.UserID = users.UserID 
                      WHERE post.UserID = ? 
                      ORDER BY post.Timestamp DESC";
        $postStmt = $db->prepare($postQuery);
        $postStmt->bind_param("i", $userID);
        $postStmt->execute();
        $postResult = $postStmt->get_result();

        if ($postResult->num_rows > 0) {
            echo "<div class='feed'>";
            while ($postRow = $postResult->fetch_assoc()) {
                echo "<div class='posts'>";

		echo "<div class='post-left'>";
            echo "<img src='$profilePicture' alt='Profile Picture' id='profilePic' margin-right:10px;'>";

		echo htmlspecialchars($postRow['displayName']);
                echo "</div>";

                // Display caption
                echo "<div class='post-content'>";
                echo "<p>" . htmlspecialchars($postRow['Caption']) . "</p>";

                // Display media reference link if available
                if (!empty($postRow['MediaReference'])) {
                    echo "<a href='" . htmlspecialchars($postRow['MediaReference']) . "' target='_blank'>Check it out</a><br>";
                }

                // Display post image if available
                if (!empty($postRow['UserMedia'])) {
                    echo "<img src='" . htmlspecialchars($postRow['UserMedia']) . "' alt='Post Image' style='width:100%; height:auto; margin-top:10px;'>";
                }
                echo "</div>"; // Close post-content div

                // Timestamp
                echo "<p class='timestamp'>Posted on: " . htmlspecialchars($postRow['Timestamp']) . "</p>";

                // Close posts div
                echo "</div>";
            }
            echo "</div>"; // Close feed div
        } else {
            echo "<p>No posts available.</p>";
        }

        $postStmt->close();
        ?>
    </div>








    <?php include 'elements/footer.php'; ?>
    <script src="scripts.js"></script>
    <script>
    function followUser(followingID) {
    fetch('follow.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: 'followingID=' + followingID
    }).then(response => response.text())
      .then(data => {
          alert(data);
          location.reload();
      });
}

function unfollowUser(followingID) {
    fetch('unfollow.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: 'followingID=' + followingID
    }).then(response => response.text())
      .then(data => {
          alert(data);
          location.reload();
      });
}
    </script>




</body>
</html>
