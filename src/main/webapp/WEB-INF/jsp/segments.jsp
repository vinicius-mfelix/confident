<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<c:set value="${pageContext.request.contextPath}" var="contextPath" />
<spring:url value="/css" var="css" />
<spring:url value="/assets" var="assets" />
<meta charset="UTF-8">
<title>Confident | Segments</title>
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
			<p class="bot-title">Segments</p>
			<a class="button-new" href="${contextPath}/bots">Bots</a>
		</div>
		<c:if test="${not empty message}">
			<div class="alert alert-success">
				<p>${message}</p>
			</div>
		</c:if>
		<c:forEach items="${segments}" var="segment">
			<div class="card">
				<div class="bot-details">
					<div class="bot-name">
						Name:
						<p>${segment.name}</p>
					</div>
				</div>
				<div class="button-action-list">
					<form:form action="${contextPath}/segments/${segment.id}"
						method="delete">
						<a class="details" href="${contextPath}/segments/${segment.id}">Details</a>
						<a class="update"
							href="${contextPath}/segments/form?page=edit-segment&id=${segment.id}">Update
							Segment</a>
						<input type="submit" value="Delete" />
					</form:form>
				</div>
			</div>
		</c:forEach>
		<a class="button-new"
			href="${contextPath}/segments/form?page=new-segment">Add new
			segment</a>
	</div>
</body>
</html>