package cn.jsy;

import cn.jsy.DBConn;
import java.sql.*;
/**
 *Function: 用户类     父类    数据库相关 
 * @author scnace
 *@return data from sql
 */
public class user {
	
	//静态变量:数据库字段init
	static int  cid ;
	 static String  username;
	 static String password;
	static  String email;
	 static String phonenum;
	 static String zone;
	 
	 /**
	 * @throws SQL SQLException
	  * 
	  */
  public static int  getCid(String userName) throws SQLException{
	  
	  try{
		 Connection conn=DBConn.GetConnection();
	  PreparedStatement st=conn.prepareStatement("SELECT cid FROM cs_user where username=?");
	  st.setString(1, userName);
	  ResultSet rs=st.executeQuery();
	  return rs.getInt("cid");
	  }
	  catch(SQLException e){
		  return 0;
	  } 
  }
  
  /**
   * @author scnace
   * @return boolean
   */
  public static boolean ifuserExist(String username) {
	  Connection conn=DBConn.GetConnection();
	  try {
		PreparedStatement st=conn.prepareStatement("SELECT * FROM cs_user where username=?");
		st.setString(1, username);
		ResultSet rs=st.executeQuery();
		if(rs!= null){
			return true;
		}
		else{
			return false;
		}
	} catch (SQLException e) {
		e.printStackTrace();
		return false;
	}
	  
  }
  
}
