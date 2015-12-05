package cn.jsy;

//数据库连接

import java.lang.ClassNotFoundException;
import java.sql.*;

public class DBConn {

	public static Connection GetConnection() {
        Connection connection = null;

        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/customer service","root","");
        }
        catch(ClassNotFoundException error)
        {
            System.out.println("Error:" + error.getMessage()); 
        }

        catch(SQLException error)
        {
            System.out.println("Error:" + error.getMessage());
        }
return connection;
	}

}
