package com.Jim2Pack.main.Test;


import org.junit.Test;


import java.sql.Connection;
import java.sql.DriverManager;

public class MySQLConnectionTest {
	private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/Jim2Pack?serverTimezone=UTC&allowPublicKeyRetrieval=true&useSSL=false";
    private static final String USER = "J2P";
    private static final String PASSWORD = "J2P";
    
    @Test
    public void testConnection() throws Exception {
        Class.forName(DRIVER);
        try {
            Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println(connection);
            System.out.println("Success");
        } catch (Exception e) {
        	System.out.println("failed");
            e.printStackTrace();
        }
    }
}
