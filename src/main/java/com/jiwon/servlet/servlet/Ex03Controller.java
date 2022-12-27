package com.jiwon.servlet.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class Ex03Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf8");
		/*response.setContentType("text/html");*/
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		// 이름과 생년월일을 전달 받고 이름과 나이를 html 로 구성
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday"); // 숫자로 넣어도 문자열로 인식
		
		// 생년월일로 나이 계산
		// 20020205
		String yearString = birthday.substring(0, 4);
		int year = Integer.parseInt(yearString);
		
		int age = 2022 - year + 1;
		
//		out.println("<html><head><title>나이</title></head>");
//		out.println("<body> <h2>이름: " + name + "</h2>");
//		out.println("<h3>나이: " + age + "</h3> </body> </html>");
		
		// xml
		// <name>황지원</name> <age>25</age>
		// json 
		// {"name":"황지원", "age":24}
		// ["황지원", "유재석", "지석진"]
		
		out.println("{\"name\":" + name + "\",\"age\":" + age + "}");
		
		
		
	}
}
