<%@page import="cn.jsy.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ page language="java" import="java.util.*,java.io.*,com.google.gson.*"%>
 <%
 
     Map<String,List<String>> res=new HashMap<String,List<String>>();
 	 List<String> resarray=new ArrayList<String>();
 	 List<String> con=(List<String>)Conversion.getcontext(); 	
	 List<String> usr=(List<String>)Conversion.getusrname(); 
	 List<Integer> conid=(List<Integer>)Conversion.getconid(); 	
  //   Conversion conV=new Conversion();
     
	 for(int i=0;i<con.size();i++){
		 String id=conid.get(i).toString();		 
	  //动态Arraylist 来获得需要的数据结构
	       /*	       
	       DATA-TYPE(Finally Is Json):
	         {1:[],2:[],3:[]}
	       */
		  //Arraylist 非空
		 if(resarray.size()!=0){
			//SET
			resarray.set(0,id);
			resarray.set(1,con.get(i));
			resarray.set(2,usr.get(i));
		 }
		 else{
			 //Add
			 resarray.add(id);
			 resarray.add(con.get(i));
			 resarray.add(usr.get(i));
		 }
		 res.put(conid.get(i).toString(), resarray);	 
	 }
//转成json对象 发辫AJAX取值
	 Gson gson = new GsonBuilder().create();
	 gson.toJson(res);
	 out.print(res);	 	 
 %>