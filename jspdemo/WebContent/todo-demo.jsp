<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- Step1: Create HTL form -->
<form action="todo-demo.jsp">
	Add new item: <input type="text" name="theItem"/>
	<input type="submit" value="Submit"/>
</form>

<!-- Step 2: Add new item to "To Do" list -->

	
	
<%
	//get the TO DO items from the session
	List<String> items = (List<String>) session.getAttribute("myTodoList");
	
	//if the TO DO items doesnt exist, then create a new one
	if(items == null){
		items = new ArrayList<String>();
		session.setAttribute("myTodoList", items);
	}
	//see if there is form data to add
	String theItem = request.getParameter("theItem");
	    	//
    // UPDATED CODE BLOCK FOR booleans and if/then statement
    //
    boolean isItemNotEmpty = theItem != null && theItem.trim().length() > 0;
    boolean isItemNotDuplicate = theItem != null && !items.contains(theItem.trim());
    	
    if (isItemNotEmpty && isItemNotDuplicate) {    		
    	items.add(theItem.trim());    		
    }
	
%>
	
<!-- Step 3: Display all "To Do" item from session -->

 <hr>
 <b>To List Items:</b>
 <ol>
 <%
 	for(String temp: items){
 		out.println("<li>"+temp+"</li>");
 	}
 %>
 </ol>
</body>
</html>