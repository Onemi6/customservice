<%@page import="cn.jsy.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ page language="java" import="java.sql.*,java.io.*,java.util.*,com.google.gson.*"%>
<%
String context = request.getParameter("context");
String username = request.getParameter("username");
String isstart = request.getParameter("isstart");
//String workername = request.getParameter("wokername");
String nowtime = request.getParameter("nowtime");

String workername=request.getParameter("workername");

Connection conn = DBConn.GetConnection();

PreparedStatement st0,st1;

List<String> array=new ArrayList<String>();
//先检查这个用户名是不是处于 对话状态  即 判断 isend==0;&&username∈cs_conversion

    //实例化user----失败
       //检测此用户是否是第一次调起对话
 // boolean ifexist=user.ifuserExist(username);
if(username!=null){
	 //插入对话数据表
	 st0=conn.prepareStatement("INSERT INTO cs_conversion(username,context,isstart,nowtime) values(?,?,?,?)");
	 st0.setString(1,username);
	 st0.setString(2, context);
	 st0.setString(3, isstart);
	 st0.setString(4, nowtime);
	 st0.executeUpdate();
	 array=Conversion.getconvdata_Array(username);
	 st0.close();
	 conn.close();
}
else if(workername!=null){
	 st0=conn.prepareStatement("INSERT INTO cs_conversion(workername,context,isstart,nowtime) values(?,?,?,?)");
	 st0.setString(1,workername);
	 st0.setString(2, context);
	 st0.setString(3, isstart);
	 st0.setString(4, nowtime);
	 st0.executeUpdate();
	 array=Conversion.getconvdata_Array_WR(workername);
	 st0.close();
	 conn.close();
}
 //if username exist username else workername ; Another method:String name=(workername!=null)workername:username; 
// String name=(username!=null)?username:workername;
 //ADD TO cs_colindex
 // st1=conn.prepareStatement("INSERT INTO cs_colindex(callonuser,end) values(?,?)");
 // st1.setString(1,name);
 // st1.setInt(2,0);
//response.sendRedirect("login.jsp");
	 Gson gson = new GsonBuilder().create();
	 String json=gson.toJson(array);
	 out.print(json);	
%>