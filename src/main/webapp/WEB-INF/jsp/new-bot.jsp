<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<c:set value="${pageContext.request.contextPath}" var="contextPath" />
<meta charset="UTF-8">
<spring:url value="/css" var="css" />
<spring:url value="/assets" var="assets" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="${css}/style.css">
<title>New Bot | Confident</title>
</head>
<body>
	<div class="bot-header">
		<div class="bot-header-inner">
			<img src="${assets}/logo.png">
		</div>
	</div>
	<div class="bot-content-container">
		<div class="header-container-selection">
			<p class="bot-title">New Bot</p>
			<a class="button-new" href="${contextPath}/segments">Segments</a>
		</div>
		<div class="card form">
			<form:form class="form-input" modelAttribute="botModel"
				action="${contextPath}/bots" method="post">

				<spring:hasBindErrors name="botModel">
					<div class="alert alert-fail">
						<form:errors path="*"></form:errors>
					</div>
				</spring:hasBindErrors>

				<form:input type="text" path="name" name="name" id="name"
					placeholder="Put bot name here" />
				<p class="error-message">
					<form:errors path="name" />
				</p>
				<br />
				<form:textarea type="text" path="welcomeMsg" name="welcomeMsg"
					id="welcomeMsg" placeholder="Put bot welcome message here."></form:textarea>
				<p class="error-message">
					<form:errors path="welcomeMsg" />
				</p>
				<br />
				<form:textarea type="text" path="farewellMsg" name="farewellMsg"
					id="farewellMsg" placeholder="Put bot farewell message here."></form:textarea>
				<p class="error-message">
					<form:errors path="farewellMsg" />
				</p>
				<br />
				<form:input type="text" path="downtime" name="downtime"
					id="downtime" placeholder="Put bot downtime message here." />
				<p class="error-message">
					<form:errors path="downtime" />
				</p>
				<br />
				<form:textarea type="text" path="defaultAnswer" name="defaultAnswer"
					id="defaultAnswer" placeholder="Put bot default answer here."></form:textarea>
				<p class="error-message">
					<form:errors path="defaultAnswer" />
				</p>
				<br />
				<input type="submit" value="Create Bot" />
			</form:form>
		</div>
		<a class="button-new bottom-button" href="${contextPath}/bots">Return</a>
	</div>
</body>
</html>