<?php
//	session_start();
//	$displayName = $_SESSION['displayName']; // check for displayName

//	if ($_SERVER['REQUEST_METHOD'] == 'POST') {
//		if ($_FILES['fileToUploadNep']['error'] > 0) { // check for any errors during file upload
//			echo 'Error: ' . $_FILES['fileToUploadNep']['error'];
//		} else {
			// file upload was successful

			// directory for the user's profile pictures
//			$userDir = 'users/' . $displayName . '/';
//			if (!file_exists($userDir)) {
//				mkdir($userDir, 0777, true); // recursive directory creation
//			}
//
//			$fileName = basename($_FILES['fileToUploadNep']['name']);
//			$targetFilePath = $userDir . $fileName;
//			
//			if (move_uploaded_file($_FILES['fileToUploadNep']['tmp_name'], $targetFilePath)) {
//				echo 'The file ' . htmlspecialchars($fileName) . ' has been uploaded.';
//			} else {
// 				echo 'Sorry, there was an error uploading your file.';
//			}
//		}
//	} else {
//		header('Location: index.html');
//		exit();
//	}
?>


<?php
	session_start();
	$displayName = $_SESSION['displayName']; // check for displayName

	$target_dir = 'users/' . $displayName . '/';
	$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
	$uploadOk = 1;
	$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
	// Check if image file is a actual image or fake image
	if(isset($_POST["submit"])) {
	  $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
	  if($check !== false) {
		echo "File is an image - " . $check["mime"] . ".";
		$uploadOk = 1;
	  } else {
		echo "File is not an image.";
		$uploadOk = 0;
	  }
	}
?>