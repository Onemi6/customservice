<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
        <%@page import="cn.jsy.*"%>
    <%@page import="java.util.*,java.io.*,com.google.gson.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.css" rel="stylesheet"/>
<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="./js/Chart/Chart.js"></script>
<title>喵の窝</title>
</head>

<body>

<div class="" style="width:100%" >
<nav class="navbar navbar-default" style="background:#f8f8f8">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header" >
      <a class="navbar-brand" href="#" style="color:#19ADEC">喵の客服系统</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li class="active" ><a href="#">喵の配置</a></li>
        <li ><a href="./admin.jsp"  style="color:#19ADEC">喵の客服</a></li>
        <li><a href="./adminlogin.jsp" style="color:#19ADEC"><%=session.getAttribute("workername") %></a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</div>

<div class="container-fluid" id="wrapper" style="width:220px;margin-top:-20px;display:block;padding-left:220px;position:relative">
	<div style="margin-left:-220px;display:block;float:left" id="wrapper-sidebar" >
 		<nav  class="navbar navbar-default" style="background:#f8f8f8;border-color:#e7e7e7">
		 <div id="navbar-default-sidebar-collapse" class="collapse navbar-collapse"  style="width:220px;position:relative;">
				<ul id="side-bar" class="nav nav-stack">
				 		<li>
				 			<a href="./admin.jsp" style="color:#19ADEC">
				 			  <span class="glyphicon glyphicon-signal"></span>&nbsp;仪表盘
				 			</a>
				 		</li>
				 		<li>
				 			<a href="./chat.jsp" style="color:#19ADEC">
				 			  <span class="glyphicon glyphicon-comment"></span>&nbsp;聊天界面
				 			</a>
				 		</li>
				 		<li>
				 			<a href="./config.jsp" style="color:#19ADEC">
				 			  <span class="glyphicon glyphicon-cog"></span>&nbsp;常用设置
				 			</a>
				 		</li>
				</ul>
		</div>
 	</nav>
  </div>

		 	 	<ol class="breadcrumb" style="width:280px">
		 	 	 	<li><a href="./admin.jsp">首页</a></li>	
		 	 	 	<li class="active">常用设置</li>		 	 	 	
		 	 	</ol>
		 	 	
		 	 	
<div id="page-content-wrapper" style="overflow:hidden;width:1100px;margin-top:-20px">
	<div class="row">
	<!-- 中间的数据分析 -->
		<div class="col-sm-8 col-md-9" style="paddig-bottom:10px;margin-top:20px">
		<h4 style="color:#19ADEC">客服喵分区：</h4>
		<div class="panel panel-default">
  			<div class="panel-body">
   				 游戏区の主客服
   				 
<div class="btn-group" style="margin-left:75%">
  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    scbizu <span class="caret"></span>
  </button>
  <ul class="dropdown-menu">
    <li><a href="#">scbizu</a></li>
  </ul>
</div>   				 
   				   				 
  			</div>
		</div>
		
		<div class="panel panel-default">
  			<div class="panel-body">
   				 生活区の主客服
   				 
   				 <div class="btn-group" style="margin-left:75%">
  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    lalala <span class="caret"></span>
  </button>
  <ul class="dropdown-menu">
    <li><a href="#">lalala</a></li>
  </ul>
</div>
   				 
  			</div>
		</div>
		
		
		
		<div class="panel panel-default">
  			<div class="panel-body">
   				 旅游区の主客服
   				 
 <div class="btn-group" style="margin-left:75%">
  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    hahaha <span class="caret"></span>
  </button>
  <ul class="dropdown-menu">
    <li><a href="#">hahaha</a></li>
  </ul>
</div>   				 
   				 
  			</div>
		</div>	
			
	<h4 style="color:#19ADEC">喵后台の其他配置:</h4>	
			
			
	    </div>
		<!-- 右方简略信息组 -->
		<div class="columns col-sm-4 col-md-3" style="margin-top:0px">
			<div class="panel panel-default">
 				 <div class="panel-heading">
   					 <h3 class="panel-title" style="color:#19ADEC"><span class="glyphicon glyphicon-phone-alt"></span>&nbsp;Chating</h3>
 				 </div>
 			 <div class="panel-body">
  				  <ul class="panel-ul">
  				  <% 
                  List<String> con=(List<String>)Conversion.getcontext(); 	
  				 List<String> usr=(List<String>)Conversion.getusrname(); 	
  				 List<Integer> conid=(List<Integer>)Conversion.getconid(); 	
  				 // out.print(con.toString());

  				  if(con==null||con.size()<1){  					  
  					out.print("<li>"+"没有数据"+"</li>") ;
  				  }else{
  					  for(int i=0;i<con.size();i++){
  						  //modal.js动态传参
  						out.print("<li><a href='javascript:void(0);' class='Mo_link' rel1="+(String)usr.get(i)+" rel2="+(String)con.get(i)+" rel3="+(Integer)conid.get(i)+">"+(String)usr.get(i)+"说："+(String)con.get(i)+"</a></li>");
  					  }					
					}  		
  				  %>
  				  </ul>  				  
 			 </div>
     		</div>
		</div>
	</div>
</div>
</div>
<!-- Modal -->
<div class="modal fade" id="chatwindow" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" rel="">

  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <% 
    out.print("<h4>泥好呦!管理喵~~"+"</h4>");
 %>
      </div>
      <div class="modal-body">
        <div class="row">
        	<div class="col-xs-7">
        		<h5><b>开启你和用户的心灵对话吧喵~</b></h5>
        	</div>
        </div>
        <div id="msgbox" style="font-size:18px">
          <div id="msgblock" style="background:#FFF;height:180px;border:1px solid #CCCCCC;overflow-y:auto;resize:vertical">
          	<div id="msg-response" style="margin-top:20px;margin-right:30px;padding-top:7px;background:#fff">
          	<div style="color:#99BE7B;font-style:italic;margin-right:5px;padding:2px;margin-top:-25px;font-size:12px;font-weight:bold">
          	 	<span title="miao"   class="miao">
          	 	<i class="glyphicon glyphicon-user"></i><span class="username"></span>
          	 	</span>
          	</div>
          	<span class="context">
          	    </span>
          	</div>
          </div>
        </div>
        <!-- 输入框 -->
        <div id="textinput" style="position:relative;margin-top:25px;resize:vertical">
           <textarea id="msginput" style="border:1px solid #CCCCCC;outline:none;width:100%" row="4" name="msginput" placeholder="有什么问题要问喵 就写这里(爪子" hkid="msginput"></textarea>
        </div>
      </div>
      <div class="modal-footer">
              <button type="button" class="btn btn-default" id="miao_b">喵!</button>
      </div>
    </div>
  </div>
</div>
<script>
   //右侧挂件的JS code Strat here.....

   
   //获得msginput输入      post给到数据库   update数据表
   //Modal Button Click Function
   $("#miao_b").click(function(){
	    
		var inp=$("#msginput").val();
		//获得chatwindow中的ID号
		var conid=$("#chatwindow").attr('rel');
		
		var date=new Date();
		var nowtime=date.toLocaleDateString();
		
	    $("#msg-response").append("<div id='mychat' style='with:100%;background:#fff;color:#36D9D6;font-style:italic;margin-left:2px;padding:2px;font-size:12px;font-weight:bold'><span title='custom'><i style='margin-top:-5px'>你:</i></span></div>")
	 //   $("#msg-response").append("<p style=''></p>")
	    $("#msg-response").append("<div id='chatde'>"+inp+"</div>");

	    $("#msginput").val("");
		
		//ajax starting.....
        $.post("./src/Update_con.jsp",{conid:conid,workername:"admin",isstart:0});
        $.post("./Add_comment.jsp",{conid:conid,workername:"admin",isstart:0,context:inp,nowtime:nowtime});				
	});
   //AJAX 轮询操作
   
    setInterval(function(){
    	requestdata();
    	
    },3000);

   //向服务器请求最新的三列信息
   function requestdata(){
	   $.post("./src/conversion.jsp",function(data){
		//alert(data);
			 //先清空.panel-ul里的所有Elem
			 $(".panel-ul").empty();
			// var obj=jQuery.parseJson(data);
			 
		   $.each(data,function(k,v){

			//console.log(v);
			   //remark:这里的value是ArrayList类型
		    	   //在全部装上
		       $(".panel-ul").append("<li><a href='#' class='Mo_link' rel1="+v[2]+" rel2="+v[1]+" rel3="+v[0]+">"+v[2]+"说："+v[1]+"</a></li>");		 
			  // $("#chatwindow").modal();
			  
		//Alert Problem:The tag was added after the page loads ,Therefore,The link would be fired after the page first load. 
	     //And we do following methods to SOLVE this problem
			   $(".Mo_link").click(function(){
				   var conname=$(this).attr('rel1');
				   var context=$(this).attr('rel2');
				   var conid=$(this).attr('rel3');
				//   alert(context);
				   	   $("#mychat").empty();
				   	   $("#chatde").empty();
				   $("#chatwindow").attr("rel",conid);
				   $(".username").html(conname);
				   $(".context").html(context);
				   $("#chatwindow").modal();
			   });  	     				
		   });
	   },"json");


   }

   
 //Modal.js 带参构造

   $(".Mo_link").click(function(){
	   
	   var conname=$(this).attr('rel1');
	   var context=$(this).attr('rel2');
	   var conid=$(this).attr('rel3');
	//   alert(context);
				   	   $("#mychat").empty();
				   	   $("#chatde").empty();
	   $("#chatwindow").attr("rel",conid);
	   $(".username").html(conname);
	   $(".context").html(context);
	   $("#chatwindow").modal();
   });  
   

</script>
</body>
</html>