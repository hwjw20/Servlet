package com.jiwon.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test09")
public class Test09Controller extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		// 이름과 자기소개서를 입력 받아서 submit 할 수 있는 html 문서를 작성하세요.
		String name = request.getParameter("name");
		String text = request.getParameter("text");
		
		out.println("<html><head><title></title></head>");
		out.println("<body><h1>" + name + "님 지원이 완료 되었습니다.</h1><hr>지원내용<br>" + text + "</body></html>");
		
		
	}
}
