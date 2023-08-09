<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Login</title>
	<style>
		body {
			font-family: Arial, sans-serif;
			background-color: #f0f0f0;
			display: flex;
			justify-content: center;
			align-items: center;
			height: 100vh;
			margin: 0;
		}
		.form-container {
			background-color: #ffffff;
			padding: 20px;
			border-radius: 10px;
			box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.1);
			width: 320px;
			text-align: center;
		}
		.form-container h2 {
			margin-bottom: 15px;
			color: #333;
		}
		.form-group {
			margin-bottom: 15px;
		}
		.form-group label {
			display: block;
			margin-bottom: 5px;
			color: #555;
		}
		.form-group input {
			width: 100%;
			padding: 10px;
			border: 1px solid #ccc;
			border-radius: 5px;
		}
		.btn-primary {
			background-color: #007bff;
			color: #fff;
			padding: 10px 20px;
			border: none;
			border-radius: 5px;
			cursor: pointer;
			transition: background-color 0.3s;
		}
		.btn-primary:hover {
			background-color: #0056b3;
		}
	</style>
</head>
<body>
	<div class="form-container">
        <h1>Bon Samaritain</h1>
		<h2>Login</h2>
		<form action="{{ route('auth.login') }}" method="post">
			@csrf
			<div class="form-group">
				<label for="email">Email:</label>
				<input type="email" name="email" class="form-control" required>
			</div>
			<div class="form-group">
				<label for="password">Password:</label>
				<input type="password" name="password" class="form-control" required>
			</div>
			<button type="submit" class="btn btn-primary">Login</button>
		</form>
	</div>
</body>
</html>
