<%@page import="javax.xml.ws.Response"%>
<%@page import="cn.jsy.DBConn"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%
	String namestr=request.getParameter("txtname");
	String passwordstr=request.getParameter("txtpassword");
	DBConn.GetConnection();
	Connection con=DBConn.GetConnection();
	String sql = "select * from cs_user";
	Statement sta=(Statement)con.createStatement();
	ResultSet rs=sta.executeQuery(sql);
	int flag=0;
	while(rs.next()){
		if(rs.getString(2).equals(namestr)&&rs.getString(3).equals(passwordstr)){
			flag=1;
			//获得登陆成功用户
			break;
		}
	}
	//验证失败，即没有此人或者密码错误
	if(flag==0){
		response.sendRedirect("login.jsp");
	}
	//验证成功，跳转到登陆成功页面
	else{
		//放登陆成功页面的jsp
		String REurl="./index.jsp?username="+namestr;
		response.sendRedirect(REurl);
	}
%>