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
<title>test02_detail</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="/jspTemplate/test02/style.css" type="text/css">
</head>
<body>
	<%@ include file="data.jsp" %>
	<%
	    String idString = request.getParameter("id");
	    
	    Integer id = null;
	    if(idString != null) {
		    id = Integer.parseInt(idString); 
	    }
	    
	    String title = request.getParameter("title");
	%>
	<div class="container">
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />
		
		<section class="mt-2">
			<h4>곡 정보</h4>
			<article class="border border-success">
				<div class="songInfo d-flex">
					<%
						for(Map<String, Object> music:musicList) {
							Integer musicId = (Integer)music.get("id");
							
							// 아이디가 null이 아니면 아이디가 일치하는 결과를 보여준다
							// 타이틀이 null이 아니면 타이틀이 일치하는 결과를 보여준다.
							if((id != null && id.equals(musicId)) || (title != null && title.equals(music.get("title")))) {
								int second = (Integer)music.get("time");
								int minute = second / 60;
								second = second % 60;
					%>
					
						<img height="200" alt="thumbnail" src=<%= music.get("thumbnail") %>>

						<div class="ml-3">
							<h2><%= music.get("title") %></h2>
							
							<div class="text-success"><b><%= music.get("singer") %></b></div><br>
							
							<div class="text-secondary">앨범 <%= music.get("album") %></div>
							<div class="text-secondary">재생시간 <%= minute %>:<%= second %></div>
							<div class="text-secondary">작곡가 <%= music.get("composer") %></div>
							<div class="text-secondary">작사가 <%= music.get("lyricist") %></div>
						</div>

					<%
							}
						}
					%>		
					
				
				</div>
			</article>
			
			<div class="mt-3">
				<h4>가사</h4><hr>
				<div>가사 정보 없음</div>
			</div>		
		</section>
		
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>