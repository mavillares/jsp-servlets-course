<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	//Just create some sample data... normally provided by MVC
	
	String[] cities = {"Mumbai", "Singapore", "Philadelphia"};
	
	pageContext.setAttribute("myCities", cities);

%>
	<c:forEach var="tempCity" items="${myCities}">
		${tempCity} <br/>
	</c:forEach>
</body>
</html>