package cn.jsy;

//数据库连接
import java.sql.*;

public class DBConn {

	public static Connection _conn;

	/**
	 * 获取数据库连接
	 * @return: Connection, 数据库连接
	 */
    public static Connection GetConnection(){
    	
    	Connection con = null;
    	try{
    		Class.forName( "com.mysql.jdbc.Driver" );// 加载MySql数据驱动
    	    con = DriverManager.getConnection( 
    	    	"jdbc:mysql://localhost:3306/test",
				"root", 
				"" );// 创建数据库连接
    	}
    	catch( Exception e ){
    		System.out.printf( "数据库连接失败\n" );
    	}
    	
    	return con;

    }
}
