<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>

	<h2>JSP 기본 문법</h2>
	
	<%
		// 자바 주석
		// 1부터 10까지의 합 구하기
		int sum = 0;
		for(int i = 1; i <= 10; i++){
			sum += i;
		}
	%>
	
	<h3>합계 : <%= sum %></h3>
	<input type="text" value="<%= sum %>">
	
	<!-- html 주석 -->
	<%-- jsp 주석 --%>
	<!-- html 주석은 페이지 소스보기에서 html 코드에 보이지만 jsp주석은 jsp가 서버에서 처리되기 때문에 브라우저에서 페이지 소스보기에서 보여지지 않는다. --> 
	
	<%
		// 동물 이름 리스트
		List<String> animals = new ArrayList<>();
	
		animals.add("dog");
		animals.add("cat");
	
	%>
	
	<h3><%= animals.get(0) %></h3>
	<h3><%= animals.get(1) %></h3>
	
	<%-- 메소드 만들기 --%>
	<%!
		// Hello World 문자열을 리턴하는 메소드
		public String getHelloWorld(){
			return "Hello World";
		}
	%>
	
	<h3><%= getHelloWorld() %></h3>
	
	

</body>
</html>