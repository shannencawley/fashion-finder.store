<?php
session_start();
include 'mylib.php';
?>
<!--Filename: vendors.php
	Purpose: vendor request to add store page for FashionFinder -->
<!DOCTYPE html>
<head> 
    <link rel="icon" href="https://fashion-finder.store/images/favicon.ico">
</head>
<body>
	
    <?php include 'elements/header.php'; ?>
    <!-- Login form  -->
    <div class="suggestion-form" style ="margin: 5px 20px 5px 20px;">
        <h2>Want to see your brand featured on Fashion Finder? Submit the information below, and our team will be in touch with more details!</h2>
	<form action="vendorsDB.php" method="POST">

	    <label for="userEmail">Enter your business email:</label>
	    <input type="text" id="vendorEmail" name="vendorEmail"<br><br>


	    <label for="vendorStore">Enter the name of your brand:</label>
	    <input type="text" id="vendorStore" name="vendorStore"<br><br>


	    <label for="description">Is there any additional information you'd like to share?(optional):</label>
            <input type="description" id="vendorComment" name="vendorComment" size="50" style="height:65px;"  required><br><br>
            <button type="submit">Submit</button>
        </form>
    </div>
	<?php include 'elements/footer.php'; ?>
</body>
</html>

