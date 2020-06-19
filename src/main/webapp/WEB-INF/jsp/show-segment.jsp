<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<spring:url value="/css" var="css" />
<spring:url value="/assets" var="assets" />
<c:set value="${pageContext.request.contextPath}" var="contextPath" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="${css}/style.css">
<title>Bot Details | Confident</title>
</head>
<body>
	<div class="bot-header">
		<div class="bot-header-inner">
			<img src="${assets}/logo.png">
		</div>
	</div>
	<div class="bot-content-container">
		<div class="header-container-selection">
			<p class="bot-title">${segment.name}</p>
			<a class="button-new" href="${contextPath}/bots">Bots</a>
		</div>
		<div class="card">
			<div class="bot-details">
				<div class="bot-name">
					Id:
					<p>${segment.id}</p>
				</div>
				<div class="bot-name">
					Name:
					<p>${segment.name}</p>
				</div>
				<div class="bot-name">
					Bot:
					<p>${segment.bot.name}</p>
				</div>
			</div>
		</div>
		<a class="button-new" href="${contextPath}/segments">Return</a>
	</div>
</body>
</html>