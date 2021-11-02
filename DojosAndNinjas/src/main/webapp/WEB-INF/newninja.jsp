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
		<title>New Ninja</title>
	</head>
	<body>
		<div id="container">
			<div id="leftpanel">
				<h1>New Ninja</h1>
				<form:form action="/addninja" method="post" modelAttribute="ninjaObject">
	   			    <h2>
	   			        <form:label cssClass="label left" path="dojo">Dojo:</form:label>
	   			    	<form:select cssClass="box" path="dojo">
	   			    		<c:forEach items="${ninjas}" var="ninja">
	   			    			<form:option value="${ninja}"><c:out value="${ninja.name}"/></form:option>
			    			</c:forEach>
	 			    	</form:select>
				    </h2>		  
				    <h2>
				        <form:label cssClass="label left" path="firstName">First Name:</form:label>
				        <form:input cssClass="box" path="firstName"/>
				    </h2>
	   			    <h2>
				        <form:label cssClass="label left" path="lastName">Last Name:</form:label>
				        <form:input cssClass="box" path="lastName"/>
				    </h2>
	   			    <h2>
				        <form:label cssClass="label left" path="age">Age:</form:label>
				        <form:input cssClass="box" path="age"/>
				    </h2>
				    <input id="btn" type="submit" value="Create"/>	 
				</form:form>
			</div>
			<div id="rightpanel">
			<form:errors cssClass="red" path="ninjaObject.*"/>
			</div>
		</div>
	</body>
</html>