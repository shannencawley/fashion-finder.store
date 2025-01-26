<?php
session_start();
include 'mylib.php';
?>
<!--Filename: index.php
	Purpose: home page for FashionFinder prototype -->
<!DOCTYPE html>
<html lang="en">
<head> 
    <link rel="icon" href="https://fashion-finder.store/images/favicon.ico">
    <link rel="stylesheet" href="styles.css">
</head>
<style>
	.CTA-card {
	  display: flex;
	  align-items: center;
	  justify-content: center;
	  height: 500px;
	  width: 100;
	  font-family: 'Questrial', sans-serif;
	}

	.CTA-card-text-items {
	  display: flex;
	  flex-direction: column;
	  position: absolute;
	  align-items: center;
	  width: 100%;
	}

	.CTA-card-background-img-holder {
	  border-radius: 8px;
	  height: 100%;
	  width: 100%;
	}

	.CTA-img {
	  height: 100%;
	  width: 100%; 
	  position: static;
	  object-fit: cover;
	  box-sizing: border-box;
	  border-radius: 4px;
	}
	.CTA-card-button-box {
	  align-items: center;
	}

	.CTA-card-button {
	  background-color: #000;
	  border: none;
	  outline: none;
	  font-size: 14px;
	  line-height: 22px;
	  border-radius: 4px;
	  padding: 10px 30px;
	  color: #fff;
	  font-weight: 600;
	}

	.CTA-card-title {
	  text-align: center;
	  color: #000;
	  text-shadow:
	  3px 3px 0 #fff,
      -3px 3px 0 #fff,
      -3px -3px 0 #fff,
      3px -3px 0 #fff;
		
	}
	
</style>
<body>

	<?php include 'elements/header.php'; ?>
	
	<main>
	
	</main>
	<div class="CTA-card">
	  <div class="CTA-card-text-items">
		<div class="CTA-card-title">
		  <h1>What are you waiting for?</h1>
		</div>
		<div class="CTA-card-button-box">
		  <a href="https://www.fashion-finder.store/shop.php"><button type="button" class="CTA-card-button">SHOP</button></a>
		</div>
	  </div>
	  <div class="CTA-card-background-img-holder">
		<img src="images/hero.jpeg" class="CTA-img" alt="Happy people">
	  </div>
	</div>
	
	<!--<div class="CTA-card">
	  <div class="CTA-card-text-items">
		<div class="CTA-card-title">
		  <h1>Find Your Prom Dress</h1>
		</div>
		<div class="CTA-card-button-box">
		  <a href="https://www.fashion-finder.store/shop.php#gsc.tab=0&gsc.q=prom"><button type="button" class="CTA-card-button">DRESSES</button></a>
		</div>
	  </div>
	  <div class="CTA-card-background-img-holder">
		<img src="images/new-hero1.jpeg" class="CTA-img"/>
	  </div>
	</div>
	
	<div class="CTA-card">
	  <div class="CTA-card-text-items">
		<div class="CTA-card-title">
		  <h1>Professional Clothes</h1>
		</div>
		<div class="CTA-card-button-box">
		  <a href="https://www.fashion-finder.store/shop.php#gsc.tab=0&gsc.q=internship%20clothes"><button type="button" class="CTA-card-button">SHOP</button></a>
		</div>
	  </div>
	  <div class="CTA-card-background-img-holder">
		<img src="images/new-hero3.jpeg" class="CTA-img"/>
	  </div>
	</div>-->
    <?php include 'elements/footer.php'; ?>
</body>
</html>
