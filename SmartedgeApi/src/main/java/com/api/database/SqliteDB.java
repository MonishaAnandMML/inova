package com.api.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.apache.log4j.Logger;
import com.api.common.TestProperties;

public class SqliteDB {

	Connection connection = null;
	protected static Logger logger = Logger.getLogger(SqliteDB.class.getName());

	public SqliteDB() {

		try {
			Class.forName("org.sqlite.JDBC");
			String sqliteDB_location = TestProperties.getPropertyValue(TestProperties.SQLITE_DATABASE);
			System.out.println(sqliteDB_location);

			connection = DriverManager.getConnection("jdbc:sqlite:" + sqliteDB_location);
			System.out.println("Connected to sqliteDB");
			logger.info("connected to sqlite database");
		} catch (Exception e) {
			System.out.println("Could not connect to DB  :: " + e.getMessage());
			logger.error("Could not connect to DB :: " + e.getMessage());
		}
	}

	public String getValue(String cardNum, String colnum) throws SQLException {

		logger.info("Getting " + colnum + " from sqliteDB for cardNumber " + cardNum);
		String colnumval = null;
		String query = "SELECT " + colnum + " FROM CardResponse WHERE cardNumber = ?";
		PreparedStatement stmt = null;
		try {
			stmt = connection.prepareStatement(query);
			stmt.setString(1, cardNum);
			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				colnumval = rs.getString(colnum);
			}
			rs.close();
		} catch (Exception e) {
			System.out.println("Error in getIssuerResponse" + e.getMessage());
		} finally {
			if (stmt != null)
				stmt.close();
		}
		return colnumval;

	}

	public void closeConnection() {
		try {
			if (connection != null)
				connection.close();
		} catch (SQLException e) {
			System.out.println(" Connection close failed ::" + e.getMessage());
			logger.error("Close sqliteDB connection failed :: " + e.getMessage());
		}
	}
}
