<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<c:set value="${pageContext.request.contextPath}" var="contextPath" />
<spring:url value="/css" var="css" />
<spring:url value="/assets" var="assets" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="${css}/style.css">
<title>Confident | Bots</title>
</head>
<body>
	<div class="bot-header">
		<div class="bot-header-inner">
			<img src="${assets}/logo.png">
		</div>
	</div>
	<div class="bot-content-container">
		<div class="header-container-selection">
			<p class="bot-title">Bots</p>
			<a class="button-new" href="${contextPath}/segments">Segments</a>
		</div>
		<c:if test="${not empty message}">
			<div class="alert alert-success">
				<p>${message}</p>
			</div>
		</c:if>
		<c:forEach items="${bots}" var="bot">
			<div class="card">
				<div class="bot-details">
					<div class="bot-name">
						Name:
						<p>${bot.name}</p>
					</div>
					<div class="bot-name">
						Downtime:
						<p>${bot.downtime}seconds</p>
					</div>
					<div class="bot-name">
						Default Answer:
						<p>${bot.defaultAnswer}</p>
					</div>
				</div>
				<div class="button-action-list">
					<form:form action="${contextPath}/bots/${bot.id}" method="delete">
						<a class="details" href="${contextPath}/bots/${bot.id}">Details</a>
						<a class="update"
							href="${contextPath}/bots/form?page=edit-bot&id=${bot.id}">Update
							Bot</a>
						<input type="submit" value="Delete" />
					</form:form>
				</div>
			</div>
		</c:forEach>
		<a class="button-new" style="margin-top: 50px;"
			href="${contextPath}/bots/form?page=new-bot">Add new bot</a>
	</div>
</body>
</html>