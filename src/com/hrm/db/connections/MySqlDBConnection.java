/**
 * 
 */
package com.hrm.db.connections;

import java.sql.Connection;
import java.sql.DriverManager;

public class MySqlDBConnection {
	 static Connection con=null;
	static MySqlDBConnection mySQLDBInstance = new MySqlDBConnection();

	private MySqlDBConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmdb", "root", "hanu@007");
		} catch (Exception e) {
			System.err.println(e);
		}
	}

	public static Connection getInstance() {

		return con;
	}
}
