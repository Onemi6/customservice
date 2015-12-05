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

PreparedStatement st = conn.prepareStatement("insert into cs_user(username, password, email, phonenum,zone) values(?,?,?,?,?)");

st.setString(1,namestr);
st.setString(2, passwordstr);
st.setString(3,emailstr);
st.setString(4, phonenumberstr);
st.setString(5, fondstr);
//UPDATE
st.executeUpdate();
st.close();
conn.close();
response.sendRedirect("login.jsp");
%>