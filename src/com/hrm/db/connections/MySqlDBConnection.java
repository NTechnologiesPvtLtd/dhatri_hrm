/**
 * 
 */
package com.hrm.db.connections;

import java.sql.Connection;
import java.sql.DriverManager;


public class MySqlDBConnection 
{
	
	public  static Connection con;
	public static Connection getInstance()
	{
		try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrm","root","root");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return con;
	}
}
