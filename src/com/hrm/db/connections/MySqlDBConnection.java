/**
 * 
 */
package com.hrm.db.connections;

import java.sql.Connection;
import java.sql.DriverManager;

import com.hrm.constants.EmployeeConstants;

public class MySqlDBConnection {
	 Connection con=null;
	 
	// private static final String DRIVER_CLASS_NAME ="com.mysql.cj.jdbc.Driver";
	 private static final String URL = "jdbc:mysql://localhost:3306/hrm";
	 private static final String DB_Username="root";
	 private static final String DB_Password="system";
	 
	static MySqlDBConnection mySQLDBInstance = new MySqlDBConnection();

	private MySqlDBConnection() {
		try {

			//Class.forName(DRIVER_CLASS_NAME);
			con = DriverManager.getConnection(URL, DB_Username, DB_Password);


			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmdb", "root", "hanu@007");

			Class.forName(DRIVER_CLASS_NAME);
			con = DriverManager.getConnection(URL, "root", "system");


		} catch (Exception e) {
			System.err.println(e);
		}
	}

	public static Connection getInstance() {

		return mySQLDBInstance.con;
	}
}
