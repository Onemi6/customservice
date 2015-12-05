<%@page import="cn.jsy.DBConn"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%
String namestr = request.getParameter("txtname");
String passwordstr = request.getParameter("txtpassword");
String phonenumberstr = request.getParameter("txtphonenumber");
String emailstr = request.getParameter("txtemail");
String fondstr = request.getParameter("txtfond");
Connection conn = DBConn.GetConnection();
PreparedStatement st = conn.prepareStatement(
		"insert into cs_user "+
		"(username, password, email, phonenum ) values(?,?,?,?)");
int index=1;
st.setString(index,namestr);
++index;
st.setString(index, passwordstr);
++index;
st.setString(index,emailstr);
++index;
st.setString(index, phonenumberstr);
/* ++index;
st.setString(index,fondstr); */
int count = st.executeUpdate();
response.sendRedirect("regist.jsp");
%>