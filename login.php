<?php
session_start();
include 'mylib.php';
?>
<!--Filename: login.php
	Purpose: login page for FashionFinder prototype -->
<!DOCTYPE html>
<head> 
    <link rel="icon" href="https://fashion-finder.store/images/favicon.ico">
</head>
<body>
	
    <?php include 'elements/header.php'; ?>
	
    <!-- Login form  -->
    <div class="login-form" style ="margin: 5px 20px 5px 20px;">
        <h2>Login</h2>
        <form action="loginDB.php" method="POST">
            <label for="loginField">Display Name:</label>
            <input type="text" id="displayName" name="loginField" required><br><br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br><br>
            <button type="submit">Login</button>
        </form>
    </div>
	<?php include 'elements/footer.php'; ?>
</body>
</html>
