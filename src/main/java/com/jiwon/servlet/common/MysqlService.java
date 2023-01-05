package com.jiwon.servlet.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	
	// 멤버변수
	// 접속주소, 아이디, 비밀번호 : 값이 바뀌지 않게 하기 위해 final 을 붙인다. 상수라는 뜻.
	private final String url = "jdbc:mysql://localhost:3306/snow";
	private final String userId = "root";
	private final String password = "root";
	
	private Connection connection;
	private Statement statement;
	
	// 접속기능
	public void connect() {
		// 접속
		try {
			connection = DriverManager.getConnection(url, userId, password);
			statement = connection.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	// 쿼리 수행기능 select
	public ResultSet select(String query) {
		
		try {
			return statement.executeQuery(query);
		} catch (SQLException e) {
			
			e.printStackTrace();
			
			return null;
		}
	}
	
	// 쿼리 수행기능 insert, update, delete
	public int update(String query) {
		try {
			return statement.executeUpdate(query);
		} catch (SQLException e) {
			
			e.printStackTrace();
			return -1;
		}
	}
	
	// 접속 끊는 기능
	public void disconnect() {
		try {
			statement.close();
			connection.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
}
