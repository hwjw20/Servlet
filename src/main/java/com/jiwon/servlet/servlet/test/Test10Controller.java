package com.jiwon.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test10")
public class Test10Controller extends HttpServlet{
	
	private final Map<String, String> userMap =  new HashMap<String, String>() {
		{
			put("id", "hagulu");
			put("password", "asdf");
			put("name", "김인규");
		}
	};
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		// id 와 password 를 입력 받고, submit 할 수 있는 html 문서를 작성하세요.
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		// id가 일치하지 않는 경우 id가 일치하지 않습니다. 를 출력하세요.
		// password가 일치하지 않는 경우 password가 일치하지 않습니다. 를 출력하세요.
		// 일치하는 경우 아래와 같이 출력하세요. (HTML 화면)
//		if(!userMap.get("id").equals(id)) {
//			out.println("아이디가 일치하지 않습니다.");
//		} else {
//			if(!userMap.get("password").equals(password)) {
//				out.println("비밀번호가 일치하지 않습니다.");
//			} else {
//				out.println("<html><head></head><body><h1>" + userMap.get("name") + "님 환영합니다.</h1></body></html>");
//			}
//		}
		// 문제풀이
		
		out.println("<html><head><title>로그인</title></head><body>");
		
		if(!id.equals(userMap.get("id"))) {
			out.println("<h2>아이디가 일치하지 않습니다.</h2>");
		} else if(!password.equals(userMap.get("password"))) {
			out.println("<h2>비밀번호가 일치하지 않습니다.</h2>");
		} else {
			out.println("<h1>" + userMap.get("name") + "님 환영합니다.");
		}
		
		out.println("</body></html>");
		
	}
	
	

}
