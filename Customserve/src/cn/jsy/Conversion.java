package cn.jsy;

import cn.jsy.*;
import java.sql.*;
import java.util.*;


public class Conversion {

	private static int conid;
	
	private static String username;
	
	private String worktime;
	
	private static String context;
	
	private int isstart;
	
	private String nowtime;
	
 
	/**
	 * 
	 * @return
	 * @throws SQLException
	 */
	public static List<String> getcontext() throws SQLException{
		
		
		Connection conn=DBConn.GetConnection();
		PreparedStatement st=conn.prepareStatement("SELECT * FROM cs_conversion where isstart=? LIMIT 3");
		st.setInt(1, 1);
		ResultSet rs=st.executeQuery();
		List<String> con=new ArrayList<String>();
		while(rs.next()){
				context=rs.getString("context");	
				con.add(context);				
		}
		st.close();
		conn.close();
		return con;

	}

	/**
	 * 
	 * @return
	 * @throws SQLException
	 */
	public static List<String> getusrname() throws SQLException{
		
		
		Connection conn=DBConn.GetConnection();
		PreparedStatement st=conn.prepareStatement("SELECT * FROM cs_conversion  where isstart=?  LIMIT 3"); 
		st.setInt(1, 1);
		ResultSet rs=st.executeQuery();
		List<String> con=new ArrayList<String>();
		while(rs.next()){
				username=rs.getString("username");	
				con.add(username);				
		}
		st.close();
		conn.close();
		return con;
	}
	
	
	
	/**
	 * 
	 * @return
	 * @throws SQLException
	 */
	public static List<Integer> getconid() throws SQLException{
		
		
		Connection conn=DBConn.GetConnection();
		PreparedStatement st=conn.prepareStatement("SELECT * FROM cs_conversion  where isstart=?  LIMIT 3"); 
		st.setInt(1, 1);
		ResultSet rs=st.executeQuery();
		List<Integer> con=new ArrayList<Integer>();
		while(rs.next()){
				conid=rs.getInt("conid");	
				con.add(conid);				
		}
		st.close();
		conn.close();
		return con;
	}
	public void setConid(int conid) {
		this.conid = conid;
	}
}
