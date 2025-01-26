<footer class="footer">
        <div class="footer__addr">
            <img src="images/fashion-finder-small.png" alt="Fashion Finder Logo Small" width="100" height="100">
            <br>
            <h2 style="text-align:left;">Contact</h2>
            
            <address>
            15200 Kutztown Rd, Kutztown, PA 19530<br>
                
            <a class="footer__btn" href="mailto:closet@fashion-finder.store">Email Us</a> 

            </address>
        </div>
    
	
        <ul class="footer__nav">
            <li class="nav__item">
                <h2 class="nav__title">Info</h2>

                <ul class="nav__ul">
                    <li>
                         <a href="about.php">About Us</a>
                    </li>
					
					<li>
                        <a href="https://www.instagram.com/fashionfinderstore/">Instagram</a>
                    </li>
					<li>
			<a href="legal/FashionFinderTermsofUse.pdf">Terms of Use</a>

		    </li>
                    <li>
                        <a href="legal/FashionFinderPrivacyPolicy.pdf">Privacy Policy</a>
                    </li>


                </ul>
	    </li>
            
            
            <li class="nav__item">
                <h2 class="nav__title">Help</h2>
                
		<ul class="nav__ul">
                    <li>
                        <a href="legal/FashionFinderUserManual.pdf">User Manual</a>
                    </li>
                    <li>
                        <a href="suggestions.php">Suggestions</a>
		    </li>

                    <li> 
			<a href="vendors.php">Sell With Us!</a>
                    </li>
                    
                    <li>
                        <a href="legal/FashionFinderFAQ.pdf">FAQ</a>
                    </li>
                </ul>
            </li>
        </ul>
        
        <div class="legal">
            <p>&copy; 2024 Fashion Finder. All rights reserved.</p>
            
            <div class="legal__links">
            <span>Made with <span class="heart">♥</span> by FashionFinders</span>
            </div>
        </div>
	<script src="scripts.js"></script>
</footer>
<?php 
	// Check if the user is not logged in
	if ($userLoggedIn($_SESSION['email'])) {
		// Include the login popup only if the user is not logged in
		include 'elements/loginPopUp.php';
	}
?>
