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
		// 닉네임을 전달받고 그대로 보여주기
		String nickname = request.getParameter("nickname");
		
		String animal = request.getParameter("animal");
		
		String fruit = request.getParameter("fruit");
		
		// String food = request.getParameter("food");
		String[] foodArray = request.getParameterValues("food");
		// 민초 피자 : 여러 개 선택할때 보여지게 할 문자열
		String foodString = "";
		for(int i =0; i < foodArray.length; i++) {
			foodString = foodString + foodArray[i] + " ";
			// foodString += foodArray[i] + " ";
		}
	%>
	<div><%= nickname %></div>
	<div><%= animal %></div>
	<div><%= fruit %></div>
	<div><%= foodString %></div>

</body>
</html>