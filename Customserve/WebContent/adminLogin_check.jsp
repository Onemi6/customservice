<%@page import="cn.jsy.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%

	String namestr=request.getParameter("txtname");
	String passwordstr=request.getParameter("txtpassword");

	int flag=0;
	//String test=null;
	//String namestr="admin";
	//String passwordstr="admin";
	Connection con=DBConn.GetConnection();
	String sql = "SELECT * FROM cs_worker";
	PreparedStatement st=con.prepareStatement(sql);
	ResultSet rs=st.executeQuery();
	while(rs.next()){
	//	test=rs.getString("password");
		if(rs.getString("workname").equals("admin") && rs.getString("password").equals("admin")){
			flag=1;
			//获得登陆成功用户
			break;
		}
	}
	//验证失败，即没有此人或者密码错误
	if(flag==0){
		//out.print(test);
		response.sendRedirect("./adminlogin.jsp");
	}
	//验证成功，跳转到登陆成功页面
	else if(flag==1){
		
		//放登陆成功页面的jsp
		String REurl="./admin.jsp";
		session.setAttribute("workername", namestr);
		response.sendRedirect(REurl);
	}
%>