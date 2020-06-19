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
<title>Update Segment | Confident</title>
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
			<p class="bot-title">Update Segment</p>
			<a class="button-new" href="${contextPath}/bots">Bots</a>
		</div>
		<div class="card form">
			<form:form class="form-input" modelAttribute="segmentModel"
				action="${contextPath}/segments/${segmentModel.id}" method="put">

				<spring:hasBindErrors name="segmentModel">
					<div class="alert alert-fail">
						<form:errors path="*"></form:errors>
					</div>
				</spring:hasBindErrors>

				<form:input type="text" path="name" name="name" id="name"
					value="${segment.name}" />
				<p class="error-message">
					<form:errors path="name" />
				</p>
				<br />
				<form:select path="bot.id">
					<form:options items="${bots}" itemLabel="name" itemValue="id" />
				</form:select>

				<input type="submit" value="Update" />

			</form:form>
		</div>
		<a class="button-new" href="${contextPath}/segments">Return</a>
	</div>
</body>
</html>

