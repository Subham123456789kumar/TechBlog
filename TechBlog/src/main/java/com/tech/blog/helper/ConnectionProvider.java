package com.tech.blog.helper;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
	
	
	private static Connection con;
	public static Connection getConnection()
	{
		
		try {
			
			if (con  ==  null) {
				
				
				
				//load driver class
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				
				// create connection 
				
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog","root","komal123");
				
				
			}
			
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return con;
	}
	

}
