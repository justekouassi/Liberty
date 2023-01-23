<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %><!DOCTYPE html>
<html lang="fr-FR">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="favicon_io/apple-touch-icon.png" rel="apple-touch-icon" sizes="180x180">
	<link type="image/png" href="favicon_io/favicon-32x32.png" rel="icon" sizes="32x32">
	<link type="image/png" href="favicon_io/favicon-16x16.png" rel="icon" sizes="16x16">
	<link href="site.webmanifest" rel="manifest">

	<link href="css/login.css" rel="stylesheet">
	<title>Connexion | Liberty</title>
</head>

<body class="body">

	<p class="bienvenue">Bienvenue sur Liberty</p>
	<img src="Liberty.png" alt="Logo Liberty" class="logo" width="70px">
	<form class="form" method="POST" action="/login">
		<div class="title">Connexion</div>
		<div class="input-container">
			<input class="input" id="pseudo" name="pseudo" type="text" placeholder=" " />
			<div class="cut-short"></div>
			<label class="placeholder" for="pseudo">Pseudo<label />
		</div>
		<div class="input-container">
			<input class="input" id="motdepasse" name="motdepasse" type="password" placeholder=" " />
			<div class="cut-short"></div>
			<label class="placeholder" for="motdepasse">Mot de passe<label />
		</div>
		<button class="submit" type="submit">Se connecter</button>
		<a class="signup-text" href="signup.html">Vous n'êtes pas encore inscrit ?</a>
	</form>

</body>

</html>