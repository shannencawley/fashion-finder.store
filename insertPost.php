<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

session_start();
include 'mylib.php'; // Include your database connection file
db_connect(); // Establish the database connection
global $db; // Use the global $db variable for the connection

$db->set_charset("utf8mb4");

// Check if the user is logged in
if (!isset($_SESSION['email'])) {
    echo json_encode(["status" => "error", "message" => "User not logged in."]);
    exit();
}

$userEmail = $_SESSION['email'];

// Fetch UserID from session
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

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Fetch user inputs from the form
    $caption = $_POST['caption'] ?? '';
    $boughtID = $_POST['boughtID'] ?? null;  // Can be NULL
    $userMedia = null; 		      //$_POST['itemSrc'] ?? null;    
    $mediaReference = $_POST['itemLink'] ?? null; 
    
    // Validate inputs
    if (empty($caption) || empty($mediaReference)) {
        echo "<script>alert('Caption and Item Link are required!'); window.location.href='feed.php';</script>";
        exit();
    }

    // Handle user-uploaded media
    if (isset($_FILES['mediaReference']) && $_FILES['mediaReference']['error'] == 0) {
        $uploadDir = 'users/' . $userID . '/';  // Create a directory based on the UserID
        
        // Check if the directory exists, if not, create it
        if (!is_dir($uploadDir)) {
            mkdir($uploadDir, 0777, true);
        }

        // Get the uploaded file's name and move it to the user's directory
        $fileName = basename($_FILES['mediaReference']['name']);
        $filePath = $uploadDir . $fileName;

        // Move the uploaded file to the user's directory
        if (move_uploaded_file($_FILES['mediaReference']['tmp_name'], $filePath)) {
            $userMedia = $filePath;  // Store the file path in UserMedia
        } else {
            echo "<script>alert('Failed to upload media.'); window.location.href='feed.php';</script>";
            exit();
        }
    }







    
    // If no media file is uploaded but a bought item is selected, use the bought item's itemSrc
    if (empty($userMedia) && !empty($_POST['itemSrc'])) {
        $userMedia = $_POST['itemSrc'];
    }

    // If neither or the upload fields are empty, just use the itemSrc from bought list
    if (!empty($userMedia) && !empty($_POST['itemSrc'])) {
	$userMedia = $_POST['itemSrc'];
    }

    // If boughtID is empty, set it to NULL for the database
    if (empty($boughtID)) {
        $boughtID = null;
    }

    // Prepare and execute the SQL insert statement
    $query = $db->prepare("INSERT INTO post (UserID, BoughtID, UserMedia, MediaReference, Caption) VALUES (?, ?, ?, ?, ?)");
    
    // Using `iisss` if BoughtID is provided, but use a ternary to handle NULL BoughtID
    $query->bind_param("iisss", $userID, $boughtID, $userMedia, $mediaReference, $caption);
    
    $query->execute();

    // Check if the row was inserted successfully
    if ($query->affected_rows > 0) {
        echo "<script>alert('Post created successfully!'); window.location.href='feed.php';</script>";
    } else {
        echo "<script>alert('Failed to create post!'); window.location.href='feed.php';</script>";
    }

    // Close the query and the database connection
    $query->close();
    $db->close();
} else {
    die("Invalid request method");
}
?>
