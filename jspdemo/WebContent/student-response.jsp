<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Confirmation Title</title>
</head>
<body>
	The student is confirmed: ${param.firstName} ${param.lastName} 
	<br/><br/>
	The student's country: ${param.country}
	<br/><br/>
	The student´s favorite programming language: ${param.favoriteLanguage}
	<br/><br/>
	<!-- display list of favoriteLinuxSO -->
	The student´s favorite SO: 
	<ul>
		<%
			String[] linuxSO = request.getParameterValues("favoriteLinuxSO");
			if(linuxSO != null){
				for(String tempSO : linuxSO){
					out.println("<li>"+ tempSO + "</li>");
				}
			}
		%>
	</ul>
</body>
</html>