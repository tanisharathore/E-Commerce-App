
package com.ecom;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
    public static Connection getConnection() throws SQLException {
        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Set up the connection parameters (adjust your username, password, and DB URL)
            String url = "jdbc:mysql://localhost:3306/ecommerce";
            String username = "root";  // Replace with your MySQL username
            String password = "12345";  // Replace with your MySQL password
            return DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException e) {
            throw new SQLException("MySQL JDBC driver not found", e);
        }
    }
}
