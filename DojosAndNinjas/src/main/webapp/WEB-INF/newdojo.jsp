<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
		<link rel="stylesheet" href="/CSS/stylesheet.css">
		<title>New Dojo</title>
	</head>
	<body>
		<div id="container">
			<div id="leftpanel">
				<h1>New Dojo</h1>
				<form:form action="/adddojo" method="post" modelAttribute="dojoObject">		  
				    <h2>
				        <form:label cssClass="label left" path="name">Name:</form:label>
				        <form:input cssClass="box" path="name"/>
				    </h2>
				    <input id="btn" type="submit" value="Create"/>	 
				</form:form>
			</div>
			<div id="rightpanel">
			<form:errors cssClass="red" path="dojoObject.*"/>
			</div>
		</div>
	</body>
</html>