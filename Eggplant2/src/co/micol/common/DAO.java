package co.micol.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DAO {
	private String driver = "oracle.jdbc.driver.OracleDriver";
	//private String  url = "jdbc:oracle:thin:@192.168.0.57:1521:xe";
	private String  url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String  user = "hr";
	private String  password = "hr";
	
	public Connection conn;
	
	public DAO() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

}
