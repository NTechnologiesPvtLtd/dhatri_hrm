/**
 * 
 */
package com.hrm.db.connections;

import java.sql.Connection;
import java.sql.DriverManager;

public class MySqlDBConnection {
	 static Connection con;
	static MySqlDBConnection mySQLDBInstance = new MySqlDBConnection();

	private MySqlDBConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3307/hrm", "root", "root");
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	public static Connection getInstance() {

		return con;
	}
	
	public static void main(String[] args) {
		System.out.println(getInstance());
	}
}
