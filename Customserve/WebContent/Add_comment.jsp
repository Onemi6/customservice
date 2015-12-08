<%@page import="cn.jsy.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%
String context = request.getParameter("context");
String username = request.getParameter("username");
String isstart = request.getParameter("isstart");
//String workername = request.getParameter("wokername");
String nowtime = request.getParameter("nowtime");

Connection conn = DBConn.GetConnection();

//先检查这个用户名是不是处于 对话状态  即 判断 isend==0;&&username∈cs_conversion

    //实例化user----失败
       //检测此用户是否是第一次调起对话
 // boolean ifexist=user.ifuserExist(username);

	 //插入对话数据表
	 PreparedStatement st0=conn.prepareStatement("INSERT INTO cs_conversion(username,context,isstart,nowtime) values(?,?,?,?)");
	 st0.setString(1,username);
	 st0.setString(2, context);
	 st0.setString(3, isstart);
	 st0.setString(4, nowtime);
	 st0.executeUpdate();


st0.close();
conn.close();
//response.sendRedirect("login.jsp");
%>