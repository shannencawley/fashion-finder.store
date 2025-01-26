<?php
// Include the database connection
include_once 'mylib.php';
db_connect();
global $db;

// Check if the user is logged in
$userLoggedIn = isset($_SESSION['email']);

$profilePicture = null; // Default to null

if ($userLoggedIn) {
    // Get the logged-in user's email from the session
    $userEmail = $_SESSION['email'];

    // Fetch the profile picture from the database
    $sql = "SELECT profilePicture FROM users WHERE email = ?";
    $stmt = $db->prepare($sql);
    $stmt->bind_param("s", $userEmail);
    $stmt->execute();
    $stmt->bind_result($profilePicture);
    $stmt->fetch();
    $stmt->close();

    // Debug output to check if the profile picture is retrieved correctly
    if (!empty($profilePicture)) {
        echo "<!-- Debug: Profile Picture Path from DB: " . htmlspecialchars($profilePicture) . " -->";
    } else {
        echo "<!-- Debug: No profile picture set in the database -->";
    }
}
?>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>fashion finder</title>
	<link rel="stylesheet" type= "text/css" href="styles.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Chakra+Petch:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">
	
	<!--cursor by
	https://github.com/tholman/cursor-effects?tab=readme-ov-file
	-->
	<script src="https://unpkg.com/cursor-effects@latest/dist/browser.js"></script>
</head>

<!-- Header code -->
<div class="logo-container">
    <a href="index.php">
		<img src="images/fashion-finder.png" alt="Fashion Finder Logo" class="logo">
		<img src="images/fashion-finder-small.png" alt="Fashion Finder Logo Small" class="logo-small">
	</a>
</div>

<header>
	
    <div class="container">
        <nav>
            <ul>
                <li><a href="shop.php">Shop</a></li>
                <li><a href="about.php">About</a></li>
                <li>
                    <?php
                    // Check if the user is logged in
                    if ($userLoggedIn) {
                        echo '<a href="feed.php">Feed</a>';
                    }
                    ?>
                </li>
				<li>
                    <?php
                    // Check if the user is logged in
                    if ($userLoggedIn) {
                        echo '<a href="logout.php">Sign out? </a><a href="profile.php">'. $_SESSION['displayName'] . '</a>';
                    } else {
                        // If not logged in, show the login link
                        echo '<a href="login.php">LOGIN</a> / <a href="signUp.php">SIGN UP</a>';
                    }
                    ?>
                </li>
		<?php if ($userLoggedIn && !empty($profilePicture)) : ?>
                    <li class="profile-picture-item">
                        <a href="profile.php"><img src="<?php echo htmlspecialchars($profilePicture); ?>" alt="Profile Picture" class="profile-pic"></a>
                    </li>
                <?php endif; ?>				
            </ul>
        </nav>
	
    </div>
</header>


<!--cursor by
https://github.com/tholman/cursor-effects?tab=readme-ov-file
-->
<script>
window.addEventListener("load", (event) => {
  new cursoreffects.fairyDustCursor();
});
</script>

