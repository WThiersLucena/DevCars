<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login ADM</title>

<!-- CSS Bootstrap -->
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet">

<!-- CSS Local -->
<link rel="stylesheet" href="login1.css">

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>
</head>
<body class="text-center" style="background: black;">

	<main class="form-signin">
		<form>
			<img class="mb-4" src="logo-rev01.jpeg" alt="logo-devcars"
				width="210" height="210">

			<div class="form-floating">
				<input type="email" class="form-control" id="floatingInput"
					placeholder="name@example.com"> <label for="floatingInput">Email
					Coorporativo</label>
			</div>

			<div class="form-floating">
				<input type="senha" class="form-control" id="floatingPassword"
					placeholder="Senha"> <label for="floatingPassword">Senha</label>
			</div>

			<button class="w-100 btn btn-lg btn" type="submit">
				<a href="#">Entrar</a>
			</button>
			<br>
			<p class="mt-5 mb-3 text-muted copyright">&copy; DevCars,
				2021-2022</p>
		</form>
	</main>

	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

</body>
</html>