package cn.jsy;

//���ݿ�����
import java.sql.*;

public class DBConn {

	public static Connection _conn;

	/**
	 * ��ȡ���ݿ�����
	 * @return: Connection, ���ݿ�����
	 */
    public static Connection GetConnection(){
    	
    	Connection con = null;
    	try{
    		Class.forName( "com.mysql.jdbc.Driver" );// ����MySql��������
    	    con = DriverManager.getConnection( 
    	    	"jdbc:mysql://localhost:3306/test",
				"root", 
				"" );// �������ݿ�����
    	}
    	catch( Exception e ){
    		System.out.printf( "���ݿ�����ʧ��\n" );
    	}
    	
    	return con;

    }
}
