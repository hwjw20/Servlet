<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form method="get" action="/jsp/test03.jsp">
		<h1>체격 조건 입력</h1>
		<input type="text" name="height">cm <br>
		<input type="text" name="weight">kg
		
		<%-- <button type="submit">계산</button> --%>
		<input type="submit" value="계산">
	</form>

</body>
</html>