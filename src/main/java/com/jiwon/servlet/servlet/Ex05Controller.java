package com.jiwon.servlet.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex05")
public class Ex05Controller extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		// 이름과 생년월일을 전달받고 이름과 나이를 출력
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday"); // 숫자로 넣어도 문자열로 인식
		
		// 생년월일로 나이 계산
		// 20020205
		String yearString = birthday.substring(0, 4);
		int year = Integer.parseInt(yearString);
		
		int age = 2022 - year + 1;
		
		out.println("<html><head><title>나이</title></head>");
		out.println("<body> <h2>이름: " + name + "</h2>");
		out.println("<h3>나이: " + age + "</h3> </body> </html>");
		
		
		
	}
}
