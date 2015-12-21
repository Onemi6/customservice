<%@page import="cn.jsy.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ page language="java" import="java.sql.*,java.io.*,java.util.*,com.google.gson.*"%>
 <%

 String workername=request.getParameter("workername");
 String username = request.getParameter("username");
 /*

 String workername="admin";
 String username = "scnace";
 */
Map<String,ArrayList<String>> map=null;
ArrayList<String> array =null;
	int Conid=0;
 
	Connection conn=DBConn.GetConnection();
	PreparedStatement st=conn.prepareStatement("SELECT * FROM cs_conversion  where workername=? and username=? ORDER BY conid LIMIT 1"); 
	st.setString(1, workername);
	st.setString(2, "");
	ResultSet rs=st.executeQuery();

	while(rs.next()){
		map=new HashMap<String,ArrayList<String>>();
		array=new ArrayList<String>();
		String context=rs.getString("context");
		array.add(context);
		map.put("con",array);
		array=new ArrayList<String>();
		 Conid=rs.getInt("conid");
		String conid =Integer.toString(rs.getInt("conid")); 
        array.add(conid);
		map.put("conid",array);
	}
	
	rs.close();
	st.close();



  


  //SELECT completed START TO UPDATE
PreparedStatement  ust=conn.prepareStatement("UPDATE cs_conversion SET username=? where conid=?");
 ust.setString(1, username);
  ust.setInt(2,Conid);
  ust.executeUpdate();
  ust.close();
conn.close();

  //转json 传递
  Gson gson=new GsonBuilder().create();
  String json=gson.toJson(map);
 out.print(json);
 %>