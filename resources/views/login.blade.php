<!DOCTYPE html>
<html lang="en">
<head>
	<title>Administrateur</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- ... Liens vers les feuilles de style et les scripts ... -->
	<style>
		body {
			font-family: Arial, sans-serif;
			background-color: #f2f2f2;
			margin: 0;
			padding: 0;
		}

		.limiter {
			width: 100%;
			margin: 0 auto;
		}

		.container-login100 {
			width: 100%;
			min-height: 100vh;
			display: flex;
			flex-wrap: wrap;
			justify-content: center;
			align-items: center;
			background: linear-gradient(to right, #00a8ff, #c0c0c0);
		}

		.wrap-login100 {
			width: 100%;
			max-width: 400px;
			background: #fff;
			border-radius: 10px;
			padding: 40px;
			box-shadow: 0 4px 20px 0 rgba(0, 0, 0, 0.1);
		}

		.login100-form-title {
			font-size: 24px;
			text-align: center;
			margin-bottom: 40px;
		}

		.input100 {
			border: 1px solid #ccc;
			padding: 10px;
			border-radius: 5px;
			width: 100%;
			margin-bottom: 20px;
		}

		.focus-input100 {
			display: block;
			width: 100%;
			height: 2px;
			background: #00a8ff;
			position: absolute;
			bottom: 0;
			left: 0;
			pointer-events: none;
		}

		.txt1 {
			color: #999;
		}

		.txt2, .txt3 {
			color: #00a8ff;
			text-decoration: none;
		}

		.txt2:hover, .txt3:hover {
			text-decoration: underline;
		}

		.login100-form-btn {
			background-color: #00a8ff;
			border: none;
			border-radius: 5px;
			color: white;
			padding: 10px 20px;
			cursor: pointer;
			transition: background-color 0.3s ease;
		}

		.login100-form-btn:hover {
			background-color: #007acc;
		}

		.flex-col-c {
			display: flex;
			flex-direction: column;
			align-items: center;
		}
	</style>
</head>
<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form p-l-55 p-r-55 p-t-178">
					<span class="login100-form-title">
						Alimentation Le Bon Samaritain
					</span>
					<div class="wrap-input100 validate-input m-b-16" data-validate="Please enter name">
						<input class="input100" type="text" name="name" placeholder="Entrez votre nom">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-16" data-validate="Please enter name">
						<input class="input100" type="text" name="name" placeholder="Entrez votre prenom">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-16" data-validate="Please enter username">
						<input class="input100" type="text" name="username" placeholder="Username">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Please enter password">
						<input class="input100" type="password" name="pass" placeholder="Password">
						<span class="focus-input100"></span>
					</div>

					<div class="text-right p-t-13 p-b-23">
						<span class="txt1">
							Forgot
						</span>

						<a href="#" class="txt2">
							Username / Password?
						</a>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Sign in
						</button>
					</div>

					<div class="flex-col-c p-t-170 p-b-40">
						<span class="txt1 p-b-9">
							Don’t have an account?
						</span>

						<a href="#" class="txt3">
							Sign up now
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- ... Scripts ... -->
</body>
</html>
