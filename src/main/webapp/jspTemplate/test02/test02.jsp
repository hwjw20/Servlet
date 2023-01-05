<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test02</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="/jspTemplate/test02/style.css" type="text/css">
</head>
<body>
	<%@ include file="data.jsp" %>
	<div class="container">
	
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />
		
		<section class="mt-2">
			<article class="border border-success border-5">
				<div class="artistInfo d-flex">
					<img height="200" src=<%= artistInfo.get("photo") %>>
					<div class="ml-4">
						<h3><%= artistInfo.get("name") %></h3>
						<div><%= artistInfo.get("agency") %></div>
						<div><%= artistInfo.get("debute") %> 데뷔</div>
					</div>
				</div>
			</article>
			<div class="list mt-3">
				<h4>곡 목록</h4>
				<table class="table text-center">
					<thead>
						<tr>
							<th>no</th>
							<th>제목</th>
							<th>앨범</th>
						</tr>
					</thead>
					<tbody>
					
					<% 
						for(Map<String, Object>music:musicList) {
					%>
					
						<tr>
							<td><%= music.get("id") %></td>
							<td><a href="/jspTemplate/test02/test02_detail.jsp?id=<%= music.get("id") %>"><%= music.get("title") %></td>
							<td><%= music.get("album") %></td>
						</tr>
					
					
					<%
						}
					%>							
						
						
					</tbody>
				</table>
			</div>
		</section>

		<jsp:include page="footer.jsp" />
	
	</div>
</body>
</html>