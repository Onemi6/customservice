<%@page import="cn.jsy.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ page language="java" import="java.util.*,java.io.*,com.google.gson.*"%>
 <% 
 String username=request.getParameter("username");
 String method=request.getParameter("method");
 String update="update";
 if(method.equals(update)){
	 //upgrate
	 Conversion.removeChat(username);
 }
 %>