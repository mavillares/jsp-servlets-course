<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*,com.luv2code.jsp.tagdemo.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// just create some sample data .... normally provided by MVC
	List<Student> data = new ArrayList<>();
	data.add(new Student("John","Doe",false));
	data.add(new Student("Maxwell","Johnson",false));
	data.add(new Student("Mary","Public",true));
	
	pageContext.setAttribute("myStudents", data);
%>

<html>
<body>
	<table border="1">
	<tr>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Gold Customer</th>
	</tr>
	
	
	<c:forEach var="tempStudent" items="${myStudents}">
	
		<tr>
			<td>${tempStudent.firstName}</td>
			<td>${tempStudent.lastName}</td>
			<td>
			
			<!--  
				<c:choose>
					<c:when test="${tempStudent.goldCustomer}">
						Special Discount
					</c:when>
					<c:otherwise>
						not soup for you!
					</c:otherwise>
				
				</c:choose>
				-->
				<c:if test="${tempStudent.goldCustomer}">
					Special Discount
				</c:if>
				<c:if test="${not tempStudent.goldCustomer}">
					-
				</c:if>
			</td>
		<tr/>
	</c:forEach>
	
	</table>

</body>

</html>