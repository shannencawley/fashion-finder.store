	<button class="open-button" onclick="openForm()">Login</button>

    <div class="form-popup" id="myForm">
        <form action="login.php" method="POST" class="form-container">
            <h1>Login</h1>

            <label for="loginField"><b>Display Name</b></label>
            <input type="text" placeholder="Enter Display Name" name="loginField" required>

            <label for="password"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="password" required>

            <button type="submit" class="btn">Login</button>
            <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
        </form>
    </div>

	<script>
	function openForm() {
	  document.getElementById("myForm").style.display = "block";
	}

	function closeForm() {
	  document.getElementById("myForm").style.display = "none";
	}
	</script>