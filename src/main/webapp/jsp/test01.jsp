<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test01</title>
</head>
<body>

	<%
		int[] scores = {80, 90, 100, 95, 80};
		int sum = 0; 
		for(int i = 0; i < scores.length; i++){
			sum += scores[i];
		}
		double average = (double)sum / scores.length;
	%>
	<h3>점수 평균은 <%= average %>입니다.</h3>
	
	
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		
		int score = 0;
//		for(int i = 0; i < scoreList.size(); i++) {
//			if(scoreList.get(i).equals("O")) {
//				score += 10;
//			}
//		}	
		for(String check:scoreList) {
			if(check.equals("O")) {
				score += 100 / scoreList.size();
			}
		}
	%>	
	<h3>채점 결과는 <%= score %> 점 입니다.</h3>
	
	
	<%!	
		public int sumAll(int n) {
			int result = 0;
			for(int i = 1; i <= n; i++) {
				result += i;
			}
			return result;
		}
	%>
	<h3>1에서 50 까지의 합은 <%= sumAll(50) %></h3>
	
	
	<%
		String birthDay = "20010820";
		String yearString = birthDay.substring(0,4);
		int year = Integer.parseInt(yearString);
		
		int age = 2022 - year + 1;	
	%>
	<h3><%=birthDay%> 의 나이는 <%=age %>살 입니다.</h3>
	
</body>
</html>