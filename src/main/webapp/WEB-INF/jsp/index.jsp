<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<c:set value="${pageContext.request.contextPath}" var="contextPath" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Confident | Tell Everything you want</title>
<link rel="stylesheet" href="css/style.css">
<link
	href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300&display=swap"
	rel="stylesheet">
</head>
<body>
	<div class="default-background first-background"></div>
	<div class="default-background color-background"></div>
	<div class="header-container">
		<header>
			<img src="assets/logo.png">
			<nav>
				<ul>
					<a href="#"><li>Home</li></a>
					<a href="#"><li>Who are we?</li></a>
					<a href="#"><li>Bots</li></a>
					<a href="#"><li>App</li></a>
				</ul>
			</nav>
		</header>
		<div class="main-title">
			<p class="main">Tell Everything you want, any time.</p>
			<p class="second">
				We will hear you at any moment that you need<i
					class="fas fa-comment-dots"></i>
			</p>
		</div>
	</div>
	<div class="wrapper-about">
		<div class="content-container">
			<p class="about-title">We do it for love.</p>
			<div class="bar-row">
				<div class="bar"></div>
				<i class="fas fa-heart"></i>
				<div class="bar right"></div>
			</div>
			<p class="about-text">Some people tell you that there are not
				anything better than unburden your feelings with someone, well, we
				agree in parts. Sometimes the person you are trying to talk is not
				so much available as you expect. Thinking at this point, we made
				your confident talker, Skyne. You can call her at any moment in the
				chat. See? These things cannot wait too long! She is our confident
				here too, and help us a lot!</p>
			<i class="fas fa-robot"></i>
		</div>
	</div>
	<div class="default-background second-background"></div>
	<div class="default-background color-background"></div>
	<div class="bots-container">
		<p class="bots-text">
			Check out and manage your bots and segments.<i class="fas fa-table"></i>
			<a href="${contextPath}/bots">Check out here.</a>
		</p>
	</div>

	<script src="https://kit.fontawesome.com/be26d3ac3b.js"
		crossorigin="anonymous"></script>
</body>
</html>