<?php
session_start();
include 'mylib.php';
?>
<!--Filename: shop.php
	Purpose: shop page for FashionFinder prototype -->
<!DOCTYPE html>
<html lang="en">
<head> 
    <link rel="icon" href="https://fashion-finder.store/images/favicon.ico">
	<script src="elements/scripts.js" defer></script>
</head>
<body>
    <?php include 'elements/header.php'; ?>
	
	<!-- <div id="image-info"></div>
	<div class="image-display"></div>-->

    <main>
	   
	<!-- SEARCH BAR -->
		<script async src="https://cse.google.com/cse.js?cx=e42db96d918aa4f45">
		</script>
		<div class="gcse-searchbox" styles="margin: 0px 20px 0px 20px"></div>
		<div class="gcse-searchresults" data-mobileLayout="enabled" data-disableWebSearch="true">
	<!---------------->

    </main>


<div class="actions">
		<!-- Save Button - Only visible if the user is logged in -->
                <?php if ($userLoggedIn) { ?>
                        <button id="save-header-button" >Favorite</button>
		<!-- Save Button - Only visible if the user is logged in -->
                        <button id="bought-header-button" >Mark as Bought</button>
                <?php } ?>
		
</div>

    <?php include 'elements/footer.php'; ?>
	
</body>
</html>
