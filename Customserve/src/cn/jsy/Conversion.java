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
	 *解耦  特定专区 
	 * @return
	 * @throws SQLException
	 */
	public static List<String> getcontext_zone(String zone) throws SQLException{
		
		
		Connection conn=DBConn.GetConnection();
		PreparedStatement st=conn.prepareStatement("SELECT * FROM cs_conversion LEFT JOIN cs_user ON cs_user.username=cs_conversion.username WHERE cs_conversion.isstart=? AND cs_user.zone=? ORDER BY cs_conversion.conid  LIMIT 3");
		st.setInt(1, 1);
		st.setString(2, zone);
		
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
	
	public static List<String> getusrname_zone(String zone) throws SQLException{
		
		
		Connection conn=DBConn.GetConnection();
		PreparedStatement st=conn.prepareStatement("SELECT * FROM cs_conversion LEFT JOIN cs_user ON cs_user.username=cs_conversion.username WHERE cs_conversion.isstart=? AND cs_user.zone=? ORDER BY cs_conversion.conid  LIMIT 3"); 
		st.setInt(1, 1);
		st.setString(2, zone);
		
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
	
	public static List<Integer> getconid_zone(String zone) throws SQLException{
		
		
		Connection conn=DBConn.GetConnection();
		PreparedStatement st=conn.prepareStatement("SELECT * FROM cs_conversion LEFT JOIN cs_user ON cs_user.username=cs_conversion.username WHERE cs_conversion.isstart=? AND cs_user.zone=? ORDER BY cs_conversion.conid  LIMIT 3"); 
		st.setInt(1, 1);
		st.setString(2, zone);
		
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
	
	
	/**
	 * 判断是否存在conid
	 * @param conid
	 * @return boolean
	 * @throws SQLException 
	 */
	public static boolean exist_con(String conid) throws SQLException{
		Connection conn=DBConn.GetConnection();
		PreparedStatement st=conn.prepareStatement("SELECT conid FROM cs_conversion  where conid=?");
		st.setString(1, conid);
		ResultSet rs=st.executeQuery();		
		 if(rs != null){
				st.close();
				conn.close();
			 return true;
		 }		
		 else{
				st.close();
				conn.close();
			 return false;
		 }
	}
	
	public static List<String> getconvdata_Array(String username) throws SQLException{
		Connection conn=DBConn.GetConnection();
		PreparedStatement st=conn.prepareStatement("SELECT * FROM cs_conversion  where username=? ORDER BY conid desc LIMIT 1");
		st.setString(1, username);
		ResultSet rs=st.executeQuery();
		List <String> conv_arr=new ArrayList<String>();
        for(int i=0;i<6;i++){
        	conv_arr.add(i, rs.getString(i));
        } 
		return conv_arr;
	}
	
	public static List<String> getconvdata_Array_WR(String workername) throws SQLException{
		Connection conn=DBConn.GetConnection();
		PreparedStatement st=conn.prepareStatement("SELECT * FROM cs_conversion  where workername=? ORDER BY conid desc LIMIT 1");
		st.setString(1, workername);
		ResultSet rs=st.executeQuery();
		List <String> conv_arr=new ArrayList<String>();
        for(int i=0;i<6;i++){
        	conv_arr.add(i, rs.getString(i));
        } 
		return conv_arr;
	}
	public void setConid(int conid) {
		this.conid = conid;
	}
	/**
	 * 
	 * @param username
	 * @throws SQLException
	 */
	public static void removeChat(String username) throws SQLException{
		Connection conn=DBConn.GetConnection();
		PreparedStatement st=conn.prepareStatement("UPDATE cs_conversion SET isstart='-1' WHERE username=? AND isstart=?");
		st.setString(1, username);
		st.setInt(2, 0);
        st.executeUpdate();
		st.close();
		conn.close();		
	}
	/**
	 * 
	 * @param username
	 * @throws SQLException
	 */
	public static void ignoreChat(String username) throws SQLException{
		Connection con=DBConn.GetConnection();
		PreparedStatement st=con.prepareStatement("UPDATE cs_conversion SET isstart='0' WHERE username=? AND isstart=?");
		st.setString(1, username);
		st.setInt(2, 1);
		st.executeUpdate();
		st.close();
		con.close();
		
	}
	
	public static HashMap<Integer,String> chatHistory(String username) throws SQLException{
	    
		HashMap<Integer,String> map=new HashMap<Integer,String>();
		Connection con=DBConn.GetConnection();
		PreparedStatement st=con.prepareStatement("SELECT conid,context FROM cs_conversion WHERE username=? AND isstart=?");
		st.setString(1, username);
		st.setInt(2, 1);
		ResultSet rs=st.executeQuery();
		while(rs.next()){
			map.put(rs.getInt("conid"), rs.getString("context"));			
		}
		return map;
	}
	
	
}
