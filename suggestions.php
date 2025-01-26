<?php
session_start();
include 'mylib.php';
?>
<!--Filename: suggestions.php
	Purpose: suggestion page for FashionFinder -->
<!DOCTYPE html>
<head> 
    <link rel="icon" href="https://fashion-finder.store/images/favicon.ico">
</head>
<body>
	
    <?php include 'elements/header.php'; ?>
    <!-- Login form  -->
    <div class="suggestion-form" style ="margin: 5px 20px 5px 20px;">
        <h2>Suggestions</h2>
	<form action="suggestionsDB.php" method="POST">

	    <label for="userEmail">Enter your email (optional):</label>
	    <input type="text" id="userEmail" name="userEmail"<br><br>


	    <label for="subjectLine">Choose a subject:</label>
	    <select name="subjectLine" id="subjectLine">

	    <option value="addStore">Request to add a store to Fashion Finder</option>
	    <option value="reportBug">Report a bug</option>
	    <option value="featRequest">Request to add a new feature to Fashion Finder</option>
	    <option value="misc">Other/Miscellaneous</option>
	    </select><br><br>


	    <label for="description">Please describe your suggestion:</label>
            <input type="description" id="description" name="description" size="50" style="height:65px;"  required><br><br>
            <button type="submit">Submit</button>
        </form>
    </div>
	<?php include 'elements/footer.php'; ?>
</body>
</html>

