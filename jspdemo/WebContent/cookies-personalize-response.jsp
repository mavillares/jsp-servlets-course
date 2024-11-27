<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Confirmation</title>
</head>
<body>
<%
	//read form data

	String favLang = request.getParameter("favoriteLanguage");

//encode cookie data ... handle case of languages with spaces in them
	favLang = URLEncoder.encode(favLang, "UTF-8");

	//create the cookie
	Cookie theCookie = new Cookie("myApp.favoriteLanguage",favLang);
	
	//set the life span ... total number of seconds 
	theCookie.setMaxAge(60*60*24*365);
	
	//send cookie to browser
	response.addCookie(theCookie);
%>

	Thanks! We set your favorite language to: ${param.favoriteLanguage}
	<br/><br/>
	<a href="cookies-homepage.jsp">Return to homepage.</a>
</body>
</html>