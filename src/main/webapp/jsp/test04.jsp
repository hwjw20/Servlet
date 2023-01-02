<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test04</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<%
		String what = request.getParameter("what");
		String number1String = request.getParameter("number1");
		String number2String = request.getParameter("number2");
		int number1 = Integer.parseInt(number1String);
		int number2 = Integer.parseInt(number2String);
		
		double result = 0;
		if(what.equals("+")) {
			result = number1 + number2;
		} else if(what.equals("-")) {
			result = number1 - number2;
		} else if(what.equals("X")) {
			result = number1 * number2;
		} else {
			result = number1 / number2;
		}	
	%>
	<div class="container">
		<div>계산 결과</div>
		<div class="display-4"><%= number1 %> <%= what %> <%= number2 %> = <%= result %></div>
	
	</div>
</body>
</html>