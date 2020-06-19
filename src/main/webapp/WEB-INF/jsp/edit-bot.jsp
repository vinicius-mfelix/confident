<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<c:set value="${pageContext.request.contextPath}" var="contextPath" />
<spring:url value="/css" var="css" />
<spring:url value="/assets" var="assets" />
<meta charset="UTF-8">
<title>Update Bot | Confident</title>
<link rel="stylesheet" href="${css}/style.css">
</head>
<body>
	<div class="bot-header">
		<div class="bot-header-inner">
			<img src="${assets}/logo.png">
		</div>
	</div>
	<div class="bot-content-container">
		<div class="header-container-selection">
			<p class="bot-title">Update Bot</p>
			<a class="button-new" href="${contextPath}/segments">Segments</a>
		</div>
		<div class="card form">
			<form:form class="form-input" modelAttribute="botModel"
				action="${contextPath}/bots/${botModel.id}" method="put">

				<spring:hasBindErrors name="botModel">
					<div class="alert alert-fail">
						<form:errors path="*"></form:errors>
					</div>
				</spring:hasBindErrors>


				<form:input type="text" id="name" path="name" />
				<p class="error-message">
					<form:errors path="name" />
				</p>
				<br />
				<form:textarea type="text" id="welcomeMsg" path="welcomeMsg"></form:textarea>
				<p class="error-message">
					<form:errors path="welcomeMsg" />
				</p>
				<br />
				<form:textarea type="text" id="farewellMsg" path="farewellMsg"></form:textarea>
				<p class="error-message">
					<form:errors path="farewellMsg" />
				</p>
				<br />
				<form:textarea type="text" id="downtime" path="downtime"></form:textarea>
				<p class="error-message">
					<form:errors path="downtime" />
				</p>
				<br />
				<form:textarea type="text" id="defaultAnswer" path="defaultAnswer"></form:textarea>
				<p class="error-message">
					<form:errors path="defaultAnswer" />
				</p>
				<br />

				<input type="submit" value="Update" />

			</form:form>
		</div>
		<a class="button-new" href="${contextPath}/bots">Return</a>
	</div>
</body>
</html>

