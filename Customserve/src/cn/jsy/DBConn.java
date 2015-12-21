package cn.jsy;


import java.lang.ClassNotFoundException;
import java.sql.*;

/**
 * Function: 数据库连接 类
 * @author Song
 *@return SQL Connection
 */
public class DBConn {

	public static Connection GetConnection() {
        Connection connection = null;

        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/customer service?useUnicode=true&characterEncoding=UTF-8","root","");
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
