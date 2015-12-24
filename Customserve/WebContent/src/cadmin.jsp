<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
 <%@ page language="java" import="com.google.gson.*"%>
<%@ page import="cn.jsy.*" %>
<%@ page import="java.sql.*" %>
<%@page import="java.util.Date" %>
 <%
 /**
 *返回一些统计信息给view
 */
//String dataType=request.getParameter("type");
String dataType="all";
Connection conn=DBConn.GetConnection();

String zone;
Cadmin ca=new Cadmin();

 //匹配前台PO过来的信息
 if(dataType.equals("all")){
	PreparedStatement alldata=conn.prepareStatement("SELECT zone FROM cs_user LEFT JOIN cs_conversion ON cs_conversion.username=cs_user.username  ");
	ResultSet rs=alldata.executeQuery();
    while(rs.next()){
      zone=rs.getString("zone");
     // out.print(zone);
       if(zone.equals("game")){
    	   ca.setGnum(ca.getGnum()+1);
       }
       else if(zone.equals("travel")){
    	   ca.setLnum(ca.getTnum()+1);
       }
       else if(zone.equals("live")){
    	   ca.setTnum(ca.getLnum()+1);
       }
    }
    //转json 传递
    Gson gson=new GsonBuilder().create();
    String json=gson.toJson(ca);
    rs.close();
    alldata.close();
   out.print(json);
 }
 else if(dataType=="today"){
	 
	 PreparedStatement alldata=conn.prepareStatement("SELECT zone FROM cs_user LEFT JOIN cs_conversion ON cs_conversion.username=cs_user.username  ");
 }

 %>