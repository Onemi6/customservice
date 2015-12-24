package cn.jsy;

import cn.jsy.DBConn;
import java.sql.*;
import java.util.*;


/**
 *Function: 用户类     父类    数据库相关 
 * @author scnace
 *@return data from sql
 */
public class user {
	
	//静态变量:数据库字段init
	 int  cid ;
	 String  username;
	 String password;
	  String email;
	 String phonenum;
	 String zone;
	 /**
	  * construction
	  */
        public  user(){
        	
        	this.cid=0;
        	this.username="";
          this.password="";
        	this.email="";
        	this.phonenum="";
        	this.zone="";
        }
	 
	 
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
   * Check 用户是否存在
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
  
  /**
   * Get waiting User name;
   * @return An waiter ArrayList
   */
public static ArrayList<String> getWaiter() throws SQLException{
	ArrayList<String> waiterArray=new ArrayList<String>();
	  Connection conn=DBConn.GetConnection();
	PreparedStatement st=conn.prepareStatement("SELECT * FROM cs_conversion where isstart=?");
	st.setInt(1, 1);
	ResultSet rs=st.executeQuery();
	while(rs.next()){
		if(rs.getString("username").length()!=0){
		//waiterArray.add(rs.getString("username"));
				if(waiterArray.size()==0){
					waiterArray.add(rs.getString("username"));
				}
				else{
         for(int i=0;i<waiterArray.size();i++){
        	 if(!rs.getString("username").equals(waiterArray.get(i).toString())){
        		 waiterArray.add(rs.getString("username"));
        	 }
         }
				}
		}
	}			
	rs.close();
	st.close();
	conn.close();
	return waiterArray;
}

/**
 *  Get passed User name;
 * @return An passer ArrayList
 * @throws SQLException
 */
public static ArrayList<String> getPasser() throws SQLException{
	ArrayList<String> passerArray=new ArrayList<String>();
	  Connection conn=DBConn.GetConnection();
		PreparedStatement st=conn.prepareStatement("SELECT * FROM cs_conversion where isstart=?");
	   st.setInt(1, 0);
		ResultSet rs=st.executeQuery();
		while(rs.next()){
			if(rs.getString("username").length()!=0){
			if(passerArray.size()==0){
				passerArray.add(rs.getString("username"));
			}

			else{
							if(!passerArray.contains(rs.getString("username"))){
								passerArray.add(rs.getString("username"));
						}
				}
			}
						}
		rs.close();
		st.close();
		conn.close();
	  return passerArray;
}
  
  
  
}
