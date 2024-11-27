<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:set var="data" value="luv2code"/>
Length of the string <b>${data}</b>: ${fn:length(data)}

<br></br>
Uppercase version of the string <b>${data}</b>: ${fn:toUpperCase(data)}
<br></br>
Does the string <b>${data}</b> start with <b>luv</b>?: ${fn:startsWith(data,"luv")}

<c:set var="data2" value="Singapore,Tokyo,Mumbai,London"/>
<h3>Split Demo</h3>

<c:set var="citiesArray" value="${fn:split(data2,',')}" />
<c:forEach var="tempCity" items="${citiesArray}">

	${tempCity}<br/>
</c:forEach>

<h3>Join Demo</h3>
<c:set var="fun" value="${fn:join(citiesArray,'*')}"/>
Result of joining: ${fun}
</body>
</html>