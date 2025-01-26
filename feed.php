<?php
session_start();
include 'mylib.php';
db_connect(); // Establish the database connection
global $db; // Use the global $db variable for the connection

//ini_set('display_errors', 1);
//ini_set('display_startup_errors', 1);
//error_reporting(E_ALL);

// Check if the user is logged in
if (!isset($_SESSION['email'])) {
    header("Location: login.php");
    exit();
}

// Get the logged-in user's email from the session
$userEmail = $_SESSION['email'];

// Fetch the UserID from the users table based on the email
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
?>

<!--Filename: feed.php
	Purpose: feed page for fashion finder as of wed sept 18, 2024-->
<!DOCTYPE html>
<html lang="en">
<head> 
    <link rel="icon" href="https://fashion-finder.store/images/favicon.ico">
    <!-- For Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="styles.css">
</head>
<body>

	<?php include 'elements/header.php'; ?>

<script>
function openTab(evt, openTab) {
  // Declare all variables
  var i, tabcontent, tablinks;


  // Get all elements with class="tabcontent" and hide them
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }

  // Get all elements with class="tablinks" and remove the class "active"
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }

  // Show the current tab, and add an "active" class to the button that opened the tab
  document.getElementById(openTab).style.display = "block";
  evt.currentTarget.className += " active";
}
</script>

<!-- 
For now, put anything post related(post form, populated posts) abothe the tabs. Let's figure out what goes where later ;)
-->

<!-- THIS IS THE CREATE A POST FORM -->
<button id="createPost" style="border:none;background: rgb(0,47,52,1);background: radial-gradient(circle, rgba(0,47,52,1) 0%, rgba(0,39,43,1) 32%);color:white; padding:1rem; font-size:20px;">Create a Post</button>
<div class="temp" style="display:none;">
<h3>Create a Post</h3>
<form action="insertPost.php" method="post" enctype="multipart/form-data">
    <label for="mediaReference">Upload Media:</label>
    <input type="file" id="mediaReference" name="mediaReference"><br><br>

    <!-- Select Bought Item from Bought List -->
    <label for="boughtListSelect">Select an item from your Bought List:</label>
    <button type="button" onclick="openBoughtModal()">Select</button> 
    <!-- Hidden inputs to store the selected bought item data -->
    <input type="hidden" id="itemSrc" name="itemSrc">
    <!-- Section to display the selected image after user selects one -->
    <div id="selectedImagePreview">
    <img id="selectedImage" src="" alt="Selected Item" style="display: none; width: 100px; height: auto; margin-top: 10px;">
    </div>
<br>

<!-- Hidden input field to hold the BoughtID -->
<input type="hidden" id="boughtID" name="boughtID">
<br><br>


    <label for="caption">Caption:</label>
    <textarea id="caption" name="caption" rows="4" cols="50" placeholder="Write a caption for your post!"></textarea><br><br>
    
<!-- Message for Kate, I had to change the ID and name so its different from the caption This is what you had: textarea id="caption" name="caption" -->
    <label for="itemLink">Link to Item:</label>
    <textarea id="itemLink" name="itemLink" rows="4" cols="50" placeholder="Paste the link to your item so others can find it!"></textarea><br><br>

    <input type="submit" value="Submit Post">
</form>
</div>
<script>
    // Show the post form when the button is clicked
    document.getElementById("createPost").onclick = function() {
        document.querySelector(".temp").style.display = "block";
    };

    // Hide the post form upon submission
    document.getElementById("postForm").onsubmit = function() {
        document.querySelector(".temp").style.display = "none";
    };
</script>


<!-- Modal Popup for selecting bought item -->
<div id="boughtModal" class="modal" style="display:none; position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); background-color: white; padding: 20px; border-radius: 5px; z-index: 1000; width:80%;">
    <div class="modal-content">
        <span class="close" onclick="closeBoughtModal()" style="cursor:pointer;">&times;</span>
        <h3>Select an item from your Bought List</h3>
	<div id="bought-container" class="container" styles="width:50%">
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

			        echo "<img src='" . $row['itemSrc'] . "' alt='" . $row['itemTitle'] . "' style='cursor:pointer;' onclick=\"selectItem('" . $row['itemSrc'] . "', '" . $row['itemUrl'] . "', '" . $row['BoughtID'] . "')\">";
			
			
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
	
        <button type="button" onclick="confirmBoughtSelection()">Confirm Selection</button>
    </div>
</div>




    <!-- Overlay to disable background interaction -->
    <div id="modalOverlay" style="display:none; position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0,0,0,0.5); z-index:999;" onclick="closeBoughtModal()"></div>



<script>
        // Function to open the modal
        function openBoughtModal() {
            document.getElementById('boughtModal').style.display = 'block'; // Show the modal
            document.getElementById('modalOverlay').style.display = 'block'; // Show the overlay
        }

        // Function to close the modal
        function closeBoughtModal() {
            document.getElementById('boughtModal').style.display = 'none'; // Hide the modal
            document.getElementById('modalOverlay').style.display = 'none'; // Hide the overlay
        }

	function selectBoughtItem(itemSrc) {
    	// Set the selected item source into the hidden input field
        document.getElementById('itemSrc').value = itemSrc;
        alert("You have selected an item!");
        }

	function selectItem(itemSrc, itemLink, boughtID) {
    	// Set the selected image in the form preview
        document.getElementById('selectedImage').src = itemSrc;
        document.getElementById('selectedImage').style.display = 'block'; // Show the image
        document.getElementById('itemLink').value = itemLink; // Set the link in the 'Link to Item' field
    	document.getElementById('itemSrc').value = itemSrc; // Set the image src hidden field
    	document.getElementById('boughtID').value = boughtID; // Set the boughtID hidden field

	closeBoughtModal(); // Close the modal after selection
}
    </script>

<!-- TABS FOR THE "FOLLOWING" AND "POPULAR" FEEDS -->
<div class="tab">
	<button class="tablinks" onclick="openTab(event,'popular')" id="defaultOpen"><h1>Popular</h1></button>
	<button class="tablinks" onclick="openTab(event,'following')"><h1>Following</h1></button>
</div>

<!--Tab contents - Popular tab displays all the posts -->

<!-- POPULAR FEED --> 
<div id="popular" class="tabcontent" id="defaultOpen">
    <?php
    // RETRIEVE AND DISPLAY the posts from the 'post' table
    $query = $db->query("SELECT users.profilePicture, post.Caption, post.UserID, post.UserMedia, post.MediaReference, post.Timestamp, post.LikeCount, users.displayName, post.PostID
                         FROM post
                         JOIN users ON post.UserID = users.UserID
                         ORDER BY post.Timestamp DESC");


    if ($query === false) {
        echo "<p>Failed to load posts: " . $db->error . "</p>";
    }

    if ($query->num_rows > 0) {
        echo "<div class='feed'>";
        while ($row = $query->fetch_assoc()) {
            echo "<div class='posts'>";

            // Display profile picture and name
            if (!empty($row['profilePicture'])) {
                $profilePicture = htmlspecialchars($row['profilePicture']);
                echo "<div class='post-left'><img src='" . $profilePicture . "' alt='Profile Picture' id='profilePic'>";
            } else {
                echo "<div class='post-left'>";
            }
            
           // Display name with link to user profile
			echo '<a href="userProfile.php?displayName=' . urlencode($row['displayName']) . '">' . htmlspecialchars($row['displayName']) . '</a>';

            // Close the "post-left" div
            echo "</div>";

            // Follow/Unfollow button logic
            if ($row['displayName'] !== $_SESSION['displayName']) {
                $followCheckSql = "SELECT * FROM FollowingConnections WHERE UserID = ? AND FollowingID = ?";
                $followCheckStmt = $db->prepare($followCheckSql);
                $followCheckStmt->bind_param("ii", $userID, $row['UserID']);
                $followCheckStmt->execute();
                $isFollowing = $followCheckStmt->get_result()->num_rows > 0;
                $followCheckStmt->close();
				echo "<div class='action-btns'>";
                if ($isFollowing) {
                    echo "<button class='follow-button' data-userid='" . $row['UserID'] . "' data-action='unfollow'>Unfollow</button>";
                } else {
                    echo "<button class='follow-button' data-userid='" . $row['UserID'] . "' data-action='follow'>Follow</button>";
		} 
	    }
	    // Display like count					
	if ($row['displayName'] !== $_SESSION['displayName']){
	   $likeCountCheckSql = "SELECT COUNT(PostID) AS likeCount FROM likeTable WHERE PostID = ?";
	   $likeCountCheckStmt = $db->prepare($likeCountCheckSql);
	   $likeCountCheckStmt->bind_param("i", $row['PostID']);
	   $likeCountCheckStmt->execute(); $result = $likeCountCheckStmt->get_result();
	   $likeCount = $result->fetch_assoc()['likeCount']; $likeCountCheckStmt->close();
	   echo "<div><p style='font-size:16px;display:inline-block;'  id='like-count-{$row['PostID']}'>" . htmlspecialchars($likeCount) . "</p>";
	}
	    

	     // like/unlike button logic
            if ($row['displayName'] !== $_SESSION['displayName']) {
		$likeCheckSql = "SELECT * FROM likeTable WHERE UserID = ? AND PostID = ?";
		$likeCheckStmt = $db->prepare($likeCheckSql);
		$likeCheckStmt->bind_param("ii", $userID, $row['PostID']); 
		$likeCheckStmt->execute();
		$isLike = $likeCheckStmt->get_result()->num_rows > 0;
		$likeCheckStmt->close();


		if ($isLike) {
			echo "<button style='font-size:16px;display:inline-block;'  class='unlike-button' data-postid='" . $row['PostID'] . "' data-action='unlike'>
					<i class='fa-solid fa-heart' style='color:#FF2ECC'></i> 
				  </button>";
			
		} else {
			echo "<button style='font-size:16px;display:inline-block;'  class='like-button' data-postid='" . $row['PostID'] . "' data-action='like'>
					<i class='fa-regular fa-heart' style='color:#FF2ECC'></i> 
				  </button>";
		}
		echo "</div></div>";

	     }


	    echo "<div class='post-content'>";
	    
            // Display caption
            echo "<p>" . htmlspecialchars($row['Caption']) . "</p>";

            // Media reference link
            if (!empty($row['MediaReference'])) {
                echo "<a href='" . htmlspecialchars($row['MediaReference']) . "' target='_blank'>Check it out</a><br>";
            }

	    echo "</div>"; // Closing post-content div
	    
            // User media
            if (!empty($row['UserMedia'])) {
                echo "<img src='" . htmlspecialchars($row['UserMedia']) . "' alt='Post Image'>";
            }


	    // Add a delete button with a trash can icon if the logged-in user is the owner of the post
	if ($row['displayName'] === $_SESSION['displayName']) { // Match the UserID and display name 
            echo "<form action='deletePost.php' method='POST' style='display:inline;'>";
            echo "<input type='hidden' name='postID' value='" . $row['PostID'] . "'>";
            echo "<button type='submit' style='background: none; border: none; cursor: pointer;' onclick=\"return confirm('Are you sure you want to delete this post?');\">";
            echo "<i class='fas fa-trash-alt' style='color:pink;'></i>";
            echo "</button>";
            echo "</form>";
     }

            // Timestamp
            echo "<div class='small'>Posted on: " . $row['Timestamp'] . "</div>";

            // Close the posts div
            echo "</div>";
        }
        echo "</div>";
    } else {
        echo "<p>No posts available</p>";
    }

    $query->close();
    ?>
</div>

<!-- FOLLOWING CONTENT -->
<div id="following" class="tabcontent">
    <?php
   
    // SQL query to get posts from users the current user is following
    $query = $db->prepare("SELECT post.*, users.displayName, users.profilePicture
                           FROM post
                           JOIN FollowingConnections ON post.UserID = FollowingConnections.FollowingID
                           JOIN users ON post.UserID = users.UserID
                           WHERE FollowingConnections.UserID = ?
                           ORDER BY post.Timestamp DESC");
    $query->bind_param("i", $userID);
    $query->execute();
    $result = $query->get_result();

    // Check if any posts are returned
    if ($result->num_rows > 0) {
        echo "<div class='feed'>";
        while ($row = $result->fetch_assoc()) {
            echo "<div class='posts'>";

            // Display profile picture and display name
            if (!empty($row['profilePicture'])) {
                $profilePicture = htmlspecialchars($row['profilePicture']);
                echo "<div class='post-left'><img src='" . $profilePicture . "' alt='Profile Picture' id='profilePic'>";
            } else {
                echo "<div class='post-left'>";
            }

            // Display name with link to user profile
            echo '<a href="userProfile.php?displayName=' . urlencode($row['displayName']) . '">' . htmlspecialchars($row['displayName']) . '</a>';
            echo "</div>"; // Close post-left div

            // Follow/Unfollow button logic
            if ($row['displayName'] !== $_SESSION['displayName']) {
                $followCheckSql = "SELECT * FROM FollowingConnections WHERE UserID = ? AND FollowingID = ?";
                $followCheckStmt = $db->prepare($followCheckSql);
                $followCheckStmt->bind_param("ii", $userID, $row['UserID']);
                $followCheckStmt->execute();
                $isFollowing = $followCheckStmt->get_result()->num_rows > 0;
                $followCheckStmt->close();
				echo "<div class='action-btns'>";
                if ($isFollowing) {
                    echo "<button class='follow-button' data-userid='" . $row['UserID'] . "' data-action='unfollow'>Unfollow</button>";
                } else {
                    echo "<button class='follow-button' data-userid='" . $row['UserID'] . "' data-action='follow'>Follow</button>";
                }
            }

		// Display like count					
		if ($row['displayName'] !== $_SESSION['displayName']){
		   $likeCountCheckSql = "SELECT COUNT(PostID) AS likeCount FROM likeTable WHERE PostID = ?";
		   $likeCountCheckStmt = $db->prepare($likeCountCheckSql);
		   $likeCountCheckStmt->bind_param("i", $row['PostID']);
		   $likeCountCheckStmt->execute(); $result = $likeCountCheckStmt->get_result();
		   $likeCount = $result->fetch_assoc()['likeCount']; $likeCountCheckStmt->close();
		   echo "<div><p style='font-size:16px;display:inline-block;'  id='like-count-{$row['PostID']}'>" . htmlspecialchars($likeCount) . "</p>";
		}
			

			 // like/unlike button logic
				if ($row['displayName'] !== $_SESSION['displayName']) {
			$likeCheckSql = "SELECT * FROM likeTable WHERE UserID = ? AND PostID = ?";
			$likeCheckStmt = $db->prepare($likeCheckSql);
			$likeCheckStmt->bind_param("ii", $userID, $row['PostID']); 
			$likeCheckStmt->execute();
			$isLike = $likeCheckStmt->get_result()->num_rows > 0;
			$likeCheckStmt->close();


			if ($isLike) {
				echo "<button style='font-size:16px;display:inline-block;'  class='unlike-button' data-postid='" . $row['PostID'] . "' data-action='unlike'>
						<i class='fa-solid fa-heart' style='color:#FF2ECC'></i> 
					  </button>";
				
			} else {
				echo "<button style='font-size:16px;display:inline-block;'  class='like-button' data-postid='" . $row['PostID'] . "' data-action='like'>
						<i class='fa-regular fa-heart' style='color:#FF2ECC'></i> 
					  </button>";
			}
			echo "</div></div>";

			 }


            echo "<div class='post-content'>";
            
            // Display caption
            echo "<p>" . htmlspecialchars($row['Caption']) . "</p>";

            // Media reference link
            if (!empty($row['MediaReference'])) {
                echo "<a href='" . htmlspecialchars($row['MediaReference']) . "' target='_blank'>Check it out</a><br>";
            }

            echo "</div>"; // Close post-content div

            // User media
            if (!empty($row['UserMedia'])) {
                echo "<img src='" . htmlspecialchars($row['UserMedia']) . "' alt='Post Image'>";
            }

            // Add a delete button with a trash can icon if the logged-in user is the owner of the post
            if ($row['displayName'] === $_SESSION['displayName']) {
                echo "<form action='deletePost.php' method='POST' style='display:inline;'>";
                echo "<input type='hidden' name='postID' value='" . $row['PostID'] . "'>";
                echo "<button type='submit' style='background: none; border: none; cursor: pointer;' onclick=\"return confirm('Are you sure you want to delete this post?');\">";
                echo "<i class='fas fa-trash-alt' style='color:pink;'></i>";
                echo "</button>";
                echo "</form>";
            }

            // Timestamp
            echo "<div class='small'>Posted on: " . $row['Timestamp'] . "</div>";
            
            echo "</div>"; // Close posts div
        }
        echo "</div>"; // Close feed div
    } else {
        echo "<p>No posts available from the users you are following.</p>";
    }

    $query->close();
    ?>
</div>



<script>
document.addEventListener('DOMContentLoaded', function () {
    document.addEventListener('click', function (e) {
        // Check if a like or unlike button was clicked
        if (e.target.closest('.like-toggle-button')) {
            const button = e.target.closest('.like-toggle-button');
            const postID = button.getAttribute('data-postid');
            const action = button.getAttribute('data-action');
            
            // Send AJAX request to like.php
            fetch('like.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                },
                body: `postID=${postID}&action=${action}`
            })
            .then(response => response.json())
            .then(data => {
                if (data.status === 'success') {
                    // Update the like/unlike button
                    if (action === 'like') {
                        button.setAttribute('data-action', 'unlike');
                        button.classList.remove('like-button');
                        button.classList.add('unlike-button');
                        button.innerHTML = "<i class='fa-solid fa-heart' style='color:#FF2ECC'></i>";
                    } else {
                        button.setAttribute('data-action', 'like');
                        button.classList.remove('unlike-button');
                        button.classList.add('like-button');
                        button.innerHTML = "<i class='fa-regular fa-heart' style='color:#FF2ECC'></i>";
                    }

                    // Update the like count display
                    const likeCountElem = document.getElementById(`like-count-${postID}`);
                    let currentLikeCount = parseInt(likeCountElem.textContent) || 0;
                    likeCountElem.textContent = action === 'like' ? currentLikeCount + 1 : currentLikeCount - 1;
                } else {
                    console.error('Failed to update like status:', data.message);
                }
            })
            .catch(error => console.error('Error:', error));
        }
    });
});

</script>












<script>
document.getElementById("defaultOpen").click();
</script>

    <?php include 'elements/footer.php'; ?>
    <script src="post.js"></script>
    <script src="scripts.js"></script>

</body>
</html>