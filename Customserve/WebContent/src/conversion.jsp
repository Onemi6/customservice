<%@page import="cn.jsy.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ page language="java" import="java.util.*,java.io.*,com.google.gson.*"%>
 <%
 
 String zone=request.getParameter("zone");
 
 if(zone==null){
 List<List<String>> finallist=new ArrayList<List<String>>();
 Map<Integer,List<String>> finalmap=new HashMap<Integer,List<String>>();
 	 List<String> resarray=new ArrayList<String>();
 	 List<String> con=(List<String>)Conversion.getcontext(); 	
	 List<String> usr=(List<String>)Conversion.getusrname(); 
	 List<Integer> conid=(List<Integer>)Conversion.getconid(); 	

     

	 for(int i=0;i<conid.size();i++){
		 
	     List<String> res=new ArrayList<String>();
		 
		 String id=conid.get(i).toString();	
		// out.print(resarray.toString());	 
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
		//	out.print("1");
		 }
		 else{
			 //Add
			 resarray.add(0,id);
			 resarray.add(1,con.get(i));
			 resarray.add(2,usr.get(i));
		  //   out.print("0");
		 }
		 res.addAll(resarray);
	//	 finallist.add(res);
		 finalmap.put(i, res);
	 //    out.print(res.toString());
	 }
	//out.print(finalmap.toString());
//转成json对象 发给AJAX取值
	 Gson gson = new GsonBuilder().create();
	 String json=gson.toJson(finalmap);
	 out.print(json);
 }
 else{
	 List<List<String>> finallist=new ArrayList<List<String>>();
	 Map<Integer,List<String>> finalmap=new HashMap<Integer,List<String>>();
	 	 List<String> resarray=new ArrayList<String>();
	 	 List<String> con=(List<String>)Conversion.getcontext_zone(zone); 	
		 List<String> usr=(List<String>)Conversion.getusrname_zone(zone); 
		 List<Integer> conid=(List<Integer>)Conversion.getconid_zone(zone); 	

	     

		 for(int i=0;i<conid.size();i++){
			 
		     List<String> res=new ArrayList<String>();
			 
			 String id=conid.get(i).toString();	
			// out.print(resarray.toString());	 
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
			//	out.print("1");
			 }
			 else{
				 //Add
				 resarray.add(0,id);
				 resarray.add(1,con.get(i));
				 resarray.add(2,usr.get(i));
			  //   out.print("0");
			 }
			 res.addAll(resarray);
		//	 finallist.add(res);
			 finalmap.put(i, res);
		 //    out.print(res.toString());
		 }
		//out.print(finalmap.toString());
	//转成json对象 发给AJAX取值
		 Gson gson = new GsonBuilder().create();
		 String json=gson.toJson(finalmap);
		 out.print(json);
 }
 %>