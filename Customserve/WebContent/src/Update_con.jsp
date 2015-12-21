<%@page import="cn.jsy.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ page language="java" import="java.util.*,java.io.*,com.google.gson.*,java.sql.*"%>
 <%
   String conid=request.getParameter("conid");
  
   String Workername=request.getParameter("workername");
 
   String isstart=request.getParameter("isstart");
   
   
   //Connection Start.....
   Connection conn=DBConn.GetConnection();
   
   //如果存在从conid  减轻Database load
   if(Conversion.exist_con(conid)){
	PreparedStatement st=conn.prepareStatement("UPDATE cs_conversion SET workername=?,isstart=? where conid=?");
	st.setString(1, Workername);
	st.setString(2, isstart);
	st.setString(3, conid);
 	st.executeUpdate();		
  	st.close();
  	conn.close();
   }
 %>