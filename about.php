<?php
session_start();
include 'mylib.php';
?>
<!--Filename: about.php
	Purpose: about page for FashionFinder prototype -->
<!DOCTYPE html>
<html lang="en">
<head> 
    <link rel="icon" href="https://fashion-finder.store/images/favicon.ico">
</head> 
<body>

    <?php include 'elements/header.php'; ?>
	
    <div class="about">
		<h1>About Fashion Finder</h1>
		<p>Fashion Finder was created in 2025 by four female computer science students – Estella, 
		Kate, Shannen, and Eve – as part of our senior capstone project. We're all passionate about fashion, 
		and we wanted to build a platform where people who love fashion can come together and share ideas.</> 
		<p>Fashion Finder is a mix of a social media platform and a tool designed to make online shopping 
		easier. Before we created Fashion Finder, shopping online meant hopping from one website to another – 
		Nordstrom to Forever21 to PacSun, and so on. Now, with Fashion Finder, you can search for the clothing 
		you want and see results from multiple stores all in one place. It’s the ultimate shopping shortcut, 
		making it easier than ever to find what you're looking for across tons of stores!</p><br>

        <div class="row">

            <div class="col">
                <h2>Competitive Advantage</h2>  
                <p>Fashion Finder is an innovative online shopping tool that revolutionizes the way users shop by
                allowing them to explore multiple stores in one place. This streamlined approach makes the 
                shopping experience faster, more convenient, and less overwhelming. With a wide range of brands 
                and retailers at your fingertips, users can compare products effortlessly and find exactly what 
                they’re looking for in one seamless platform.
                What sets Fashion Finder apart is its integration of social media features, adding a fun and 
                interactive element to the shopping process. Blending the best aspects of Pinterest and 
                Instagram, the platform enables users to not only shop but also connect with others, share their 
                favorite outfits, and discover new styles. Shoppers can follow influencers, engage with fellow 
                users, and create personalized style boards, making it a hub for fashion inspiration. This unique 
                combination of shopping and social engagement fosters a sense of community while enhancing 
                the overall user experience.
                Whether you're hunting for a specific item or simply browsing for inspiration, Fashion Finder brings 
                all your fashion needs together in one place—offering a dynamic, enjoyable, and collaborative 
                shopping journey.</p><br> 
            </div>

            <div class="col">
                <h2>Target Market</h2>
                <p>Fashion-minded individuals who love discovering new styles and sharing their developed outfits
		with a like-minded community. Fashion Finder is perfect for trendsetters, style enthusiasts, and
                anyone who enjoys browsing and curating fashion inspiration. Our platform appeals to those who 
                want to connect with others over shared fashion interests and stay up-to-date with the latest trends,
                all while fostering a positive, supportive atmosphere. Whether you're an influencer, fashion lover, 
                or simply looking for fresh ideas, Fashion Finder is the space for you to explore and express your 
                unique style.</p> <br>
            </div>
        </div>
		
		<h1>Don’t see your favorite store?</h1>
		<p>No problem! Navigate to <a href="suggestions.php">Suggestions</a>.
		From there, select the ‘Request to add a store to Fashion Finder’ option. 
		Simply leave the same of your store and give our team a few days to update 
		Fashion Finder with your requested store!</p>
		
        <h2>Architecture</h2>
        <img src="images/arch.png" alt="Architecture diagram" style="width:100%;">
		<div class="about" id="about-team">
			<h1>About Our Team</h1> 
            <div class="row">
                <div>
                    <h3>Shannen Cawley</h3>
                    <p>Backend Developer - API</p>
                    <!--<img src="images/sc-ol.png" alt="Shannen Pic" width="100%" height="100%">-->
                </div>
                <div>
                    <h3>Eve Collier</h3>
                    <p>Backend Developer - API</p>
                    <!--<img src="images/ec.png" alt="Eve Pic" width="100%" height="100%">-->
                </div>
                <div>
                    <h3>Estella Mercado</h3>
                    <p>Database - Social Media</p>
                    <!--<img src="images/em.png" alt="Estella Pic" width="100%" height="100%">-->
                </div>
                <div>
                    <h3>Kate Fedotova</h3>
                    <p>UI/UX Developer</p>
                    <!--<img src="images/kf-ol.png" alt="Kate Pic" width="100%" height="100%">-->
                </div>
            </div>
		</div>
	</div>
	

	<?php include 'elements/footer.php'; ?>
</body>
</html>
