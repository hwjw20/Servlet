package com.jiwon.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test03")
public class Test03Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		out.println("<html> <head> <h1>[단독] 고양이가 야옹해</h1><br> </head>");
		out.println("<body> 기사 입력시간: 2022/12/22 20:35:04 <hr>끝 </body></html>" );
	
	}
}
